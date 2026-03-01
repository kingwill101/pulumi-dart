// ignore_for_file: unused_element, unnecessary_cast


/// The private resource provider configuration.
class ProviderRegistrationPropertiesPrivateResourceProviderConfiguration {
  /// The allowed subscriptions.
  final List<String>? allowedSubscriptions;

  /// Creates a new [ProviderRegistrationPropertiesPrivateResourceProviderConfiguration].
  /// [allowedSubscriptions] The allowed subscriptions.
  ProviderRegistrationPropertiesPrivateResourceProviderConfiguration({
    this.allowedSubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubscriptions': ?allowedSubscriptions,
    };
  }

  factory ProviderRegistrationPropertiesPrivateResourceProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesPrivateResourceProviderConfiguration(
      allowedSubscriptions: map['allowedSubscriptions'] == null ? null : (map['allowedSubscriptions'] as List).cast<String>(),
    );
  }
}

