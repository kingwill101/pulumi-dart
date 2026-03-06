// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig {
  /// (Output)
  /// The status of the Database Management service.
  /// Possible values:
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// DISABLED
  /// UPDATING
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  /// FAILED_UPDATING
  final pulumi.Input<String>? managementState;
  /// (Output)
  /// The Database Management type.
  /// Possible values:
  /// BASIC
  /// ADVANCED
  final pulumi.Input<String>? managementType;

  /// Creates a new [DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig].
  /// [managementState] (Output)
  /// [managementType] (Output)
  const DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig({
    this.managementState,
    this.managementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementState': ?managementState,
      'managementType': ?managementType,
    };
  }

  factory DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbHomeDatabasePropertiesDatabaseManagementConfig(
      managementState: (() { final guardedValue = map['managementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementType: (() { final guardedValue = map['managementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

