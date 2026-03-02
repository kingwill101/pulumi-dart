// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorAwsCloudTrail resources.
class DataConnectorAwsCloudTrailState {
  /// The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector.
  final pulumi.Input<String>? awsRoleArn;
  /// The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [DataConnectorAwsCloudTrailState].
  /// [awsRoleArn] The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created.
  /// [name] The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created.
  DataConnectorAwsCloudTrailState({
    this.awsRoleArn,
    this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': ?awsRoleArn,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory DataConnectorAwsCloudTrailState.fromMap(Map<String, dynamic> map) {
    return DataConnectorAwsCloudTrailState(
      awsRoleArn: map['awsRoleArn'] == null ? null : (map['awsRoleArn'] as String).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

