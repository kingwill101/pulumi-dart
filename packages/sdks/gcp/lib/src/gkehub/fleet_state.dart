// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetState {
  /// (Output)
  /// Describes the state of a Fleet resource.
  final pulumi.Input<String>? code;

  /// Creates a new [FleetState].
  /// [code] (Output)
  const FleetState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory FleetState.fromMap(Map<String, dynamic> map) {
    return FleetState(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

