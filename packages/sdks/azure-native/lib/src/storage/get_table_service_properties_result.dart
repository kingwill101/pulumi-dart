// ignore_for_file: unused_element, unnecessary_cast

import 'cors_rules_response.dart';

/// Result data returned by getTableServiceProperties.
class GetTableServicePropertiesResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies CORS rules for the Table service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Table service.
  final CorsRulesResponse? cors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTableServicePropertiesResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cors] Specifies CORS rules for the Table service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Table service.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetTableServicePropertiesResult({
    required this.azureApiVersion,
    this.cors,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cors': ?cors?.toMap(),
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetTableServicePropertiesResult.fromMap(Map<String, dynamic> map) {
    return GetTableServicePropertiesResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

