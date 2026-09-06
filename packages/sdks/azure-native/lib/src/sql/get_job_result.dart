// ignore_for_file: unused_element, unnecessary_cast

import 'job_schedule_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// User-defined description of the job.
  final String? description;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Schedule properties of the job.
  final JobScheduleResponse? schedule;
  /// Resource type.
  final String? type;
  /// The job version number.
  final int? version;

  /// Creates a new [GetJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] User-defined description of the job.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [schedule] Schedule properties of the job.
  /// [type] Resource type.
  /// [version] The job version number.
  GetJobResult({
    this.azureApiVersion,
    String? description,
    this.id,
    this.name,
    this.schedule,
    this.type,
    this.version,
  }) : description = description ?? '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'schedule': ?schedule?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return JobScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
