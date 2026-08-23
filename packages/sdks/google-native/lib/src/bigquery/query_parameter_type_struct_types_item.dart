// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_parameter_type.dart';

class QueryParameterTypeStructTypesItem {
  /// [Optional] Human-oriented description of the field.
  final pulumi.Input<String>? description;
  /// [Optional] The name of this field.
  final pulumi.Input<String>? name;
  /// [Required] The type of this field.
  final pulumi.Input<QueryParameterType>? type;

  /// Creates a new [QueryParameterTypeStructTypesItem].
  /// [description] [Optional] Human-oriented description of the field.
  /// [name] [Optional] The name of this field.
  /// [type] [Required] The type of this field.
  const QueryParameterTypeStructTypesItem({
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'type': ?pulumi.Input.mapOptionalInputValue<QueryParameterType, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory QueryParameterTypeStructTypesItem.fromMap(Map<String, dynamic> map) {
    return QueryParameterTypeStructTypesItem(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryParameterType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
