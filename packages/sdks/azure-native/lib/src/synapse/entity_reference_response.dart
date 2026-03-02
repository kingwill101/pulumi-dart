// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The entity reference.
class EntityReferenceResponse {
  /// The name of this referenced entity.
  final pulumi.Input<String>? referenceName;
  /// The type of this referenced entity.
  final pulumi.Input<String>? type;

  /// Creates a new [EntityReferenceResponse].
  /// [referenceName] The name of this referenced entity.
  /// [type] The type of this referenced entity.
  EntityReferenceResponse({
    this.referenceName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': ?referenceName,
      'type': ?type,
    };
  }

  factory EntityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return EntityReferenceResponse(
      referenceName: map['referenceName'] == null ? null : (map['referenceName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

