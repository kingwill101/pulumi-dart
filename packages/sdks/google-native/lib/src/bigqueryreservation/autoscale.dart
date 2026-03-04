// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto scaling settings.
class Autoscale {
  /// Number of slots to be scaled when needed.
  final pulumi.Input<String>? maxSlots;

  /// Creates a new [Autoscale].
  /// [maxSlots] Number of slots to be scaled when needed.
  Autoscale({this.maxSlots});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxSlots': ?maxSlots};
  }

  factory Autoscale.fromMap(Map<String, dynamic> map) {
    return Autoscale(
      maxSlots: (() {
        final guardedValue = map['maxSlots'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
