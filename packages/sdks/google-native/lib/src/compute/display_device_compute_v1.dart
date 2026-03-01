// ignore_for_file: unused_element, unnecessary_cast


/// A set of Display Device options
class DisplayDeviceComputeV1 {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  /// Creates a new [DisplayDeviceComputeV1].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceComputeV1({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': ?enableDisplay,
    };
  }

  factory DisplayDeviceComputeV1.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceComputeV1(
      enableDisplay: map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}

