// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization_response.dart';
import 'azure_data_lake_store_output_data_source_response.dart';
import 'diagnostics_response.dart';

/// An output object, containing all information associated with the named output. All outputs are contained under a streaming job.
class OutputResponse {
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AzureDataLakeStoreOutputDataSourceResponse>? datasource;

  /// Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  final pulumi.Input<DiagnosticsResponse> diagnostics;

  /// The current entity tag for the output. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final pulumi.Input<String> etag;

  /// Resource Id
  final pulumi.Input<String> id;

  /// Resource name
  final pulumi.Input<String>? name;

  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AvroSerializationResponse>? serialization;

  /// The size window to constrain a Stream Analytics output to.
  final pulumi.Input<int>? sizeWindow;

  /// The time frame for filtering Stream Analytics job outputs.
  final pulumi.Input<String>? timeWindow;

  /// Resource type
  final pulumi.Input<String> type;

  /// Creates a new [OutputResponse].
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [diagnostics] Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  /// [etag] The current entity tag for the output. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [id] Resource Id
  /// [name] Resource name
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  /// [type] Resource type
  OutputResponse({
    this.datasource,
    required this.diagnostics,
    required this.etag,
    required this.id,
    this.name,
    this.serialization,
    this.sizeWindow,
    this.timeWindow,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasource':
          ?pulumi.Input.mapOptionalInputValue<
            AzureDataLakeStoreOutputDataSourceResponse,
            Map<String, dynamic>
          >(datasource, (value) => value.toMap()),
      'diagnostics':
          pulumi.Input.mapInputValue<DiagnosticsResponse, Map<String, dynamic>>(
            diagnostics,
            (value) => value.toMap(),
          ),
      'etag': etag,
      'id': id,
      'name': ?name,
      'serialization':
          ?pulumi.Input.mapOptionalInputValue<
            AvroSerializationResponse,
            Map<String, dynamic>
          >(serialization, (value) => value.toMap()),
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
      'type': type,
    };
  }

  factory OutputResponse.fromMap(Map<String, dynamic> map) {
    return OutputResponse(
      datasource: (() {
        final guardedValue = map['datasource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureDataLakeStoreOutputDataSourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diagnostics: pulumi.Input.fromValue(
        DiagnosticsResponse.fromMap(
          (map['diagnostics']! as Map).cast<String, dynamic>(),
        ),
      ),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serialization: (() {
        final guardedValue = map['serialization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AvroSerializationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sizeWindow: (() {
        final guardedValue = map['sizeWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeWindow: (() {
        final guardedValue = map['timeWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
