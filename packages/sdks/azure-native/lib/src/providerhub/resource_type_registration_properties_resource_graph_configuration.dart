// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource graph configuration.
class ResourceTypeRegistrationPropertiesResourceGraphConfiguration {
  /// The api version.
  final pulumi.Input<String>? apiVersion;
  /// Whether it's enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceGraphConfiguration].
  /// [apiVersion] The api version.
  /// [enabled] Whether it's enabled.
  const ResourceTypeRegistrationPropertiesResourceGraphConfiguration({
    this.apiVersion,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'enabled': ?enabled,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceGraphConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceGraphConfiguration(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

