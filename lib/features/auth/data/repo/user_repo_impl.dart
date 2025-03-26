import 'package:todo/features/auth/data/data_source/user_remote_data_source.dart';
import 'package:todo/features/auth/domain/entities/user.dart';
import 'package:todo/features/auth/domain/repo/user_repo.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<User>> fetchUsers() async {
    return await remoteDataSource.fetchUsersFromApi();
  }
}
