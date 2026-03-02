// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An item of the class.
class ClassItem {
  /// The class item's value.
  final pulumi.Input<String>? value;

  /// Creates a new [ClassItem].
  /// [value] The class item's value.
  ClassItem({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClassItem.fromMap(Map<String, dynamic> map) {
    return ClassItem(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

