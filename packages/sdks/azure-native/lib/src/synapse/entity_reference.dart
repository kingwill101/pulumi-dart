// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The entity reference.
class EntityReference {
  /// The name of this referenced entity.
  final pulumi.Input<String>? referenceName;

  /// The type of this referenced entity.
  final pulumi.Input<String>? type;

  /// Creates a new [EntityReference].
  /// [referenceName] The name of this referenced entity.
  /// [type] The type of this referenced entity.
  EntityReference({this.referenceName, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'referenceName': ?referenceName, 'type': ?type};
  }

  factory EntityReference.fromMap(Map<String, dynamic> map) {
    return EntityReference(
      referenceName: (() {
        final guardedValue = map['referenceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
