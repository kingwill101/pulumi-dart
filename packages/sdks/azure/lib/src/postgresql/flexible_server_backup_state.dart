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
  FlexibleServerBackupState({
    pulumi.Output<String>? completedTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serverId,
  }) :
      completedTime = pulumi.Input.asOptionalInput<String>(completedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asOptionalInput<String>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedTime': ?completedTime,
      'name': ?name,
      'serverId': ?serverId,
    };
  }

  factory FlexibleServerBackupState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerBackupState(
      completedTime: map['completedTime'] == null ? null : pulumi.Output.create<String>(map['completedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
    );
  }
}

