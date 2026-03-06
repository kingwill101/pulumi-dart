// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesAsyncTeardown {
  /// Enables or disables the asynchronous teardown feature, which can reduce downtime during the shutdown of the virtual machine.
  final pulumi.Input<String>? enabled;

  /// Creates a new [DomainFeaturesAsyncTeardown].
  /// [enabled] Enables or disables the asynchronous teardown feature, which can reduce downtime during the shutdown of the virtual machine.
  const DomainFeaturesAsyncTeardown({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DomainFeaturesAsyncTeardown.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesAsyncTeardown(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

