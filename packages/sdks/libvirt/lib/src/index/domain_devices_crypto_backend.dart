// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesCryptoBackend {
  /// Configures the built-in backend type for the crypto device.
  final pulumi.Input<bool>? builtIn;
  /// Configures the LKCF backend option for the crypto device.
  final pulumi.Input<bool>? lkcf;
  /// Sets the number of queues available in the backend for the crypto device.
  final pulumi.Input<double>? queues;

  /// Creates a new [DomainDevicesCryptoBackend].
  /// [builtIn] Configures the built-in backend type for the crypto device.
  /// [lkcf] Configures the LKCF backend option for the crypto device.
  /// [queues] Sets the number of queues available in the backend for the crypto device.
  DomainDevicesCryptoBackend({
    this.builtIn,
    this.lkcf,
    this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtIn': ?builtIn,
      'lkcf': ?lkcf,
      'queues': ?queues,
    };
  }

  factory DomainDevicesCryptoBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesCryptoBackend(
      builtIn: map['builtIn'] == null ? null : (map['builtIn']! as bool).input(),
      lkcf: map['lkcf'] == null ? null : (map['lkcf']! as bool).input(),
      queues: map['queues'] == null ? null : (map['queues']! as double).input(),
    );
  }
}

