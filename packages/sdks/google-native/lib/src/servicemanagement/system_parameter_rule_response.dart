// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_parameter_response.dart';

/// Define a system parameter rule mapping system parameter definitions to methods.
class SystemParameterRuleResponse {
  /// Define parameters. Multiple names may be defined for a parameter. For a given method call, only one of them should be used. If multiple names are used the behavior is implementation-dependent. If none of the specified names are present the behavior is parameter-dependent.
  final pulumi.Input<List<SystemParameterResponse>> parameters;
  /// Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.
  final pulumi.Input<String> selector;

  /// Creates a new [SystemParameterRuleResponse].
  /// [parameters] Define parameters. Multiple names may be defined for a parameter. For a given method call, only one of them should be used. If multiple names are used the behavior is implementation-dependent. If none of the specified names are present the behavior is parameter-dependent.
  /// [selector] Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.
  const SystemParameterRuleResponse({
    required this.parameters,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<SystemParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SystemParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': selector,
    };
  }

  factory SystemParameterRuleResponse.fromMap(Map<String, dynamic> map) {
    return SystemParameterRuleResponse(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<SystemParameterResponse>(map['parameters']!, (value) => SystemParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
