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
  const FunctionResponse({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AggregateFunctionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

