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
  const ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2({
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
      deletionTime: (() { final guardedValue = map['deletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceUrl: (() { final guardedValue = map['namespaceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
