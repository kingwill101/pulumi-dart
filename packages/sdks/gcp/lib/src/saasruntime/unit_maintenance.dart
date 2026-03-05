// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitMaintenance {
  /// If present, it fixes the release on the unit until the given time; i.e.
  /// changes to the release field will be rejected. Rollouts should and will
  /// also respect this by not requesting an upgrade in the first place.
  final pulumi.Input<String>? pinnedUntilTime;

  /// Creates a new [UnitMaintenance].
  /// [pinnedUntilTime] If present, it fixes the release on the unit until the given time; i.e.
  UnitMaintenance({
    this.pinnedUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pinnedUntilTime': ?pinnedUntilTime,
    };
  }

  factory UnitMaintenance.fromMap(Map<String, dynamic> map) {
    return UnitMaintenance(
      pinnedUntilTime: (() { final guardedValue = map['pinnedUntilTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

