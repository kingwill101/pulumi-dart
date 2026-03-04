// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_constraint_os_type_accesscontextmanager_v1beta.dart';

/// A restriction on the OS type and version of devices making requests.
class OsConstraintAccesscontextmanagerV1beta {
  /// The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  final pulumi.Input<String>? minimumVersion;

  /// The allowed OS type.
  final pulumi.Input<OsConstraintOsTypeAccesscontextmanagerV1beta> osType;

  /// Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  final pulumi.Input<bool>? requireVerifiedChromeOs;

  /// Creates a new [OsConstraintAccesscontextmanagerV1beta].
  /// [minimumVersion] The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  /// [osType] The allowed OS type.
  /// [requireVerifiedChromeOs] Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  OsConstraintAccesscontextmanagerV1beta({
    this.minimumVersion,
    required this.osType,
    this.requireVerifiedChromeOs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumVersion': ?minimumVersion,
      'osType':
          pulumi.Input.mapInputValue<
            OsConstraintOsTypeAccesscontextmanagerV1beta,
            String
          >(osType, (value) => value.wireValue),
      'requireVerifiedChromeOs': ?requireVerifiedChromeOs,
    };
  }

  factory OsConstraintAccesscontextmanagerV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return OsConstraintAccesscontextmanagerV1beta(
      minimumVersion: (() {
        final guardedValue = map['minimumVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: pulumi.Input.fromValue(
        OsConstraintOsTypeAccesscontextmanagerV1beta.fromValue(
          map['osType']! as String,
        ),
      ),
      requireVerifiedChromeOs: (() {
        final guardedValue = map['requireVerifiedChromeOs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
