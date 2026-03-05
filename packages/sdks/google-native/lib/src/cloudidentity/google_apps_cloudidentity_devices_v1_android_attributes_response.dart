// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource representing the Android specific attributes of a Device.
class GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse {
  /// Whether the device passes Android CTS compliance.
  final pulumi.Input<bool> ctsProfileMatch;
  /// Whether applications from unknown sources can be installed on device.
  final pulumi.Input<bool> enabledUnknownSources;
  /// Whether any potentially harmful apps were detected on the device.
  final pulumi.Input<bool> hasPotentiallyHarmfulApps;
  /// Whether this account is on an owner/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.
  final pulumi.Input<bool> ownerProfileAccount;
  /// Ownership privileges on device.
  final pulumi.Input<String> ownershipPrivilege;
  /// Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the "Enforce Work Profile" policy.
  final pulumi.Input<bool> supportsWorkProfile;
  /// Whether Android verified boot status is GREEN.
  final pulumi.Input<bool> verifiedBoot;
  /// Whether Google Play Protect Verify Apps is enabled.
  final pulumi.Input<bool> verifyAppsEnabled;

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
      ctsProfileMatch: pulumi.Input.fromValue(map['ctsProfileMatch'] as bool),
      enabledUnknownSources: pulumi.Input.fromValue(map['enabledUnknownSources'] as bool),
      hasPotentiallyHarmfulApps: pulumi.Input.fromValue(map['hasPotentiallyHarmfulApps'] as bool),
      ownerProfileAccount: pulumi.Input.fromValue(map['ownerProfileAccount'] as bool),
      ownershipPrivilege: pulumi.Input.fromValue(map['ownershipPrivilege'] as String),
      supportsWorkProfile: pulumi.Input.fromValue(map['supportsWorkProfile'] as bool),
      verifiedBoot: pulumi.Input.fromValue(map['verifiedBoot'] as bool),
      verifyAppsEnabled: pulumi.Input.fromValue(map['verifyAppsEnabled'] as bool),
    );
  }
}

