// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_big_query_routine_spec_response.dart';
import 'google_cloud_datacatalog_v1_routine_spec_argument_response.dart';

/// Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.
class GoogleCloudDatacatalogV1RoutineSpecResponse {
  /// Fields specific for BigQuery routines.
  final pulumi.Input<GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse> bigqueryRoutineSpec;
  /// The body of the routine.
  final pulumi.Input<String> definitionBody;
  /// The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  final pulumi.Input<String> language;
  /// Return type of the argument. The exact value depends on the source system and the language.
  final pulumi.Input<String> returnType;
  /// Arguments of the routine.
  final pulumi.Input<List<GoogleCloudDatacatalogV1RoutineSpecArgumentResponse>> routineArguments;
  /// The type of the routine.
  final pulumi.Input<String> routineType;

  /// Creates a new [GoogleCloudDatacatalogV1RoutineSpecResponse].
  /// [bigqueryRoutineSpec] Fields specific for BigQuery routines.
  /// [definitionBody] The body of the routine.
  /// [language] The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  /// [returnType] Return type of the argument. The exact value depends on the source system and the language.
  /// [routineArguments] Arguments of the routine.
  /// [routineType] The type of the routine.
  const GoogleCloudDatacatalogV1RoutineSpecResponse({
    required this.bigqueryRoutineSpec,
    required this.definitionBody,
    required this.language,
    required this.returnType,
    required this.routineArguments,
    required this.routineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryRoutineSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse, Map<String, dynamic>>(bigqueryRoutineSpec, (value) => value.toMap()),
      'definitionBody': definitionBody,
      'language': language,
      'returnType': returnType,
      'routineArguments': pulumi.Input.mapInputValue<List<GoogleCloudDatacatalogV1RoutineSpecArgumentResponse>, List<Map<String, dynamic>>>(routineArguments, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1RoutineSpecArgumentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routineType': routineType,
    };
  }

  factory GoogleCloudDatacatalogV1RoutineSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpecResponse(
      bigqueryRoutineSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse.fromMap((map['bigqueryRoutineSpec']! as Map).cast<String, dynamic>())),
      definitionBody: pulumi.Input.fromValue(map['definitionBody'] as String),
      language: pulumi.Input.fromValue(map['language'] as String),
      returnType: pulumi.Input.fromValue(map['returnType'] as String),
      routineArguments: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1RoutineSpecArgumentResponse>(map['routineArguments']!, (value) => GoogleCloudDatacatalogV1RoutineSpecArgumentResponse.fromMap((value as Map).cast<String, dynamic>()))),
      routineType: pulumi.Input.fromValue(map['routineType'] as String),
    );
  }
}
