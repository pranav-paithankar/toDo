import 'package:get/get.dart';
import 'package:todo/features/auth/data/data_source/user_remote_data_source.dart';
import 'package:todo/features/auth/data/repo/user_repo_impl.dart';
import 'package:todo/features/auth/domain/usecase/get_users.dart';
import '../../domain/entities/user.dart';

class UserController extends GetxController {
  final GetUsers getUsersUseCase;
  var users = <User>[].obs;
  var isLoading = true.obs;

  UserController()
      : getUsersUseCase = GetUsers(UserRepositoryImpl(UserRemoteDataSource()));

  void fetchUsers() async {
    try {
      Future.delayed(Duration(seconds: 5), () async {
        isLoading(true);
        users.value = await getUsersUseCase.call();
      });
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }
}
