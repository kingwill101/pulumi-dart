// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization.dart';
import 'azure_sql_reference_input_data_source.dart';
import 'compression.dart';

/// The properties that are associated with an input containing reference data.
class ReferenceInputProperties {
  /// Describes how input data is compressed
  final pulumi.Input<Compression>? compression;
  /// Describes an input data source that contains reference data. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AzureSqlReferenceInputDataSource>? datasource;
  /// partitionKey Describes a key in the input data which is used for partitioning the input data
  final pulumi.Input<String>? partitionKey;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AvroSerialization>? serialization;
  /// Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Reference'.
  final pulumi.Input<String> type;

  /// Creates a new [ReferenceInputProperties].
  /// [compression] Describes how input data is compressed
  /// [datasource] Describes an input data source that contains reference data. Required on PUT (CreateOrReplace) requests.
  /// [partitionKey] partitionKey Describes a key in the input data which is used for partitioning the input data
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  ReferenceInputProperties({
    this.compression,
    this.datasource,
    this.partitionKey,
    this.serialization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?pulumi.Input.mapOptionalInputValue<Compression, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'datasource': ?pulumi.Input.mapOptionalInputValue<AzureSqlReferenceInputDataSource, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'partitionKey': ?partitionKey,
      'serialization': ?pulumi.Input.mapOptionalInputValue<AvroSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ReferenceInputProperties.fromMap(Map<String, dynamic> map) {
    return ReferenceInputProperties(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Compression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasource: (() { final guardedValue = map['datasource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureSqlReferenceInputDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialization: (() { final guardedValue = map['serialization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvroSerialization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

