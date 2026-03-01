// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceCoalesceRxFrames {
  /// Sets the maximum number of frames that can be coalesced for received packets, influencing performance characteristics.
  final double? max;

  /// Creates a new [DomainDevicesInterfaceCoalesceRxFrames].
  /// [max] Sets the maximum number of frames that can be coalesced for received packets, influencing performance characteristics.
  DomainDevicesInterfaceCoalesceRxFrames({
    this.max,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
    };
  }

  factory DomainDevicesInterfaceCoalesceRxFrames.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceCoalesceRxFrames(
      max: map['max'] == null ? null : map['max'] as double,
    );
  }
}

