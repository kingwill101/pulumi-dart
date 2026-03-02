// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A configuration item for source resource
class SourceConfigurationResponse {
  /// The type of setting
  final pulumi.Input<String> configType;
  /// Descriptive information for the configuration
  final pulumi.Input<String>? description;
  /// The identity for key vault reference, system or user-assigned managed identity ID
  final pulumi.Input<String>? keyVaultReferenceIdentity;
  /// The name of setting.
  final pulumi.Input<String>? name;
  /// The value of setting
  final pulumi.Input<String>? value;

  /// Creates a new [SourceConfigurationResponse].
  /// [configType] The type of setting
  /// [description] Descriptive information for the configuration
  /// [keyVaultReferenceIdentity] The identity for key vault reference, system or user-assigned managed identity ID
  /// [name] The name of setting.
  /// [value] The value of setting
  SourceConfigurationResponse({
    required this.configType,
    this.description,
    this.keyVaultReferenceIdentity,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configType': configType,
      'description': ?description,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'name': ?name,
      'value': ?value,
    };
  }

  factory SourceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigurationResponse(
      configType: (map['configType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : (map['keyVaultReferenceIdentity']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

