// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostics_response.dart';

/// Result data returned by getOutput.
class GetOutputResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final dynamic datasource;
  /// Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  final DiagnosticsResponse? diagnostics;
  /// The current entity tag for the output. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final String? etag;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final dynamic serialization;
  /// The size window to constrain a Stream Analytics output to.
  final int? sizeWindow;
  /// The time frame for filtering Stream Analytics job outputs.
  final String? timeWindow;
  /// Resource type
  final String? type;

  /// Creates a new [GetOutputResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [diagnostics] Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  /// [etag] The current entity tag for the output. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [id] Resource Id
  /// [name] Resource name
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  /// [type] Resource type
  const GetOutputResult({
    this.azureApiVersion,
    this.datasource,
    this.diagnostics,
    this.etag,
    this.id,
    this.name,
    this.serialization,
    this.sizeWindow,
    this.timeWindow,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'datasource': ?datasource,
      'diagnostics': ?diagnostics?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'serialization': ?serialization,
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
      'type': ?type,
    };
  }

  factory GetOutputResult.fromMap(Map<String, dynamic> map) {
    return GetOutputResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasource: (() { final guardedValue = map['datasource']; if (guardedValue == null) return null; return guardedValue; })(),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return DiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialization: (() { final guardedValue = map['serialization']; if (guardedValue == null) return null; return guardedValue; })(),
      sizeWindow: (() { final guardedValue = map['sizeWindow']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      timeWindow: (() { final guardedValue = map['timeWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
