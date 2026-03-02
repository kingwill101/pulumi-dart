// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A restriction on the OS type and version of devices making requests.
class OsConstraintResponse {
  /// The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  final pulumi.Input<String> minimumVersion;
  /// The allowed OS type.
  final pulumi.Input<String> osType;
  /// Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  final pulumi.Input<bool> requireVerifiedChromeOs;

  /// Creates a new [OsConstraintResponse].
  /// [minimumVersion] The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  /// [osType] The allowed OS type.
  /// [requireVerifiedChromeOs] Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  OsConstraintResponse({
    required this.minimumVersion,
    required this.osType,
    required this.requireVerifiedChromeOs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumVersion': minimumVersion,
      'osType': osType,
      'requireVerifiedChromeOs': requireVerifiedChromeOs,
    };
  }

  factory OsConstraintResponse.fromMap(Map<String, dynamic> map) {
    return OsConstraintResponse(
      minimumVersion: (map['minimumVersion'] as String).input(),
      osType: (map['osType'] as String).input(),
      requireVerifiedChromeOs: (map['requireVerifiedChromeOs'] as bool).input(),
    );
  }
}

