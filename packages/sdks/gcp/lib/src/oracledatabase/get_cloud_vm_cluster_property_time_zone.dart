// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClusterPropertyTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final pulumi.Input<String> id;
  /// IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String> version;

  /// Creates a new [GetCloudVmClusterPropertyTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  GetCloudVmClusterPropertyTimeZone({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'version': version,
    };
  }

  factory GetCloudVmClusterPropertyTimeZone.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterPropertyTimeZone(
      id: (map['id'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

