// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_settings.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfile {
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final pulumi.Input<CloudSqlSettings>? settings;

  /// Creates a new [CloudSqlConnectionProfile].
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  CloudSqlConnectionProfile({
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory CloudSqlConnectionProfile.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfile(
      settings: map['settings'] == null ? null : (CloudSqlSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

