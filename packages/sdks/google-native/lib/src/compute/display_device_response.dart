// ignore_for_file: unused_element, unnecessary_cast


/// A set of Display Device options
class DisplayDeviceResponse {
  /// Defines whether the instance has Display enabled.
  final bool enableDisplay;

  /// Creates a new [DisplayDeviceResponse].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceResponse({
    required this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': enableDisplay,
    };
  }

  factory DisplayDeviceResponse.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceResponse(
      enableDisplay: map['enableDisplay'] as bool,
    );
  }
}

