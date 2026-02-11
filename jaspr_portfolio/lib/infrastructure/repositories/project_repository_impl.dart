import '../../domain/models/project.dart';
import '../../domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  static const List<Project> _projects = [
    Project(
      id: '1',
      title: 'E-Commerce App',
      description: 'A full-featured mobile shopping app built with Flutter.',
      imageUrl: 'https://via.placeholder.com/400x300',
      tags: ['Flutter', 'Riverpod', 'Firebase'],
    ),
    Project(
      id: '2',
      title: 'Portfolio Website',
      description: 'This website! Built with Jaspr (Dart for Web).',
      imageUrl: 'https://via.placeholder.com/400x300',
      tags: ['Jaspr', 'Dart', 'CSS'],
    ),
    Project(
      id: '3',
      title: 'Task Manager',
      description: 'Productivity tool for teams.',
      imageUrl: 'https://via.placeholder.com/400x300',
      tags: ['React', 'Node.js'],
    ),
  ];

  List<Project> getProjectsSync() {
    return _projects;
  }

  @override
  Future<List<Project>> getProjects() async {
    return _projects;
  }

  @override
  Future<Project?> getProjectById(String id) async {
    return getProjectByIdSync(id);
  }

  Project? getProjectByIdSync(String id) {
    for (final project in _projects) {
      if (project.id == id) return project;
    }
    return null;
  }
}
