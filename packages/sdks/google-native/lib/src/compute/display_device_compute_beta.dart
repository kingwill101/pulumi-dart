// ignore_for_file: unused_element, unnecessary_cast


/// A set of Display Device options
class DisplayDeviceComputeBeta {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  /// Creates a new [DisplayDeviceComputeBeta].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceComputeBeta({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': ?enableDisplay,
    };
  }

  factory DisplayDeviceComputeBeta.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceComputeBeta(
      enableDisplay: map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}

