// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseMysqlBackupsBackup {
  /// A time value given in a combined date and time format that represents when the database backup was created.
  final pulumi.Input<String> created;
  /// The ID of the database backup object.
  final pulumi.Input<int> id;
  /// The database backup’s label, for display purposes only.
  final pulumi.Input<String> label;
  /// The type of database backup, determined by how the backup was created.
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabaseMysqlBackupsBackup].
  /// [created] A time value given in a combined date and time format that represents when the database backup was created.
  /// [id] The ID of the database backup object.
  /// [label] The database backup’s label, for display purposes only.
  /// [type] The type of database backup, determined by how the backup was created.
  GetDatabaseMysqlBackupsBackup({
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

  factory GetDatabaseMysqlBackupsBackup.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlBackupsBackup(
      created: (map['created'] as String).input(),
      id: (map['id'] as int).input(),
      label: (map['label'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

