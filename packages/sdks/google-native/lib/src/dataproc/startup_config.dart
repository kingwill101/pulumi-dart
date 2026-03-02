// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration to handle the startup of instances during cluster create and update process.
class StartupConfig {
  /// Optional. The config setting to enable cluster creation/ updation to be successful only after required_registration_fraction of instances are up and running. This configuration is applicable to only secondary workers for now. The cluster will fail if required_registration_fraction of instances are not available. This will include instance creation, agent registration, and service registration (if enabled).
  final pulumi.Input<double>? requiredRegistrationFraction;

  /// Creates a new [StartupConfig].
  /// [requiredRegistrationFraction] Optional. The config setting to enable cluster creation/ updation to be successful only after required_registration_fraction of instances are up and running. This configuration is applicable to only secondary workers for now. The cluster will fail if required_registration_fraction of instances are not available. This will include instance creation, agent registration, and service registration (if enabled).
  StartupConfig({
    this.requiredRegistrationFraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredRegistrationFraction': ?requiredRegistrationFraction,
    };
  }

  factory StartupConfig.fromMap(Map<String, dynamic> map) {
    return StartupConfig(
      requiredRegistrationFraction: map['requiredRegistrationFraction'] == null ? null : (map['requiredRegistrationFraction'] as double).input(),
    );
  }
}

