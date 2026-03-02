// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentialsResponse {
  /// AWS access key ID.
  final pulumi.Input<String> accessKeyId;
  /// Input only. AWS secret access key.
  final pulumi.Input<String> secretAccessKey;
  /// Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  final pulumi.Input<String> sessionToken;

  /// Creates a new [AccessKeyCredentialsResponse].
  /// [accessKeyId] AWS access key ID.
  /// [secretAccessKey] Input only. AWS secret access key.
  /// [sessionToken] Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  AccessKeyCredentialsResponse({
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.sessionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'secretAccessKey': secretAccessKey,
      'sessionToken': sessionToken,
    };
  }

  factory AccessKeyCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AccessKeyCredentialsResponse(
      accessKeyId: (map['accessKeyId'] as String).input(),
      secretAccessKey: (map['secretAccessKey'] as String).input(),
      sessionToken: (map['sessionToken'] as String).input(),
    );
  }
}

