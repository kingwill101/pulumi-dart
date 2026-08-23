// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetSku {
  /// Specifies the number of virtual machines in the scale set.
  final pulumi.Input<int> capacity;
  /// Specifies the size of virtual machines in a scale set.
  final pulumi.Input<String> name;
  /// Specifies the tier of virtual machines in a scale set. Possible values, `standard` or `basic`.
  final pulumi.Input<String>? tier;

  /// Creates a new [ScaleSetSku].
  /// [capacity] Specifies the number of virtual machines in the scale set.
  /// [name] Specifies the size of virtual machines in a scale set.
  /// [tier] Specifies the tier of virtual machines in a scale set. Possible values, `standard` or `basic`.
  const ScaleSetSku({
    required this.capacity,
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory ScaleSetSku.fromMap(Map<String, dynamic> map) {
    return ScaleSetSku(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
