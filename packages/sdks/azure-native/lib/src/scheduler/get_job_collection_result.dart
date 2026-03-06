// ignore_for_file: unused_element, unnecessary_cast

import 'job_collection_properties_response.dart';

/// Result data returned by getJobCollection.
class GetJobCollectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the job collection resource identifier.
  final String id;
  /// Gets or sets the storage account location.
  final String? location;
  /// Gets or sets the job collection resource name.
  final String? name;
  /// Gets or sets the job collection properties.
  final JobCollectionPropertiesResponse properties;
  /// Gets or sets the tags.
  final Map<String, String>? tags;
  /// Gets the job collection resource type.
  final String type;

  /// Creates a new [GetJobCollectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets the job collection resource identifier.
  /// [location] Gets or sets the storage account location.
  /// [name] Gets or sets the job collection resource name.
  /// [properties] Gets or sets the job collection properties.
  /// [tags] Gets or sets the tags.
  /// [type] Gets the job collection resource type.
  const GetJobCollectionResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': ?name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetJobCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetJobCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: JobCollectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

