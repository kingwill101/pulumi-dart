// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneServiceDirectoryConfigNamespace {
  /// The fully qualified or partial URL of the service directory namespace that should be
  /// associated with the zone. This should be formatted like
  /// `https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace_id}`
  /// or simply `projects/{project}/locations/{location}/namespaces/{namespace_id}`
  /// Ignored for `public` visibility zones.
  final pulumi.Input<String> namespaceUrl;

  /// Creates a new [ManagedZoneServiceDirectoryConfigNamespace].
  /// [namespaceUrl] The fully qualified or partial URL of the service directory namespace that should be
  const ManagedZoneServiceDirectoryConfigNamespace({
    required this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceUrl': namespaceUrl,
    };
  }

  factory ManagedZoneServiceDirectoryConfigNamespace.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigNamespace(
      namespaceUrl: pulumi.Input.fromValue(map['namespaceUrl'] as String),
    );
  }
}
