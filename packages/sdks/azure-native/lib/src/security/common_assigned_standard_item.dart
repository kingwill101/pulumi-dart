// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the properties of a of a standard assignments object reference
class CommonAssignedStandardItem {
  /// Full resourceId of the Microsoft.Security/standard object
  final pulumi.Input<String>? id;

  /// Creates a new [CommonAssignedStandardItem].
  /// [id] Full resourceId of the Microsoft.Security/standard object
  const CommonAssignedStandardItem({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory CommonAssignedStandardItem.fromMap(Map<String, dynamic> map) {
    return CommonAssignedStandardItem(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
