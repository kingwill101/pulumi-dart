// ignore_for_file: unused_element, unnecessary_cast

import 'job_properties_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the job resource identifier.
  final String? id;
  /// Gets the job resource name.
  final String? name;
  /// Gets or sets the job properties.
  final JobPropertiesResponse? properties;
  /// Gets the job resource type.
  final String? type;

  /// Creates a new [GetJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets the job resource identifier.
  /// [name] Gets the job resource name.
  /// [properties] Gets or sets the job properties.
  /// [type] Gets the job resource type.
  const GetJobResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return JobPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
