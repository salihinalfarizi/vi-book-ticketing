import 'package:vi_book/data/repositories/transaction_repository.dart';
import 'package:vi_book/domain/entities/result.dart';
import 'package:vi_book/domain/entities/transaction.dart';

import 'package:cloud_firestore/cloud_firestore.dart' as firestore;

class FirebaseTransactionRepository implements TransactionRepository {
  final firestore.FirebaseFirestore _firebaseFirestore;

  FirebaseTransactionRepository({firestore.FirebaseFirestore? firebaseFirestore}) : _firebaseFirestore = firebaseFirestore ?? firestore.FirebaseFirestore.instance;
  @override
  Future<Result<Transaction>> createTransaction({required Transaction transaction}) {
    // TODO: implement createTransaction
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Transaction>>> getUserTransactions({required String uid}) {
    // TODO: implement getUserTransactions
    throw UnimplementedError();
  }
  
}