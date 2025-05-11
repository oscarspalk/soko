import 'package:user_data_source/user_data_source.dart';

/// {@template redis_user_data_source}
/// An implementation for our user data in Redis
/// {@endtemplate}
class RedisUserDataSource implements UserDataSource {
  /// {@macro redis_user_data_source}
  const RedisUserDataSource();

  @override
  Future<User> create(User user) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<User?> read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<List<User>> readAll() {
    // TODO: implement readAll
    throw UnimplementedError();
  }

  @override
  Future<User> update(String id, User user) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
