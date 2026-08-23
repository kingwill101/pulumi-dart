// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransactionInfoResponse {
  /// // [Alpha] Id of the transaction.
  final pulumi.Input<String> transactionId;

  /// Creates a new [TransactionInfoResponse].
  /// [transactionId] // [Alpha] Id of the transaction.
  const TransactionInfoResponse({
    required this.transactionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transactionId': transactionId,
    };
  }

  factory TransactionInfoResponse.fromMap(Map<String, dynamic> map) {
    return TransactionInfoResponse(
      transactionId: pulumi.Input.fromValue(map['transactionId'] as String),
    );
  }
}
