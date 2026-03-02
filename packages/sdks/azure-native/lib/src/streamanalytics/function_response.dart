// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_function_properties_response.dart';

/// A function object, containing all information associated with the named function. All functions are contained under a streaming job.
class FunctionResponse {
  /// Resource Id
  final pulumi.Input<String> id;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The properties that are associated with a function.
  final pulumi.Input<AggregateFunctionPropertiesResponse>? properties;
  /// Resource type
  final pulumi.Input<String> type;

  /// Creates a new [FunctionResponse].
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  /// [type] Resource type
  FunctionResponse({
    required this.id,
    this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<AggregateFunctionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory FunctionResponse.fromMap(Map<String, dynamic> map) {
    return FunctionResponse(
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (AggregateFunctionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

