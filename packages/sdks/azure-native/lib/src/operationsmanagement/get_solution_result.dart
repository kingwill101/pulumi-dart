// ignore_for_file: unused_element, unnecessary_cast

import 'solution_plan_response.dart';
import 'solution_properties_response.dart';

/// Result data returned by getSolution.
class GetSolutionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource location
  final String? location;
  /// Resource name.
  final String? name;
  /// Plan for solution object supported by the OperationsManagement resource provider.
  final SolutionPlanResponse? plan;
  /// Properties for solution object supported by the OperationsManagement resource provider.
  final SolutionPropertiesResponse? properties;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetSolutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [location] Resource location
  /// [name] Resource name.
  /// [plan] Plan for solution object supported by the OperationsManagement resource provider.
  /// [properties] Properties for solution object supported by the OperationsManagement resource provider.
  /// [tags] Resource tags
  /// [type] Resource type.
  const GetSolutionResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.plan,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'plan': ?plan?.toMap(),
      'properties': ?properties?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSolutionResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return SolutionPlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
