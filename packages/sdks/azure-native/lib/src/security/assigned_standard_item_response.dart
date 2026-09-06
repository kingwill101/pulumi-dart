// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the properties of a of a standard assignments object reference
class AssignedStandardItemResponse {
  /// Full resourceId of the Microsoft.Security/standard object
  final pulumi.Input<String?>? id;

  /// Creates a new [AssignedStandardItemResponse].
  /// [id] Full resourceId of the Microsoft.Security/standard object
  const AssignedStandardItemResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory AssignedStandardItemResponse.fromMap(Map<String, dynamic> map) {
    return AssignedStandardItemResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
