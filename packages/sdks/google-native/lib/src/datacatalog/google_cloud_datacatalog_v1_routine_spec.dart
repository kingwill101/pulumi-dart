// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_big_query_routine_spec.dart';
import 'google_cloud_datacatalog_v1_routine_spec_argument.dart';
import 'google_cloud_datacatalog_v1_routine_spec_routine_type.dart';

/// Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.
class GoogleCloudDatacatalogV1RoutineSpec {
  /// Fields specific for BigQuery routines.
  final pulumi.Input<GoogleCloudDatacatalogV1BigQueryRoutineSpec>? bigqueryRoutineSpec;
  /// The body of the routine.
  final pulumi.Input<String>? definitionBody;
  /// The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  final pulumi.Input<String>? language;
  /// Return type of the argument. The exact value depends on the source system and the language.
  final pulumi.Input<String>? returnType;
  /// Arguments of the routine.
  final pulumi.Input<List<GoogleCloudDatacatalogV1RoutineSpecArgument>>? routineArguments;
  /// The type of the routine.
  final pulumi.Input<GoogleCloudDatacatalogV1RoutineSpecRoutineType>? routineType;

  /// Creates a new [GoogleCloudDatacatalogV1RoutineSpec].
  /// [bigqueryRoutineSpec] Fields specific for BigQuery routines.
  /// [definitionBody] The body of the routine.
  /// [language] The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  /// [returnType] Return type of the argument. The exact value depends on the source system and the language.
  /// [routineArguments] Arguments of the routine.
  /// [routineType] The type of the routine.
  GoogleCloudDatacatalogV1RoutineSpec({
    this.bigqueryRoutineSpec,
    this.definitionBody,
    this.language,
    this.returnType,
    this.routineArguments,
    this.routineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryRoutineSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1BigQueryRoutineSpec, Map<String, dynamic>>(bigqueryRoutineSpec, (value) => value.toMap()),
      'definitionBody': ?definitionBody,
      'language': ?language,
      'returnType': ?returnType,
      'routineArguments': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDatacatalogV1RoutineSpecArgument>, List<Map<String, dynamic>>>(routineArguments, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1RoutineSpecArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routineType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1RoutineSpecRoutineType, String>(routineType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDatacatalogV1RoutineSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpec(
      bigqueryRoutineSpec: (() { final guardedValue = map['bigqueryRoutineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      definitionBody: (() { final guardedValue = map['definitionBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      returnType: (() { final guardedValue = map['returnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineArguments: (() { final guardedValue = map['routineArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1RoutineSpecArgument>(guardedValue, (value) => GoogleCloudDatacatalogV1RoutineSpecArgument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routineType: (() { final guardedValue = map['routineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1RoutineSpecRoutineType.fromValue(guardedValue as String)); })(),
    );
  }
}

