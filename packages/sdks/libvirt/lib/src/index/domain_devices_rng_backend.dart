// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd.dart';

class DomainDevicesRngBackend {
  /// Specifies that the random number generator source is built-in to the system.
  final pulumi.Input<bool>? builtIn;
  /// Configures the Entropy Gathering Daemon (EGD) as the backend for the random number generator.
  final pulumi.Input<DomainDevicesRngBackendEgd>? egd;
  /// Configures the random number generator backend used for providing randomness.
  final pulumi.Input<String>? random;

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
      'egd': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgd, Map<String, dynamic>>(egd, (value) => value.toMap()),
      'random': ?random,
    };
  }

  factory DomainDevicesRngBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackend(
      builtIn: map['builtIn'] == null ? null : (map['builtIn']! as bool).input(),
      egd: map['egd'] == null ? null : (DomainDevicesRngBackendEgd.fromMap((map['egd']! as Map).cast<String, dynamic>())).input(),
      random: map['random'] == null ? null : (map['random']! as String).input(),
    );
  }
}

