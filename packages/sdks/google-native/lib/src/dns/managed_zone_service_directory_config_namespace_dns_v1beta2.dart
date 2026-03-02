// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2 {
  /// The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  final pulumi.Input<String>? deletionTime;
  final pulumi.Input<String>? kind;
  /// The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  final pulumi.Input<String>? namespaceUrl;

  /// Creates a new [ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2].
  /// [deletionTime] The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  /// [kind] Optional.
  /// [namespaceUrl] The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2({
    this.deletionTime,
    this.kind,
    this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionTime': ?deletionTime,
      'kind': ?kind,
      'namespaceUrl': ?namespaceUrl,
    };
  }

  factory ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2(
      deletionTime: map['deletionTime'] == null ? null : (map['deletionTime']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      namespaceUrl: map['namespaceUrl'] == null ? null : (map['namespaceUrl']! as String).input(),
    );
  }
}

