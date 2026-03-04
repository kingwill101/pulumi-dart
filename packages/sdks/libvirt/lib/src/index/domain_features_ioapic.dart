// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesIoapic {
  /// Specifies the driver to be used for the I/O APIC feature.
  final pulumi.Input<String>? driver;

  /// Creates a new [DomainFeaturesIoapic].
  /// [driver] Specifies the driver to be used for the I/O APIC feature.
  DomainFeaturesIoapic({this.driver});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'driver': ?driver};
  }

  factory DomainFeaturesIoapic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesIoapic(
      driver: (() {
        final guardedValue = map['driver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
