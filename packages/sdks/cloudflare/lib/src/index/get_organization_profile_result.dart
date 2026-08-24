// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationProfile.
class GetOrganizationProfileResult {
  final String? businessAddress;
  final String? businessEmail;
  final String? businessName;
  final String? businessPhone;
  final String? externalMetadata;
  final String? organizationId;

  /// Creates a new [GetOrganizationProfileResult].
  /// [businessAddress] Optional.
  /// [businessEmail] Optional.
  /// [businessName] Optional.
  /// [businessPhone] Optional.
  /// [externalMetadata] Optional.
  /// [organizationId] Optional.
  const GetOrganizationProfileResult({
    this.businessAddress,
    this.businessEmail,
    this.businessName,
    this.businessPhone,
    this.externalMetadata,
    this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessAddress': ?businessAddress,
      'businessEmail': ?businessEmail,
      'businessName': ?businessName,
      'businessPhone': ?businessPhone,
      'externalMetadata': ?externalMetadata,
      'organizationId': ?organizationId,
    };
  }

  factory GetOrganizationProfileResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationProfileResult(
      businessAddress: (() { final guardedValue = map['businessAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      businessEmail: (() { final guardedValue = map['businessEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      businessName: (() { final guardedValue = map['businessName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      businessPhone: (() { final guardedValue = map['businessPhone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalMetadata: (() { final guardedValue = map['externalMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
