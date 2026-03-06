// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cloud_trail_data_connector_data_types.dart';

/// {@template pulumi_securityinsights_aws_cloud_trail_data_connector_args_doc}
/// The set of arguments for AwsCloudTrailDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_aws_cloud_trail_data_connector_args_doc}
class AwsCloudTrailDataConnectorArgs {
  /// The Aws Role Arn (with CloudTrailReadOnly policy) that is used to access the Aws account.
  final pulumi.Input<String>? awsRoleArn;
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<AwsCloudTrailDataConnectorDataTypes> dataTypes;
  /// The kind of the data connector
  /// Expected value is 'AmazonWebServicesCloudTrail'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AwsCloudTrailDataConnectorArgs].
  /// [awsRoleArn] The Aws Role Arn (with CloudTrailReadOnly policy) that is used to access the Aws account.
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const AwsCloudTrailDataConnectorArgs({
    this.awsRoleArn,
    this.dataConnectorId,
    required this.dataTypes,
    required this.kind,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': ?awsRoleArn,
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': pulumi.Input.mapInputValue<AwsCloudTrailDataConnectorDataTypes, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory AwsCloudTrailDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorArgs(
      awsRoleArn: (() { final guardedValue = map['awsRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataConnectorId: (() { final guardedValue = map['dataConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: pulumi.Input.fromValue(AwsCloudTrailDataConnectorDataTypes.fromMap((map['dataTypes']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

