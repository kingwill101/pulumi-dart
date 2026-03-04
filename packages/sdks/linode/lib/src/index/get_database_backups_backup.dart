// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseBackupsBackup {
  /// A time value given in a combined date and time format that represents when the database backup was created.
  final pulumi.Input<String> created;

  /// The ID of the database backup object.
  final pulumi.Input<int> id;

  /// The database backup’s label, for display purposes only.
  final pulumi.Input<String> label;

  /// The type of database backup, determined by how the backup was created.
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseBackupsBackup].
  /// [created] A time value given in a combined date and time format that represents when the database backup was created.
  /// [id] The ID of the database backup object.
  /// [label] The database backup’s label, for display purposes only.
  /// [type] The type of database backup, determined by how the backup was created.
  GetDatabaseBackupsBackup({
    required this.created,
    required this.id,
    required this.label,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'label': label,
      'type': type,
    };
  }

  factory GetDatabaseBackupsBackup.fromMap(Map<String, dynamic> map) {
    return GetDatabaseBackupsBackup(
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
