// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceCoalesceRxFrames {
  /// Sets the maximum number of frames that can be coalesced for received packets, influencing performance characteristics.
  final pulumi.Input<double>? max;

  /// Creates a new [DomainDevicesInterfaceCoalesceRxFrames].
  /// [max] Sets the maximum number of frames that can be coalesced for received packets, influencing performance characteristics.
  DomainDevicesInterfaceCoalesceRxFrames({this.max});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max};
  }

  factory DomainDevicesInterfaceCoalesceRxFrames.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesInterfaceCoalesceRxFrames(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
