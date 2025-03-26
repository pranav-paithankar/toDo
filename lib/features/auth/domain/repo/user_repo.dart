import 'package:todo/features/auth/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> fetchUsers();
}
