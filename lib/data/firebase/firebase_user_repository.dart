import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vi_book/data/repositories/user_repository.dart';
import 'package:vi_book/domain/entities/result.dart';
import 'package:vi_book/domain/entities/user.dart';

class FirebaseUserRepository implements UserRepository {
  final FirebaseFirestore _firebaseFirestore;
  FirebaseUserRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<Result<User>> createUser(
      {required String uid,
      required String email,
      required String name,
      String? photoUrl,
      int balance = 0}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> getUser({required String uid}) async {
    DocumentReference<Map<String, dynamic>> documentReference = _firebaseFirestore.doc('user/$uid');
    DocumentSnapshot<Map<String, dynamic>> result = await documentReference.get();

    if(result.exists){
      return Result.success(User.fromJson(result.data()!));
    } else {
      return const Result.failed('User not found!');
    }
  }

  @override
  Future<Result<int>> getUserBalance({required String uid}) {
    // TODO: implement getUserBalance
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> updateUser({required User user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> updateUserBalance(
      {required String uid, required int balance}) {
    // TODO: implement updateUserBalance
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> uploadProfilePicture(
      {required User user, required imageFile}) {
    // TODO: implement uploadProfilePicture
    throw UnimplementedError();
  }
}
