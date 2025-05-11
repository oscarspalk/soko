// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:redis_user_data_source/redis_user_data_source.dart';

void main() {
  group('RedisUserDataSource', () {
    test('can be instantiated', () {
      expect(RedisUserDataSource(), isNotNull);
    });
  });
}
