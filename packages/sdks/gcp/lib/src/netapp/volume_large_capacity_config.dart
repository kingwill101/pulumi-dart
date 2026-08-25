// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeLargeCapacityConfig {
  /// The number of internal constituents (e.g., FlexVols) for this large volume.
  /// The minimum number of constituents is 2.
  final pulumi.Input<int?>? constituentCount;

  /// Creates a new [VolumeLargeCapacityConfig].
  /// [constituentCount] The number of internal constituents (e.g., FlexVols) for this large volume.
  const VolumeLargeCapacityConfig({
    this.constituentCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constituentCount': ?constituentCount,
    };
  }

  factory VolumeLargeCapacityConfig.fromMap(Map<String, dynamic> map) {
    return VolumeLargeCapacityConfig(
      constituentCount: (() { final guardedValue = map['constituentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
