// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing AWS Credentials using access key id and secret.
class AccessKeyCredentialsVmmigrationV1alpha1 {
  /// AWS access key ID.
  final pulumi.Input<String>? accessKeyId;
  /// Input only. AWS secret access key.
  final pulumi.Input<String>? secretAccessKey;
  /// Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  final pulumi.Input<String>? sessionToken;

  /// Creates a new [AccessKeyCredentialsVmmigrationV1alpha1].
  /// [accessKeyId] AWS access key ID.
  /// [secretAccessKey] Input only. AWS secret access key.
  /// [sessionToken] Input only. AWS session token. Used only when AWS security token service (STS) is responsible for creating the temporary credentials.
  AccessKeyCredentialsVmmigrationV1alpha1({
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
      'sessionToken': ?sessionToken,
    };
  }

  factory AccessKeyCredentialsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AccessKeyCredentialsVmmigrationV1alpha1(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      secretAccessKey: map['secretAccessKey'] == null ? null : (map['secretAccessKey']! as String).input(),
      sessionToken: map['sessionToken'] == null ? null : (map['sessionToken']! as String).input(),
    );
  }
}

