import '../../domain/models/project.dart';
import '../../domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<List<Project>> getProjects() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    
    return [
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
  }

  @override
  Future<Project?> getProjectById(String id) async {
    final projects = await getProjects();
    try {
      return projects.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}
