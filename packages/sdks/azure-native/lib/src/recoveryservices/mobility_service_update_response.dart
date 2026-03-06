// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Mobility Service update details.
class MobilityServiceUpdateResponse {
  /// The OS type.
  final pulumi.Input<String>? osType;
  /// The reboot status of the update - whether it is required or not.
  final pulumi.Input<String>? rebootStatus;
  /// The version of the latest update.
  final pulumi.Input<String>? version;

  /// Creates a new [MobilityServiceUpdateResponse].
  /// [osType] The OS type.
  /// [rebootStatus] The reboot status of the update - whether it is required or not.
  /// [version] The version of the latest update.
  const MobilityServiceUpdateResponse({
    this.osType,
    this.rebootStatus,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': ?osType,
      'rebootStatus': ?rebootStatus,
      'version': ?version,
    };
  }

  factory MobilityServiceUpdateResponse.fromMap(Map<String, dynamic> map) {
    return MobilityServiceUpdateResponse(
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebootStatus: (() { final guardedValue = map['rebootStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

