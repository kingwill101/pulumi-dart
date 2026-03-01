// ignore_for_file: unused_element, unnecessary_cast


/// The template deployment policy.
class ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse {
  /// The capabilities.
  final String capabilities;
  /// The preflight notifications.
  final String? preflightNotifications;
  /// The preflight options.
  final String preflightOptions;

  /// Creates a new [ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse].
  /// [capabilities] The capabilities.
  /// [preflightNotifications] The preflight notifications.
  /// [preflightOptions] The preflight options.
  ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse({
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
      capabilities: map['capabilities'] as String,
      preflightNotifications: map['preflightNotifications'] == null ? null : map['preflightNotifications'] as String,
      preflightOptions: map['preflightOptions'] as String,
    );
  }
}

