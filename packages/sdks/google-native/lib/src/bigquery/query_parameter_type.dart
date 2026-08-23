// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_parameter_type_struct_types_item.dart';

class QueryParameterType {
  /// [Optional] The type of the array's elements, if this is an array.
  final pulumi.Input<QueryParameterType>? arrayType;
  /// [Optional] The types of the fields of this struct, in order, if this is a struct.
  final pulumi.Input<List<QueryParameterTypeStructTypesItem>>? structTypes;
  /// [Required] The top level type of this field.
  final pulumi.Input<String>? type;

  /// Creates a new [QueryParameterType].
  /// [arrayType] [Optional] The type of the array's elements, if this is an array.
  /// [structTypes] [Optional] The types of the fields of this struct, in order, if this is a struct.
  /// [type] [Required] The top level type of this field.
  const QueryParameterType({
    this.arrayType,
    this.structTypes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayType': ?pulumi.Input.mapOptionalInputValue<QueryParameterType, Map<String, dynamic>>(arrayType, (value) => value.toMap()),
      'structTypes': ?pulumi.Input.mapOptionalInputValue<List<QueryParameterTypeStructTypesItem>, List<Map<String, dynamic>>>(structTypes, (value) => pulumi.Input.encodeList<QueryParameterTypeStructTypesItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory QueryParameterType.fromMap(Map<String, dynamic> map) {
    return QueryParameterType(
      arrayType: (() { final guardedValue = map['arrayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryParameterType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      structTypes: (() { final guardedValue = map['structTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueryParameterTypeStructTypesItem>(guardedValue, (value) => QueryParameterTypeStructTypesItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
