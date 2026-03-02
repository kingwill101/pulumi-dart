// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization_response.dart';
import 'azure_sql_reference_input_data_source_response.dart';
import 'compression_response.dart';
import 'diagnostics_response.dart';

/// The properties that are associated with an input containing reference data.
class ReferenceInputPropertiesResponse {
  /// Describes how input data is compressed
  final pulumi.Input<CompressionResponse>? compression;
  /// Describes an input data source that contains reference data. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AzureSqlReferenceInputDataSourceResponse>? datasource;
  /// Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  final pulumi.Input<DiagnosticsResponse> diagnostics;
  /// The current entity tag for the input. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final pulumi.Input<String> etag;
  /// partitionKey Describes a key in the input data which is used for partitioning the input data
  final pulumi.Input<String>? partitionKey;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AvroSerializationResponse>? serialization;
  /// Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Reference'.
  final pulumi.Input<String> type;

  /// Creates a new [ReferenceInputPropertiesResponse].
  /// [compression] Describes how input data is compressed
  /// [datasource] Describes an input data source that contains reference data. Required on PUT (CreateOrReplace) requests.
  /// [diagnostics] Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  /// [etag] The current entity tag for the input. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [partitionKey] partitionKey Describes a key in the input data which is used for partitioning the input data
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests.
  ReferenceInputPropertiesResponse({
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
      'compression': ?pulumi.Input.mapOptionalInputValue<CompressionResponse, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'datasource': ?pulumi.Input.mapOptionalInputValue<AzureSqlReferenceInputDataSourceResponse, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'diagnostics': pulumi.Input.mapInputValue<DiagnosticsResponse, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'etag': etag,
      'partitionKey': ?partitionKey,
      'serialization': ?pulumi.Input.mapOptionalInputValue<AvroSerializationResponse, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ReferenceInputPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReferenceInputPropertiesResponse(
      compression: map['compression'] == null ? null : (CompressionResponse.fromMap((map['compression']! as Map).cast<String, dynamic>())).input(),
      datasource: map['datasource'] == null ? null : (AzureSqlReferenceInputDataSourceResponse.fromMap((map['datasource']! as Map).cast<String, dynamic>())).input(),
      diagnostics: (DiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey']! as String).input(),
      serialization: map['serialization'] == null ? null : (AvroSerializationResponse.fromMap((map['serialization']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

