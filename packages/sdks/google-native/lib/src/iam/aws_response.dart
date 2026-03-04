// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an Amazon Web Services identity provider.
class AwsResponse {
  /// The AWS account ID.
  final pulumi.Input<String> accountId;

  /// Creates a new [AwsResponse].
  /// [accountId] The AWS account ID.
  AwsResponse({required this.accountId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountId': accountId};
  }

  factory AwsResponse.fromMap(Map<String, dynamic> map) {
    return AwsResponse(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
