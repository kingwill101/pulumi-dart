// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource graph configuration.
class ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse {
  /// The api version.
  final pulumi.Input<String>? apiVersion;
  /// Whether it's enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse].
  /// [apiVersion] The api version.
  /// [enabled] Whether it's enabled.
  ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse({
    this.apiVersion,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'enabled': ?enabled,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

