// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2 {
  /// The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  final pulumi.Input<String> deletionTime;
  final pulumi.Input<String> kind;
  /// The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  final pulumi.Input<String> namespaceUrl;

  /// Creates a new [ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2].
  /// [deletionTime] The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  /// [kind] Required.
  /// [namespaceUrl] The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  const ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2({
    required this.deletionTime,
    required this.kind,
    required this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionTime': deletionTime,
      'kind': kind,
      'namespaceUrl': namespaceUrl,
    };
  }

  factory ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2(
      deletionTime: pulumi.Input.fromValue(map['deletionTime'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      namespaceUrl: pulumi.Input.fromValue(map['namespaceUrl'] as String),
    );
  }
}

