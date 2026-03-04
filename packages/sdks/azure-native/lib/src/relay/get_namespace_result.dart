// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The time the namespace was created.
  final String createdAt;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// Identifier for Azure Insights metrics.
  final String metricId;

  /// The name of the resource
  final String name;

  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;

  /// Provisioning state of the Namespace.
  final String provisioningState;

  /// This determines if traffic is allowed over public network. By default it is enabled.
  final String? publicNetworkAccess;

  /// Endpoint you can use to perform Service Bus operations.
  final String serviceBusEndpoint;

  /// SKU of the namespace.
  final SkuResponse? sku;

  /// Status of the Namespace.
  final String status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The time the namespace was updated.
  final String updatedAt;

  /// Creates a new [GetNamespaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] The time the namespace was created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [metricId] Identifier for Azure Insights metrics.
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the Namespace.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [serviceBusEndpoint] Endpoint you can use to perform Service Bus operations.
  /// [sku] SKU of the namespace.
  /// [status] Status of the Namespace.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] The time the namespace was updated.
  GetNamespaceResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    required this.location,
    required this.metricId,
    required this.name,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceBusEndpoint,
    this.sku,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'id': id,
      'location': location,
      'metricId': metricId,
      'name': name,
      'privateEndpointConnections': ?(() {
        final guardedValue = privateEndpointConnections;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          PrivateEndpointConnectionResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceBusEndpoint': serviceBusEndpoint,
      'sku': ?sku?.toMap(),
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      metricId: map['metricId'] as String,
      name: map['name'] as String,
      privateEndpointConnections: (() {
        final guardedValue = map['privateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
          guardedValue,
          (value) => PrivateEndpointConnectionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      serviceBusEndpoint: map['serviceBusEndpoint'] as String,
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}
