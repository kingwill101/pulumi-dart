// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_settings_datamigration_v1beta1.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfileDatamigrationV1beta1 {
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final pulumi.Input<CloudSqlSettingsDatamigrationV1beta1>? settings;

  /// Creates a new [CloudSqlConnectionProfileDatamigrationV1beta1].
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  const CloudSqlConnectionProfileDatamigrationV1beta1({
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsDatamigrationV1beta1, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory CloudSqlConnectionProfileDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfileDatamigrationV1beta1(
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

