// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_rule_response.dart';

/// Customize service error responses. For example, list any service specific protobuf types that can appear in error detail lists of error responses. Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.AnotherError
class CustomErrorResponse {
  /// The list of custom error rules that apply to individual API messages. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<CustomErrorRuleResponse>> rules;
  /// The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  final pulumi.Input<List<String>> types;

  /// Creates a new [CustomErrorResponse].
  /// [rules] The list of custom error rules that apply to individual API messages. **NOTE:** All service configuration rules follow "last one wins" order.
  /// [types] The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  const CustomErrorResponse({
    required this.rules,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<CustomErrorRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CustomErrorRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'types': types,
    };
  }

  factory CustomErrorResponse.fromMap(Map<String, dynamic> map) {
    return CustomErrorResponse(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<CustomErrorRuleResponse>(map['rules']!, (value) => CustomErrorRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
    );
  }
}

