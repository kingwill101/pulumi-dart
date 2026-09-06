// ignore_for_file: unused_element, unnecessary_cast

import 'professional_service_resource_response_properties.dart';

/// Result data returned by getProfessionalServiceSubscriptionLevel.
class GetProfessionalServiceSubscriptionLevelResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource uri
  final String? id;
  /// The name of the resource
  final String? name;
  /// professionalService properties
  final ProfessionalServiceResourceResponseProperties? properties;
  /// the resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetProfessionalServiceSubscriptionLevelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource uri
  /// [name] The name of the resource
  /// [properties] professionalService properties
  /// [tags] the resource tags.
  /// [type] Resource type.
  const GetProfessionalServiceSubscriptionLevelResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetProfessionalServiceSubscriptionLevelResult.fromMap(Map<String, dynamic> map) {
    return GetProfessionalServiceSubscriptionLevelResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ProfessionalServiceResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
