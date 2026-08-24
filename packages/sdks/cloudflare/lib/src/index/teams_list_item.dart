// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsListItem {
  /// Provide the list item description (optional).
  final pulumi.Input<String?>? description;
  /// Specify the item value.
  final pulumi.Input<String?>? value;

  /// Creates a new [TeamsListItem].
  /// [description] Provide the list item description (optional).
  /// [value] Specify the item value.
  const TeamsListItem({
    this.description,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'value': ?value,
    };
  }

  factory TeamsListItem.fromMap(Map<String, dynamic> map) {
    return TeamsListItem(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
