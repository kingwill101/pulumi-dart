// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// External Cloud Service connectors
class CloudConnectorsResponse {
  /// AWS external identifier.
  /// Configured in AWS to allow use of the role arn used for scanning
  final pulumi.Input<String> awsExternalId;

  /// Creates a new [CloudConnectorsResponse].
  /// [awsExternalId] AWS external identifier.
  CloudConnectorsResponse({
    required this.awsExternalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsExternalId': awsExternalId,
    };
  }

  factory CloudConnectorsResponse.fromMap(Map<String, dynamic> map) {
    return CloudConnectorsResponse(
      awsExternalId: pulumi.Input.fromValue(map['awsExternalId'] as String),
    );
  }
}

