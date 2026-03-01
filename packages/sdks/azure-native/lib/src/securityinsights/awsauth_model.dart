// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with AWS.
class AWSAuthModel {
  /// AWS STS assume role external ID. This is used to prevent the confused deputy problem: 'https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html'
  final String? externalId;
  /// AWS STS assume role ARN
  final String roleArn;
  /// Type of paging
  /// Expected value is 'AWS'.
  final String type;

  /// Creates a new [AWSAuthModel].
  /// [externalId] AWS STS assume role external ID. This is used to prevent the confused deputy problem: 'https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html'
  /// [roleArn] AWS STS assume role ARN
  /// [type] Type of paging
  AWSAuthModel({
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
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      roleArn: map['roleArn'] as String,
      type: map['type'] as String,
    );
  }
}

