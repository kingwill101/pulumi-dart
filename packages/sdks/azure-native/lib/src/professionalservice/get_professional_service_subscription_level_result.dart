// ignore_for_file: unused_element, unnecessary_cast

import 'professional_service_resource_response_properties.dart';

/// Result data returned by getProfessionalServiceSubscriptionLevel.
class GetProfessionalServiceSubscriptionLevelResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource uri
  final String id;
  /// The name of the resource
  final String name;
  /// professionalService properties
  final ProfessionalServiceResourceResponseProperties properties;
  /// the resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetProfessionalServiceSubscriptionLevelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource uri
  /// [name] The name of the resource
  /// [properties] professionalService properties
  /// [tags] the resource tags.
  /// [type] Resource type.
  GetProfessionalServiceSubscriptionLevelResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetProfessionalServiceSubscriptionLevelResult.fromMap(Map<String, dynamic> map) {
    return GetProfessionalServiceSubscriptionLevelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ProfessionalServiceResourceResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

