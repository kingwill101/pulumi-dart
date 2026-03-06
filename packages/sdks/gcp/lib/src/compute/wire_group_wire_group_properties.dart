// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupWireGroupProperties {
  /// Type of wire group (enum).
  /// WIRE: a single pseudowire over two Interconnect connections   with no redundancy.
  /// REDUNDANT: two pseudowires over four Interconnect connections, with two connections in one metro and two connections in another metro.
  /// BOX_AND_CROSS: four pseudowires over four Interconnect connections, with two connections in one metro and two connections in another metro.
  final pulumi.Input<String>? type;

  /// Creates a new [WireGroupWireGroupProperties].
  /// [type] Type of wire group (enum).
  const WireGroupWireGroupProperties({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory WireGroupWireGroupProperties.fromMap(Map<String, dynamic> map) {
    return WireGroupWireGroupProperties(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

