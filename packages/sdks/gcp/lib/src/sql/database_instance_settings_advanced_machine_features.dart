// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsAdvancedMachineFeatures {
  /// The number of threads per core. The value of this flag can be 1 or 2. To disable SMT, set this flag to 1. Only available in Cloud SQL for SQL Server instances. See [smt](https://cloud.google.com/sql/docs/sqlserver/create-instance#smt-create-instance) for more details.
  final pulumi.Input<int?>? threadsPerCore;

  /// Creates a new [DatabaseInstanceSettingsAdvancedMachineFeatures].
  /// [threadsPerCore] The number of threads per core. The value of this flag can be 1 or 2. To disable SMT, set this flag to 1. Only available in Cloud SQL for SQL Server instances. See [smt](https://cloud.google.com/sql/docs/sqlserver/create-instance#smt-create-instance) for more details.
  const DatabaseInstanceSettingsAdvancedMachineFeatures({
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory DatabaseInstanceSettingsAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsAdvancedMachineFeatures(
      threadsPerCore: (() { final guardedValue = map['threadsPerCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
