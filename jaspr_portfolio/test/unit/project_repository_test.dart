import 'package:jaspr_portfolio/infrastructure/repositories/project_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  group('ProjectRepositoryImpl', () {
    late ProjectRepositoryImpl repository;

    setUp(() {
      repository = ProjectRepositoryImpl();
    });

    test('getProjects returns a list of projects', () async {
      final projects = await repository.getProjects();
      expect(projects, isNotEmpty);
      expect(projects.length, equals(3));
    });

    test('getProjectById returns correct project', () async {
      final project = await repository.getProjectById('1');
      expect(project, isNotNull);
      expect(project?.title, equals('E-Commerce App'));
    });

    test('getProjectById returns null for invalid id', () async {
      final project = await repository.getProjectById('999');
      expect(project, isNull);
    });
  });
}
