// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_properties.dart';

/// The azure resource info when target service type is AzureResource
class AzureResource {
  /// The Id of azure resource.
  final pulumi.Input<String?>? id;
  /// The azure resource connection related properties.
  final pulumi.Input<AzureKeyVaultProperties?>? resourceProperties;
  /// The target service type.
  /// Expected value is 'AzureResource'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureResource].
  /// [id] The Id of azure resource.
  /// [resourceProperties] The azure resource connection related properties.
  /// [type] The target service type.
  const AzureResource({
    this.id,
    this.resourceProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'resourceProperties': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultProperties, Map<String, dynamic>>(resourceProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AzureResource.fromMap(Map<String, dynamic> map) {
    return AzureResource(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceProperties: (() { final guardedValue = map['resourceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
