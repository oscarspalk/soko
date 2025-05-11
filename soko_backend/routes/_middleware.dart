import 'package:dart_frog/dart_frog.dart';
import 'package:soko_backend/authenticator.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<Authenticator>(
      (_) => Authenticator(),
    ),
  );
}
