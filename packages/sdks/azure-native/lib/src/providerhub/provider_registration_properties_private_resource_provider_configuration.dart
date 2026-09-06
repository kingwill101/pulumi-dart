// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private resource provider configuration.
class ProviderRegistrationPropertiesPrivateResourceProviderConfiguration {
  /// The allowed subscriptions.
  final pulumi.Input<List<String>?>? allowedSubscriptions;

  /// Creates a new [ProviderRegistrationPropertiesPrivateResourceProviderConfiguration].
  /// [allowedSubscriptions] The allowed subscriptions.
  const ProviderRegistrationPropertiesPrivateResourceProviderConfiguration({
    this.allowedSubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubscriptions': ?allowedSubscriptions,
    };
  }

  factory ProviderRegistrationPropertiesPrivateResourceProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesPrivateResourceProviderConfiguration(
      allowedSubscriptions: (() { final guardedValue = map['allowedSubscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
