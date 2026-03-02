// ignore_for_file: unused_element, unnecessary_cast

import 'solution_plan_response.dart';
import 'solution_properties_response.dart';

/// Result data returned by getSolution.
class GetSolutionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Resource location
  final String? location;
  /// Resource name.
  final String name;
  /// Plan for solution object supported by the OperationsManagement resource provider.
  final SolutionPlanResponse? plan;
  /// Properties for solution object supported by the OperationsManagement resource provider.
  final SolutionPropertiesResponse properties;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetSolutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [location] Resource location
  /// [name] Resource name.
  /// [plan] Plan for solution object supported by the OperationsManagement resource provider.
  /// [properties] Properties for solution object supported by the OperationsManagement resource provider.
  /// [tags] Resource tags
  /// [type] Resource type.
  GetSolutionResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    this.plan,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'plan': ?plan == null ? null : plan!.toMap(),
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSolutionResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      plan: map['plan'] == null ? null : SolutionPlanResponse.fromMap((map['plan']! as Map).cast<String, dynamic>()),
      properties: SolutionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

