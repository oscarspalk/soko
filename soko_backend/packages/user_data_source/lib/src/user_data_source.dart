import 'package:user_data_source/user_data_source.dart';

/// An interface for a todos data source.
/// A todos data source supports basic C.R.U.D operations.
/// * C - Create
/// * R - Read
/// * U - Update
/// * D - Delete
abstract class UserDataSource {
  /// Create and return the newly created todo.
  Future<User> create(User todo);

  /// Return all todos.
  Future<List<User>> readAll();

  /// Return a todo with the provided [id] if one exists.
  Future<User?> read(String id);

  /// Update the todo with the provided [id] to match [todo] and
  /// return the updated todo.
  Future<User> update(String id, User todo);

  /// Delete the todo with the provided [id] if one exists.
  Future<void> delete(String id);
}
