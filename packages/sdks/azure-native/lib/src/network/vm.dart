// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a Virtual Machine.
class VM {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VM].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [tags] Resource tags.
  VM({
    this.id,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory VM.fromMap(Map<String, dynamic> map) {
    return VM(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

