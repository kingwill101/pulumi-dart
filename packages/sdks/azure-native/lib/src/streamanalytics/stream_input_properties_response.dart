// ignore_for_file: unused_element, unnecessary_cast

import 'avro_serialization_response.dart';
import 'blob_stream_input_data_source_response.dart';
import 'compression_response.dart';
import 'diagnostics_response.dart';

/// The properties that are associated with an input containing stream data.
class StreamInputPropertiesResponse {
  /// Describes how input data is compressed
  final CompressionResponse? compression;
  /// Describes an input data source that contains stream data. Required on PUT (CreateOrReplace) requests.
  final BlobStreamInputDataSourceResponse? datasource;
  /// Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  final DiagnosticsResponse diagnostics;
  /// The current entity tag for the input. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final String etag;
  /// partitionKey Describes a key in the input data which is used for partitioning the input data
  final String? partitionKey;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final AvroSerializationResponse? serialization;
  /// Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Stream'.
  final String type;

  /// Creates a new [StreamInputPropertiesResponse].
  /// [compression] Describes how input data is compressed
  /// [datasource] Describes an input data source that contains stream data. Required on PUT (CreateOrReplace) requests.
  /// [diagnostics] Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  /// [etag] The current entity tag for the input. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [partitionKey] partitionKey Describes a key in the input data which is used for partitioning the input data
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  StreamInputPropertiesResponse({
    this.compression,
    this.datasource,
    required this.diagnostics,
    required this.etag,
    this.partitionKey,
    this.serialization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression == null ? null : compression!.toMap(),
      'datasource': ?datasource == null ? null : datasource!.toMap(),
      'diagnostics': diagnostics.toMap(),
      'etag': etag,
      'partitionKey': ?partitionKey,
      'serialization': ?serialization == null ? null : serialization!.toMap(),
      'type': type,
    };
  }

  factory StreamInputPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StreamInputPropertiesResponse(
      compression: map['compression'] == null ? null : CompressionResponse.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      datasource: map['datasource'] == null ? null : BlobStreamInputDataSourceResponse.fromMap((map['datasource'] as Map).cast<String, dynamic>()),
      diagnostics: DiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      serialization: map['serialization'] == null ? null : AvroSerializationResponse.fromMap((map['serialization'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

