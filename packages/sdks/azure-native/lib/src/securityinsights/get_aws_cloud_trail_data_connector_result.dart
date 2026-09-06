// ignore_for_file: unused_element, unnecessary_cast

import 'aws_cloud_trail_data_connector_data_types_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAwsCloudTrailDataConnector.
class GetAwsCloudTrailDataConnectorResult {
  /// The Aws Role Arn (with CloudTrailReadOnly policy) that is used to access the Aws account.
  final String? awsRoleArn;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The available data types for the connector.
  final AwsCloudTrailDataConnectorDataTypesResponse? dataTypes;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The kind of the data connector
  /// Expected value is 'AmazonWebServicesCloudTrail'.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAwsCloudTrailDataConnectorResult].
  /// [awsRoleArn] The Aws Role Arn (with CloudTrailReadOnly policy) that is used to access the Aws account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataTypes] The available data types for the connector.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the data connector
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAwsCloudTrailDataConnectorResult({
    this.awsRoleArn,
    this.azureApiVersion,
    this.dataTypes,
    this.etag,
    this.id,
    this.kind,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': ?awsRoleArn,
      'azureApiVersion': ?azureApiVersion,
      'dataTypes': ?dataTypes?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAwsCloudTrailDataConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAwsCloudTrailDataConnectorResult(
      awsRoleArn: (() { final guardedValue = map['awsRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return AwsCloudTrailDataConnectorDataTypesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
