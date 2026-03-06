// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with AWS.
class AWSAuthModel {
  /// AWS STS assume role external ID. This is used to prevent the confused deputy problem: 'https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html'
  final pulumi.Input<String>? externalId;
  /// AWS STS assume role ARN
  final pulumi.Input<String> roleArn;
  /// Type of paging
  /// Expected value is 'AWS'.
  final pulumi.Input<String> type;

  /// Creates a new [AWSAuthModel].
  /// [externalId] AWS STS assume role external ID. This is used to prevent the confused deputy problem: 'https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html'
  /// [roleArn] AWS STS assume role ARN
  /// [type] Type of paging
  const AWSAuthModel({
    this.externalId,
    required this.roleArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': ?externalId,
      'roleArn': roleArn,
      'type': type,
    };
  }

  factory AWSAuthModel.fromMap(Map<String, dynamic> map) {
    return AWSAuthModel(
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

