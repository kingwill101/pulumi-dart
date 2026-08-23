// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_function_properties.dart';

/// A function object, containing all information associated with the named function. All functions are contained under a streaming job.
class FunctionType {
  /// Resource name
  final pulumi.Input<String>? name;
  /// The properties that are associated with a function.
  final pulumi.Input<AggregateFunctionProperties>? properties;

  /// Creates a new [FunctionType].
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  const FunctionType({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<AggregateFunctionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory FunctionType.fromMap(Map<String, dynamic> map) {
    return FunctionType(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AggregateFunctionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
