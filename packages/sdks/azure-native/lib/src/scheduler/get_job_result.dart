// ignore_for_file: unused_element, unnecessary_cast

import 'job_properties_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the job resource identifier.
  final String id;
  /// Gets the job resource name.
  final String name;
  /// Gets or sets the job properties.
  final JobPropertiesResponse properties;
  /// Gets the job resource type.
  final String type;

  /// Creates a new [GetJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets the job resource identifier.
  /// [name] Gets the job resource name.
  /// [properties] Gets or sets the job properties.
  /// [type] Gets the job resource type.
  const GetJobResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: JobPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
