// ignore_for_file: unused_element, unnecessary_cast


/// Resource representing the Android specific attributes of a Device.
class GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse {
  /// Whether the device passes Android CTS compliance.
  final bool ctsProfileMatch;
  /// Whether applications from unknown sources can be installed on device.
  final bool enabledUnknownSources;
  /// Whether any potentially harmful apps were detected on the device.
  final bool hasPotentiallyHarmfulApps;
  /// Whether this account is on an owner/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.
  final bool ownerProfileAccount;
  /// Ownership privileges on device.
  final String ownershipPrivilege;
  /// Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the "Enforce Work Profile" policy.
  final bool supportsWorkProfile;
  /// Whether Android verified boot status is GREEN.
  final bool verifiedBoot;
  /// Whether Google Play Protect Verify Apps is enabled.
  final bool verifyAppsEnabled;

  /// Creates a new [GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse].
  /// [ctsProfileMatch] Whether the device passes Android CTS compliance.
  /// [enabledUnknownSources] Whether applications from unknown sources can be installed on device.
  /// [hasPotentiallyHarmfulApps] Whether any potentially harmful apps were detected on the device.
  /// [ownerProfileAccount] Whether this account is on an owner/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.
  /// [ownershipPrivilege] Ownership privileges on device.
  /// [supportsWorkProfile] Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the "Enforce Work Profile" policy.
  /// [verifiedBoot] Whether Android verified boot status is GREEN.
  /// [verifyAppsEnabled] Whether Google Play Protect Verify Apps is enabled.
  GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse({
    required this.ctsProfileMatch,
    required this.enabledUnknownSources,
    required this.hasPotentiallyHarmfulApps,
    required this.ownerProfileAccount,
    required this.ownershipPrivilege,
    required this.supportsWorkProfile,
    required this.verifiedBoot,
    required this.verifyAppsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ctsProfileMatch': ctsProfileMatch,
      'enabledUnknownSources': enabledUnknownSources,
      'hasPotentiallyHarmfulApps': hasPotentiallyHarmfulApps,
      'ownerProfileAccount': ownerProfileAccount,
      'ownershipPrivilege': ownershipPrivilege,
      'supportsWorkProfile': supportsWorkProfile,
      'verifiedBoot': verifiedBoot,
      'verifyAppsEnabled': verifyAppsEnabled,
    };
  }

  factory GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse(
      ctsProfileMatch: map['ctsProfileMatch'] as bool,
      enabledUnknownSources: map['enabledUnknownSources'] as bool,
      hasPotentiallyHarmfulApps: map['hasPotentiallyHarmfulApps'] as bool,
      ownerProfileAccount: map['ownerProfileAccount'] as bool,
      ownershipPrivilege: map['ownershipPrivilege'] as String,
      supportsWorkProfile: map['supportsWorkProfile'] as bool,
      verifiedBoot: map['verifiedBoot'] as bool,
      verifyAppsEnabled: map['verifyAppsEnabled'] as bool,
    );
  }
}

