// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The template deployment policy.
class ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy {
  /// The capabilities.
  final pulumi.Input<String> capabilities;
  /// The preflight notifications.
  final pulumi.Input<String>? preflightNotifications;
  /// The preflight options.
  final pulumi.Input<String> preflightOptions;

  /// Creates a new [ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy].
  /// [capabilities] The capabilities.
  /// [preflightNotifications] The preflight notifications.
  /// [preflightOptions] The preflight options.
  const ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy({
    required this.capabilities,
    this.preflightNotifications,
    required this.preflightOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'preflightNotifications': ?preflightNotifications,
      'preflightOptions': preflightOptions,
    };
  }

  factory ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy(
      capabilities: pulumi.Input.fromValue(map['capabilities'] as String),
      preflightNotifications: (() { final guardedValue = map['preflightNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preflightOptions: pulumi.Input.fromValue(map['preflightOptions'] as String),
    );
  }
}

