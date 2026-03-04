// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolProviderAw {
  /// The AWS account ID.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetWorkloadIdentityPoolProviderAw].
  /// [accountId] The AWS account ID.
  GetWorkloadIdentityPoolProviderAw({required this.accountId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountId': accountId};
  }

  factory GetWorkloadIdentityPoolProviderAw.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderAw(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
