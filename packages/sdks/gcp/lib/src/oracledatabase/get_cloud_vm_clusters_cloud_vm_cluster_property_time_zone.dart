// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClustersCloudVmClusterPropertyTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final pulumi.Input<String> id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String> version;

  /// Creates a new [GetCloudVmClustersCloudVmClusterPropertyTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  GetCloudVmClustersCloudVmClusterPropertyTimeZone({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'version': version};
  }

  factory GetCloudVmClustersCloudVmClusterPropertyTimeZone.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudVmClustersCloudVmClusterPropertyTimeZone(
      id: pulumi.Input.fromValue(map['id'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
