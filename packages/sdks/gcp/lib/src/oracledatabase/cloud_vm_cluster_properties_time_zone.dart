// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterPropertiesTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final pulumi.Input<String?>? id;
  /// IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String?>? version;

  /// Creates a new [CloudVmClusterPropertiesTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  const CloudVmClusterPropertiesTimeZone({
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'version': ?version,
    };
  }

  factory CloudVmClusterPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterPropertiesTimeZone(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
