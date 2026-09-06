// ignore_for_file: unused_element, unnecessary_cast

import 'cors_rules_response.dart';

/// Result data returned by getQueueServiceProperties.
class GetQueueServicePropertiesResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies CORS rules for the Queue service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Queue service.
  final CorsRulesResponse? cors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetQueueServicePropertiesResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cors] Specifies CORS rules for the Queue service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Queue service.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetQueueServicePropertiesResult({
    this.azureApiVersion,
    this.cors,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cors': ?cors?.toMap(),
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetQueueServicePropertiesResult.fromMap(Map<String, dynamic> map) {
    return GetQueueServicePropertiesResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
