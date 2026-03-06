// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The template deployment policy.
class ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse {
  /// The capabilities.
  final pulumi.Input<String> capabilities;
  /// The preflight notifications.
  final pulumi.Input<String>? preflightNotifications;
  /// The preflight options.
  final pulumi.Input<String> preflightOptions;

  /// Creates a new [ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse].
  /// [capabilities] The capabilities.
  /// [preflightNotifications] The preflight notifications.
  /// [preflightOptions] The preflight options.
  const ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse({
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

  factory ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse(
      capabilities: pulumi.Input.fromValue(map['capabilities'] as String),
      preflightNotifications: (() { final guardedValue = map['preflightNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preflightOptions: pulumi.Input.fromValue(map['preflightOptions'] as String),
    );
  }
}

