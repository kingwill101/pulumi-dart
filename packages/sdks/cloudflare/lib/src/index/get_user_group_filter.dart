// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupFilter {
  /// The sort order of returned user groups by name (ascending or descending).
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// A string used for searching for user groups containing that substring.
  final pulumi.Input<String?>? fuzzyName;
  /// ID of the user group to be fetched.
  final pulumi.Input<String?>? id;
  /// Name of the user group to be fetched.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetUserGroupFilter].
  /// [direction] The sort order of returned user groups by name (ascending or descending).
  /// [fuzzyName] A string used for searching for user groups containing that substring.
  /// [id] ID of the user group to be fetched.
  /// [name] Name of the user group to be fetched.
  const GetUserGroupFilter({
    required this.direction,
    this.fuzzyName,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'fuzzyName': ?fuzzyName,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetUserGroupFilter.fromMap(Map<String, dynamic> map) {
    return GetUserGroupFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      fuzzyName: (() { final guardedValue = map['fuzzyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
