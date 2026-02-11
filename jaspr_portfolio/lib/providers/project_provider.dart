import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../domain/models/project.dart';
import '../domain/repositories/project_repository.dart';
import '../infrastructure/repositories/project_repository_impl.dart';

// Repository Provider
final projectRepositoryProvider = Provider<ProjectRepository>((ref) {
  return ProjectRepositoryImpl();
});

// Projects Future Provider
final projectsProvider = FutureProvider<List<Project>>((ref) async {
  final repository = ref.watch(projectRepositoryProvider);
  return repository.getProjects();
});
