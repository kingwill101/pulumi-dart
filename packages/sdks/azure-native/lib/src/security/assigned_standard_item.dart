// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the properties of a of a standard assignments object reference
class AssignedStandardItem {
  /// Full resourceId of the Microsoft.Security/standard object
  final pulumi.Input<String>? id;

  /// Creates a new [AssignedStandardItem].
  /// [id] Full resourceId of the Microsoft.Security/standard object
  AssignedStandardItem({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory AssignedStandardItem.fromMap(Map<String, dynamic> map) {
    return AssignedStandardItem(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

