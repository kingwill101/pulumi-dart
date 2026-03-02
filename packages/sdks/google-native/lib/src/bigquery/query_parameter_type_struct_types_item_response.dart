// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_parameter_type_response.dart';

class QueryParameterTypeStructTypesItemResponse {
  /// [Optional] Human-oriented description of the field.
  final pulumi.Input<String> description;
  /// [Optional] The name of this field.
  final pulumi.Input<String> name;
  /// [Required] The type of this field.
  final pulumi.Input<QueryParameterTypeResponse> type;

  /// Creates a new [QueryParameterTypeStructTypesItemResponse].
  /// [description] [Optional] Human-oriented description of the field.
  /// [name] [Optional] The name of this field.
  /// [type] [Required] The type of this field.
  QueryParameterTypeStructTypesItemResponse({
    required this.description,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'type': pulumi.Input.mapInputValue<QueryParameterTypeResponse, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory QueryParameterTypeStructTypesItemResponse.fromMap(Map<String, dynamic> map) {
    return QueryParameterTypeStructTypesItemResponse(
      description: (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      type: (QueryParameterTypeResponse.fromMap((map['type'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

