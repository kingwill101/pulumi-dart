// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WatchlistEntityPopulationMechanism {
  /// Entities are added manually.
  final pulumi.Input<Map<String, dynamic>>? manual;

  /// Creates a new [WatchlistEntityPopulationMechanism].
  /// [manual] Entities are added manually.
  WatchlistEntityPopulationMechanism({
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?manual,
    };
  }

  factory WatchlistEntityPopulationMechanism.fromMap(Map<String, dynamic> map) {
    return WatchlistEntityPopulationMechanism(
      manual: (() { final guardedValue = map['manual']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

