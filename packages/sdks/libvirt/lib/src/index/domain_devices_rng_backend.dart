// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_rng_backend_egd.dart';

class DomainDevicesRngBackend {
  /// Specifies that the random number generator source is built-in to the system.
  final bool? builtIn;
  /// Configures the Entropy Gathering Daemon (EGD) as the backend for the random number generator.
  final DomainDevicesRngBackendEgd? egd;
  /// Configures the random number generator backend used for providing randomness.
  final String? random;

  /// Creates a new [DomainDevicesRngBackend].
  /// [builtIn] Specifies that the random number generator source is built-in to the system.
  /// [egd] Configures the Entropy Gathering Daemon (EGD) as the backend for the random number generator.
  /// [random] Configures the random number generator backend used for providing randomness.
  DomainDevicesRngBackend({
    this.builtIn,
    this.egd,
    this.random,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtIn': ?builtIn,
      'egd': ?egd == null ? null : egd!.toMap(),
      'random': ?random,
    };
  }

  factory DomainDevicesRngBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackend(
      builtIn: map['builtIn'] == null ? null : map['builtIn'] as bool,
      egd: map['egd'] == null ? null : DomainDevicesRngBackendEgd.fromMap((map['egd'] as Map).cast<String, dynamic>()),
      random: map['random'] == null ? null : map['random'] as String,
    );
  }
}

