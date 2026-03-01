// ignore_for_file: unused_element, unnecessary_cast


/// Properties of On Upload malware scanning.
class OnUploadPropertiesResponse {
  /// Defines the max GB to be scanned per Month. Set to -1 if no capping is needed.
  final int? capGBPerMonth;
  /// Indicates whether On Upload malware scanning should be enabled.
  final bool? isEnabled;

  /// Creates a new [OnUploadPropertiesResponse].
  /// [capGBPerMonth] Defines the max GB to be scanned per Month. Set to -1 if no capping is needed.
  /// [isEnabled] Indicates whether On Upload malware scanning should be enabled.
  OnUploadPropertiesResponse({
    this.capGBPerMonth,
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capGBPerMonth': ?capGBPerMonth,
      'isEnabled': ?isEnabled,
    };
  }

  factory OnUploadPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OnUploadPropertiesResponse(
      capGBPerMonth: map['capGBPerMonth'] == null ? null : map['capGBPerMonth'] as int,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
    );
  }
}

