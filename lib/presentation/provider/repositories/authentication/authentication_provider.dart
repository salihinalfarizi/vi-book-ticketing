import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vi_book/data/firebase/firebase_authentication.dart';
import 'package:vi_book/data/repositories/authentication.dart';

part 'authentication_provider.g.dart';

@riverpod
Authentication authentication (AuthenticationRef ref) => FirebaseAuthentication();