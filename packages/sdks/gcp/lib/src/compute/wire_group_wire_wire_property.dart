// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupWireWireProperty {
  /// The unmetered bandwidth setting.
  final pulumi.Input<int>? bandwidthUnmetered;
  /// Response when a fault is detected in a pseudowire:
  /// NONE: default.
  /// DISABLE_PORT: set the port line protocol down when inline probes detect a fault. This setting is only permitted on port mode pseudowires.
  final pulumi.Input<String>? faultResponse;

  /// Creates a new [WireGroupWireWireProperty].
  /// [bandwidthUnmetered] The unmetered bandwidth setting.
  /// [faultResponse] Response when a fault is detected in a pseudowire:
  const WireGroupWireWireProperty({
    this.bandwidthUnmetered,
    this.faultResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthUnmetered': ?bandwidthUnmetered,
      'faultResponse': ?faultResponse,
    };
  }

  factory WireGroupWireWireProperty.fromMap(Map<String, dynamic> map) {
    return WireGroupWireWireProperty(
      bandwidthUnmetered: (() { final guardedValue = map['bandwidthUnmetered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      faultResponse: (() { final guardedValue = map['faultResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
