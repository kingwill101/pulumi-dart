// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A container to reference an id for any resource type. A `resource` in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API's. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.
class ResourceId {
  /// The type-specific id. This should correspond to the id used in the type-specific API's.
  final pulumi.Input<String>? id;
  /// The resource type this id is for. At present, the valid types are: "organization", "folder", and "project".
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceId].
  /// [id] The type-specific id. This should correspond to the id used in the type-specific API's.
  /// [type] The resource type this id is for. At present, the valid types are: "organization", "folder", and "project".
  ResourceId({
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'type': ?type,
    };
  }

  factory ResourceId.fromMap(Map<String, dynamic> map) {
    return ResourceId(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

