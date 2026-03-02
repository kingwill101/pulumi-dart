// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigDatabaseConfig {
  /// Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  final pulumi.Input<String> machineType;
  /// Optional. Cloud SQL database preferred zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetEnvironmentConfigDatabaseConfig].
  /// [machineType] Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  /// [zone] Optional. Cloud SQL database preferred zone.
  GetEnvironmentConfigDatabaseConfig({
    required this.machineType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': machineType,
      'zone': zone,
    };
  }

  factory GetEnvironmentConfigDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigDatabaseConfig(
      machineType: (map['machineType'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

