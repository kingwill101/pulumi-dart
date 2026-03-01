// ignore_for_file: unused_element, unnecessary_cast


/// Disk Details.
class OSDetailsResponse {
  /// The OS Major Version.
  final String? oSMajorVersion;
  /// The OS Minor Version.
  final String? oSMinorVersion;
  /// The OS Version.
  final String? oSVersion;
  /// The OSEdition.
  final String? osEdition;
  /// VM Disk details.
  final String? osType;
  /// Product type.
  final String? productType;
  /// The OS name selected by user.
  final String? userSelectedOSName;

  /// Creates a new [OSDetailsResponse].
  /// [oSMajorVersion] The OS Major Version.
  /// [oSMinorVersion] The OS Minor Version.
  /// [oSVersion] The OS Version.
  /// [osEdition] The OSEdition.
  /// [osType] VM Disk details.
  /// [productType] Product type.
  /// [userSelectedOSName] The OS name selected by user.
  OSDetailsResponse({
    this.oSMajorVersion,
    this.oSMinorVersion,
    this.oSVersion,
    this.osEdition,
    this.osType,
    this.productType,
    this.userSelectedOSName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oSMajorVersion': ?oSMajorVersion,
      'oSMinorVersion': ?oSMinorVersion,
      'oSVersion': ?oSVersion,
      'osEdition': ?osEdition,
      'osType': ?osType,
      'productType': ?productType,
      'userSelectedOSName': ?userSelectedOSName,
    };
  }

  factory OSDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OSDetailsResponse(
      oSMajorVersion: map['oSMajorVersion'] == null ? null : map['oSMajorVersion'] as String,
      oSMinorVersion: map['oSMinorVersion'] == null ? null : map['oSMinorVersion'] as String,
      oSVersion: map['oSVersion'] == null ? null : map['oSVersion'] as String,
      osEdition: map['osEdition'] == null ? null : map['osEdition'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      productType: map['productType'] == null ? null : map['productType'] as String,
      userSelectedOSName: map['userSelectedOSName'] == null ? null : map['userSelectedOSName'] as String,
    );
  }
}

