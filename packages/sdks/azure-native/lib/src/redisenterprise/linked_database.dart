// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies details of a linked database resource.
class LinkedDatabase {
  /// Resource ID of a database resource to link with this database.
  final pulumi.Input<String>? id;

  /// Creates a new [LinkedDatabase].
  /// [id] Resource ID of a database resource to link with this database.
  const LinkedDatabase({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LinkedDatabase.fromMap(Map<String, dynamic> map) {
    return LinkedDatabase(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

