// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigDatabaseConfig {
  /// Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  final pulumi.Input<String>? machineType;
  /// Optional. Cloud SQL database preferred zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [EnvironmentConfigDatabaseConfig].
  /// [machineType] Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  /// [zone] Optional. Cloud SQL database preferred zone.
  EnvironmentConfigDatabaseConfig({
    this.machineType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': ?machineType,
      'zone': ?zone,
    };
  }

  factory EnvironmentConfigDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigDatabaseConfig(
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

