// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerBackup resources.
class FlexibleServerBackupState {
  /// The Time (ISO8601 format) at which the backup was completed.
  final pulumi.Input<String>? completedTime;

  /// Specifies the name of this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;

  /// Creates a new [FlexibleServerBackupState].
  /// [completedTime] The Time (ISO8601 format) at which the backup was completed.
  /// [name] Specifies the name of this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  /// [serverId] The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  FlexibleServerBackupState({this.completedTime, this.name, this.serverId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedTime': ?completedTime,
      'name': ?name,
      'serverId': ?serverId,
    };
  }

  factory FlexibleServerBackupState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerBackupState(
      completedTime: (() {
        final guardedValue = map['completedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: (() {
        final guardedValue = map['serverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
