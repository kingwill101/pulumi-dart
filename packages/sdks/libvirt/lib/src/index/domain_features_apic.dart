// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesApic {
  /// Determines the EOI (End of Interrupt) behavior for APIC, allowing customization of how interrupts are acknowledged.
  final pulumi.Input<String>? eoi;

  /// Creates a new [DomainFeaturesApic].
  /// [eoi] Determines the EOI (End of Interrupt) behavior for APIC, allowing customization of how interrupts are acknowledged.
  const DomainFeaturesApic({
    this.eoi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eoi': ?eoi,
    };
  }

  factory DomainFeaturesApic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesApic(
      eoi: (() { final guardedValue = map['eoi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

