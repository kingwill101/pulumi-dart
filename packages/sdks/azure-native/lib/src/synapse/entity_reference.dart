// ignore_for_file: unused_element, unnecessary_cast


/// The entity reference.
class EntityReference {
  /// The name of this referenced entity.
  final String? referenceName;
  /// The type of this referenced entity.
  final String? type;

  /// Creates a new [EntityReference].
  /// [referenceName] The name of this referenced entity.
  /// [type] The type of this referenced entity.
  EntityReference({
    this.referenceName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': ?referenceName,
      'type': ?type,
    };
  }

  factory EntityReference.fromMap(Map<String, dynamic> map) {
    return EntityReference(
      referenceName: map['referenceName'] == null ? null : map['referenceName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

