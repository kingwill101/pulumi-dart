// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail {
  /// The type of the database backup destination.
  /// Possible values:
  /// NFS
  /// RECOVERY_APPLIANCE
  /// OBJECT_STORE
  /// LOCAL
  /// DBRS
  final pulumi.Input<String>? type;

  /// Creates a new [DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail].
  /// [type] The type of the database backup destination.
  const DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetail(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
