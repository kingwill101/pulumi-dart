// ignore_for_file: unused_element, unnecessary_cast

import 'cors_rules_response.dart';
import 'delete_retention_policy_response.dart';
import 'protocol_settings_response.dart';
import 'sku_response.dart';

/// Result data returned by getFileServiceProperties.
class GetFileServicePropertiesResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies CORS rules for the File service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the File service.
  final CorsRulesResponse? cors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Protocol settings for file service
  final ProtocolSettingsResponse? protocolSettings;
  /// The file service properties for share soft delete.
  final DeleteRetentionPolicyResponse? shareDeleteRetentionPolicy;
  /// Sku name and tier.
  final SkuResponse sku;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFileServicePropertiesResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cors] Specifies CORS rules for the File service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the File service.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [protocolSettings] Protocol settings for file service
  /// [shareDeleteRetentionPolicy] The file service properties for share soft delete.
  /// [sku] Sku name and tier.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFileServicePropertiesResult({
    required this.azureApiVersion,
    this.cors,
    required this.id,
    required this.name,
    this.protocolSettings,
    this.shareDeleteRetentionPolicy,
    required this.sku,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cors': ?cors?.toMap(),
      'id': id,
      'name': name,
      'protocolSettings': ?protocolSettings?.toMap(),
      'shareDeleteRetentionPolicy': ?shareDeleteRetentionPolicy?.toMap(),
      'sku': sku.toMap(),
      'type': type,
    };
  }

  factory GetFileServicePropertiesResult.fromMap(Map<String, dynamic> map) {
    return GetFileServicePropertiesResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      protocolSettings: (() { final guardedValue = map['protocolSettings']; if (guardedValue == null) return null; return ProtocolSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shareDeleteRetentionPolicy: (() { final guardedValue = map['shareDeleteRetentionPolicy']; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

