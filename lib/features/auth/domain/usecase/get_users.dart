import 'package:todo/features/auth/domain/repo/user_repo.dart';

import '../entities/user.dart';

class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<User>> call() async {
    return await repository.fetchUsers();
  }
}
