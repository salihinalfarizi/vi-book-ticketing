

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vi_book/domain/usecase/login/login.dart';
import 'package:vi_book/presentation/provider/repositories/authentication/authentication_provider.dart';
import 'package:vi_book/presentation/provider/repositories/user_repository/user_repository_provider.dart';

part 'login_provider.g.dart';

@riverpod

Login login(LoginRef ref) => Login(authentication: ref.watch(authenticationProvider), userRepository: ref.watch(userRepositoryProvider));