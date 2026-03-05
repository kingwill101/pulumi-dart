// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGateway.
class GetGatewayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Base URL of the Gateway resource. This is the URL that the users would use to make Network API requests to the Operators via Azure.
  final String gatewayBaseUrl;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// List of Operator API Connections selected by the user.
  final List<String> operatorApiConnections;
  /// The status of the last operation on the Gateway resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [gatewayBaseUrl] Base URL of the Gateway resource. This is the URL that the users would use to make Network API requests to the Operators via Azure.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [operatorApiConnections] List of Operator API Connections selected by the user.
  /// [provisioningState] The status of the last operation on the Gateway resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetGatewayResult({
    required this.azureApiVersion,
    required this.gatewayBaseUrl,
    required this.id,
    required this.location,
    required this.name,
    required this.operatorApiConnections,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'gatewayBaseUrl': gatewayBaseUrl,
      'id': id,
      'location': location,
      'name': name,
      'operatorApiConnections': operatorApiConnections,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      gatewayBaseUrl: map['gatewayBaseUrl'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      operatorApiConnections: (map['operatorApiConnections'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

