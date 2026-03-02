// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_properties_response.dart';

/// The azure resource info when target service type is AzureResource
class AzureResourceResponse {
  /// The Id of azure resource.
  final pulumi.Input<String>? id;
  /// The azure resource connection related properties.
  final pulumi.Input<AzureKeyVaultPropertiesResponse>? resourceProperties;
  /// The target service type.
  /// Expected value is 'AzureResource'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureResourceResponse].
  /// [id] The Id of azure resource.
  /// [resourceProperties] The azure resource connection related properties.
  /// [type] The target service type.
  AzureResourceResponse({
    this.id,
    this.resourceProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'resourceProperties': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultPropertiesResponse, Map<String, dynamic>>(resourceProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AzureResourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      resourceProperties: map['resourceProperties'] == null ? null : (AzureKeyVaultPropertiesResponse.fromMap((map['resourceProperties']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

