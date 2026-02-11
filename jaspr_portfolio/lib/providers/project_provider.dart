import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../domain/models/project.dart';
import '../domain/repositories/project_repository.dart';
import '../infrastructure/repositories/project_repository_impl.dart';

final projectRepositoryProvider = Provider<ProjectRepositoryImpl>((ref) {
  return ProjectRepositoryImpl();
});

final projectsProvider = Provider<List<Project>>((ref) {
  final repository = ref.watch(projectRepositoryProvider);
  return repository.getProjectsSync();
});
