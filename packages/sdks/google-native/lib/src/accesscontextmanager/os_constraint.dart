// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_constraint_os_type.dart';

/// A restriction on the OS type and version of devices making requests.
class OsConstraint {
  /// The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  final pulumi.Input<String>? minimumVersion;
  /// The allowed OS type.
  final pulumi.Input<OsConstraintOsType> osType;
  /// Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  final pulumi.Input<bool>? requireVerifiedChromeOs;

  /// Creates a new [OsConstraint].
  /// [minimumVersion] The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  /// [osType] The allowed OS type.
  /// [requireVerifiedChromeOs] Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  OsConstraint({
    this.minimumVersion,
    required this.osType,
    this.requireVerifiedChromeOs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumVersion': ?minimumVersion,
      'osType': pulumi.Input.mapInputValue<OsConstraintOsType, String>(osType, (value) => value.value),
      'requireVerifiedChromeOs': ?requireVerifiedChromeOs,
    };
  }

  factory OsConstraint.fromMap(Map<String, dynamic> map) {
    return OsConstraint(
      minimumVersion: map['minimumVersion'] == null ? null : (map['minimumVersion'] as String).input(),
      osType: (OsConstraintOsType.fromValue(map['osType'] as String)).input(),
      requireVerifiedChromeOs: map['requireVerifiedChromeOs'] == null ? null : (map['requireVerifiedChromeOs'] as bool).input(),
    );
  }
}

