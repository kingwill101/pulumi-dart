// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_storage_descriptor_column.dart';
import 'hive_table_storage_descriptor_serde_info.dart';
import 'hive_table_storage_descriptor_skewed_info.dart';
import 'hive_table_storage_descriptor_sort_col.dart';

class HiveTableStorageDescriptor {
  /// Reducer grouping columns, clustering columns, and bucketing columns.
  final pulumi.Input<List<String>>? bucketCols;
  /// Specifies the columns of the table (the schema).
  /// Structure is documented below.
  final pulumi.Input<List<HiveTableStorageDescriptorColumn>> columns;
  /// Whether the table data is compressed.
  final pulumi.Input<bool>? compressed;
  /// The fully qualified Java class name of the input format.
  final pulumi.Input<String>? inputFormat;
  /// The Cloud Storage URI where the table data is located.
  final pulumi.Input<String>? locationUri;
  /// The number of buckets in the table.
  final pulumi.Input<int>? numBuckets;
  /// The fully qualified Java class name of the output format.
  final pulumi.Input<String>? outputFormat;
  /// Key-value pairs for the storage descriptor.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Serialization and deserialization information.
  /// Structure is documented below.
  final pulumi.Input<HiveTableStorageDescriptorSerdeInfo>? serdeInfo;
  /// Table data skew information.
  /// Structure is documented below.
  final pulumi.Input<HiveTableStorageDescriptorSkewedInfo>? skewedInfo;
  /// Sort order of the data in each bucket.
  /// Structure is documented below.
  final pulumi.Input<List<HiveTableStorageDescriptorSortCol>>? sortCols;
  /// Whether the table is stored as sub directories.
  final pulumi.Input<bool>? storedAsSubDirs;

  /// Creates a new [HiveTableStorageDescriptor].
  /// [bucketCols] Reducer grouping columns, clustering columns, and bucketing columns.
  /// [columns] Specifies the columns of the table (the schema).
  /// [compressed] Whether the table data is compressed.
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] The Cloud Storage URI where the table data is located.
  /// [numBuckets] The number of buckets in the table.
  /// [outputFormat] The fully qualified Java class name of the output format.
  /// [parameters] Key-value pairs for the storage descriptor.
  /// [serdeInfo] Serialization and deserialization information.
  /// [skewedInfo] Table data skew information.
  /// [sortCols] Sort order of the data in each bucket.
  /// [storedAsSubDirs] Whether the table is stored as sub directories.
  const HiveTableStorageDescriptor({
    this.bucketCols,
    required this.columns,
    this.compressed,
    this.inputFormat,
    this.locationUri,
    this.numBuckets,
    this.outputFormat,
    this.parameters,
    this.serdeInfo,
    this.skewedInfo,
    this.sortCols,
    this.storedAsSubDirs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketCols': ?bucketCols,
      'columns': pulumi.Input.mapInputValue<List<HiveTableStorageDescriptorColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<HiveTableStorageDescriptorColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compressed': ?compressed,
      'inputFormat': ?inputFormat,
      'locationUri': ?locationUri,
      'numBuckets': ?numBuckets,
      'outputFormat': ?outputFormat,
      'parameters': ?parameters,
      'serdeInfo': ?pulumi.Input.mapOptionalInputValue<HiveTableStorageDescriptorSerdeInfo, Map<String, dynamic>>(serdeInfo, (value) => value.toMap()),
      'skewedInfo': ?pulumi.Input.mapOptionalInputValue<HiveTableStorageDescriptorSkewedInfo, Map<String, dynamic>>(skewedInfo, (value) => value.toMap()),
      'sortCols': ?pulumi.Input.mapOptionalInputValue<List<HiveTableStorageDescriptorSortCol>, List<Map<String, dynamic>>>(sortCols, (value) => pulumi.Input.encodeList<HiveTableStorageDescriptorSortCol, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storedAsSubDirs': ?storedAsSubDirs,
    };
  }

  factory HiveTableStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptor(
      bucketCols: (() { final guardedValue = map['bucketCols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<HiveTableStorageDescriptorColumn>(map['columns']!, (value) => HiveTableStorageDescriptorColumn.fromMap((value as Map).cast<String, dynamic>()))),
      compressed: (() { final guardedValue = map['compressed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numBuckets: (() { final guardedValue = map['numBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serdeInfo: (() { final guardedValue = map['serdeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HiveTableStorageDescriptorSerdeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skewedInfo: (() { final guardedValue = map['skewedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HiveTableStorageDescriptorSkewedInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sortCols: (() { final guardedValue = map['sortCols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HiveTableStorageDescriptorSortCol>(guardedValue, (value) => HiveTableStorageDescriptorSortCol.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storedAsSubDirs: (() { final guardedValue = map['storedAsSubDirs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
