// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationHivePartitioningOptions {
  /// When set, what mode of hive partitioning to use when
  /// reading data. The following modes are supported.
  /// * AUTO: automatically infer partition key name(s) and type(s).
  /// * STRINGS: automatically infer partition key name(s). All types are
  /// Not all storage formats support hive partitioning. Requesting hive
  /// partitioning on an unsupported format will lead to an error.
  /// Currently supported formats are: JSON, CSV, ORC, Avro and Parquet.
  /// * CUSTOM: when set to `CUSTOM`, you must encode the partition key schema within the `sourceUriPrefix` by setting `sourceUriPrefix` to `gs://bucket/path_to_table/{key1:TYPE1}/{key2:TYPE2}/{key3:TYPE3}`.
  final pulumi.Input<String>? mode;
  /// If set to true, queries over this table
  /// require a partition filter that can be used for partition elimination to be
  /// specified.
  final pulumi.Input<bool>? requirePartitionFilter;
  /// When hive partition detection is requested,
  /// a common for all source uris must be required. The prefix must end immediately
  /// before the partition key encoding begins. For example, consider files following
  /// this data layout. `gs://bucket/path_to_table/dt=2019-06-01/country=USA/id=7/file.avro`
  /// `gs://bucket/path_to_table/dt=2019-05-31/country=CA/id=3/file.avro` When hive
  /// partitioning is requested with either AUTO or STRINGS detection, the common prefix
  /// can be either of `gs://bucket/path_to_table` or `gs://bucket/path_to_table/`.
  /// Note that when `mode` is set to `CUSTOM`, you must encode the partition key schema within the `sourceUriPrefix` by setting `sourceUriPrefix` to `gs://bucket/path_to_table/{key1:TYPE1}/{key2:TYPE2}/{key3:TYPE3}`.
  final pulumi.Input<String>? sourceUriPrefix;

  /// Creates a new [TableExternalDataConfigurationHivePartitioningOptions].
  /// [mode] When set, what mode of hive partitioning to use when
  /// [requirePartitionFilter] If set to true, queries over this table
  /// [sourceUriPrefix] When hive partition detection is requested,
  const TableExternalDataConfigurationHivePartitioningOptions({
    this.mode,
    this.requirePartitionFilter,
    this.sourceUriPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'requirePartitionFilter': ?requirePartitionFilter,
      'sourceUriPrefix': ?sourceUriPrefix,
    };
  }

  factory TableExternalDataConfigurationHivePartitioningOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationHivePartitioningOptions(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirePartitionFilter: (() { final guardedValue = map['requirePartitionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceUriPrefix: (() { final guardedValue = map['sourceUriPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
