// ignore_for_file: unused_element, unnecessary_cast


/// The private resource provider configuration.
class ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse {
  /// The allowed subscriptions.
  final List<String>? allowedSubscriptions;

  /// Creates a new [ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse].
  /// [allowedSubscriptions] The allowed subscriptions.
  ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse({
    this.allowedSubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubscriptions': ?allowedSubscriptions,
    };
  }

  factory ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse(
      allowedSubscriptions: map['allowedSubscriptions'] == null ? null : (map['allowedSubscriptions'] as List).cast<String>(),
    );
  }
}

