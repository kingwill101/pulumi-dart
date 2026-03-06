// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolProviderAws {
  /// The AWS account ID.
  final pulumi.Input<String> accountId;

  /// Creates a new [WorkloadIdentityPoolProviderAws].
  /// [accountId] The AWS account ID.
  const WorkloadIdentityPoolProviderAws({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory WorkloadIdentityPoolProviderAws.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderAws(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}

