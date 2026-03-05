// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_parameter_type_struct_types_item_response.dart';

class QueryParameterTypeResponse {
  /// [Optional] The type of the array's elements, if this is an array.
  final pulumi.Input<QueryParameterTypeResponse> arrayType;
  /// [Optional] The types of the fields of this struct, in order, if this is a struct.
  final pulumi.Input<List<QueryParameterTypeStructTypesItemResponse>> structTypes;
  /// [Required] The top level type of this field.
  final pulumi.Input<String> type;

  /// Creates a new [QueryParameterTypeResponse].
  /// [arrayType] [Optional] The type of the array's elements, if this is an array.
  /// [structTypes] [Optional] The types of the fields of this struct, in order, if this is a struct.
  /// [type] [Required] The top level type of this field.
  QueryParameterTypeResponse({
    required this.arrayType,
    required this.structTypes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayType': pulumi.Input.mapInputValue<QueryParameterTypeResponse, Map<String, dynamic>>(arrayType, (value) => value.toMap()),
      'structTypes': pulumi.Input.mapInputValue<List<QueryParameterTypeStructTypesItemResponse>, List<Map<String, dynamic>>>(structTypes, (value) => pulumi.Input.encodeList<QueryParameterTypeStructTypesItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory QueryParameterTypeResponse.fromMap(Map<String, dynamic> map) {
    return QueryParameterTypeResponse(
      arrayType: pulumi.Input.fromValue(QueryParameterTypeResponse.fromMap((map['arrayType']! as Map).cast<String, dynamic>())),
      structTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<QueryParameterTypeStructTypesItemResponse>(map['structTypes']!, (value) => QueryParameterTypeStructTypesItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

