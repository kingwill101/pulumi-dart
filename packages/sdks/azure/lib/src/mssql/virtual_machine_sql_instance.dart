// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineSqlInstance {
  /// Specifies if the SQL Server is optimized for adhoc workloads. Possible values are `true` and `false`. Defaults to `false`.
  final pulumi.Input<bool>? adhocWorkloadsOptimizationEnabled;
  /// Collation of the SQL Server. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? collation;
  /// Specifies if Instant File Initialization is enabled for the SQL Server. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? instantFileInitializationEnabled;
  /// Specifies if Lock Pages in Memory is enabled for the SQL Server. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? lockPagesInMemoryEnabled;
  /// Maximum Degree of Parallelism of the SQL Server. Possible values are between `0` and `32767`. Defaults to `0`.
  final pulumi.Input<int>? maxDop;
  /// Maximum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between `128` and `2147483647` Defaults to `2147483647`.
  final pulumi.Input<int>? maxServerMemoryMb;
  /// Minimum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between `0` and `2147483647` Defaults to `0`.
  ///
  /// > **Note:** `max_server_memory_mb` must be greater than or equal to `min_server_memory_mb`
  final pulumi.Input<int>? minServerMemoryMb;

  /// Creates a new [VirtualMachineSqlInstance].
  /// [adhocWorkloadsOptimizationEnabled] Specifies if the SQL Server is optimized for adhoc workloads. Possible values are `true` and `false`. Defaults to `false`.
  /// [collation] Collation of the SQL Server. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  /// [instantFileInitializationEnabled] Specifies if Instant File Initialization is enabled for the SQL Server. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new resource to be created.
  /// [lockPagesInMemoryEnabled] Specifies if Lock Pages in Memory is enabled for the SQL Server. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new resource to be created.
  /// [maxDop] Maximum Degree of Parallelism of the SQL Server. Possible values are between `0` and `32767`. Defaults to `0`.
  /// [maxServerMemoryMb] Maximum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between `128` and `2147483647` Defaults to `2147483647`.
  /// [minServerMemoryMb] Minimum amount memory that SQL Server Memory Manager can allocate to the SQL Server process. Possible values are between `0` and `2147483647` Defaults to `0`.
  VirtualMachineSqlInstance({
    this.adhocWorkloadsOptimizationEnabled,
    this.collation,
    this.instantFileInitializationEnabled,
    this.lockPagesInMemoryEnabled,
    this.maxDop,
    this.maxServerMemoryMb,
    this.minServerMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adhocWorkloadsOptimizationEnabled': ?adhocWorkloadsOptimizationEnabled,
      'collation': ?collation,
      'instantFileInitializationEnabled': ?instantFileInitializationEnabled,
      'lockPagesInMemoryEnabled': ?lockPagesInMemoryEnabled,
      'maxDop': ?maxDop,
      'maxServerMemoryMb': ?maxServerMemoryMb,
      'minServerMemoryMb': ?minServerMemoryMb,
    };
  }

  factory VirtualMachineSqlInstance.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSqlInstance(
      adhocWorkloadsOptimizationEnabled: map['adhocWorkloadsOptimizationEnabled'] == null ? null : (map['adhocWorkloadsOptimizationEnabled']! as bool).input(),
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      instantFileInitializationEnabled: map['instantFileInitializationEnabled'] == null ? null : (map['instantFileInitializationEnabled']! as bool).input(),
      lockPagesInMemoryEnabled: map['lockPagesInMemoryEnabled'] == null ? null : (map['lockPagesInMemoryEnabled']! as bool).input(),
      maxDop: map['maxDop'] == null ? null : (map['maxDop']! as int).input(),
      maxServerMemoryMb: map['maxServerMemoryMb'] == null ? null : (map['maxServerMemoryMb']! as int).input(),
      minServerMemoryMb: map['minServerMemoryMb'] == null ? null : (map['minServerMemoryMb']! as int).input(),
    );
  }
}

