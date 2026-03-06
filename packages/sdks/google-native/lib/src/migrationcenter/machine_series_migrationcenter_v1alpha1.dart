// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Compute Engine machine series.
class MachineSeriesMigrationcenterV1alpha1 {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final pulumi.Input<String>? code;

  /// Creates a new [MachineSeriesMigrationcenterV1alpha1].
  /// [code] Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  const MachineSeriesMigrationcenterV1alpha1({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory MachineSeriesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return MachineSeriesMigrationcenterV1alpha1(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

