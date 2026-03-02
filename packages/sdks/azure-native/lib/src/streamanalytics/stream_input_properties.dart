// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization.dart';
import 'blob_stream_input_data_source.dart';
import 'compression.dart';

/// The properties that are associated with an input containing stream data.
class StreamInputProperties {
  /// Describes how input data is compressed
  final pulumi.Input<Compression>? compression;
  /// Describes an input data source that contains stream data. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<BlobStreamInputDataSource>? datasource;
  /// partitionKey Describes a key in the input data which is used for partitioning the input data
  final pulumi.Input<String>? partitionKey;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AvroSerialization>? serialization;
  /// Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Stream'.
  final pulumi.Input<String> type;

  /// Creates a new [StreamInputProperties].
  /// [compression] Describes how input data is compressed
  /// [datasource] Describes an input data source that contains stream data. Required on PUT (CreateOrReplace) requests.
  /// [partitionKey] partitionKey Describes a key in the input data which is used for partitioning the input data
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  StreamInputProperties({
    this.compression,
    this.datasource,
    this.partitionKey,
    this.serialization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?pulumi.Input.mapOptionalInputValue<Compression, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'datasource': ?pulumi.Input.mapOptionalInputValue<BlobStreamInputDataSource, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'partitionKey': ?partitionKey,
      'serialization': ?pulumi.Input.mapOptionalInputValue<AvroSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'type': type,
    };
  }

  factory StreamInputProperties.fromMap(Map<String, dynamic> map) {
    return StreamInputProperties(
      compression: map['compression'] == null ? null : (Compression.fromMap((map['compression'] as Map).cast<String, dynamic>())).input(),
      datasource: map['datasource'] == null ? null : (BlobStreamInputDataSource.fromMap((map['datasource'] as Map).cast<String, dynamic>())).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey'] as String).input(),
      serialization: map['serialization'] == null ? null : (AvroSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

