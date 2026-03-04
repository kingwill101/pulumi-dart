// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayWafConfigurationExclusion {
  /// Match variable of the exclusion rule.
  final pulumi.Input<String> matchVariable;

  /// String value which will be used for the filter operation.
  final pulumi.Input<String> selector;

  /// Operator which will be used to search in the variable content.
  final pulumi.Input<String> selectorMatchOperator;

  /// Creates a new [GetApplicationGatewayWafConfigurationExclusion].
  /// [matchVariable] Match variable of the exclusion rule.
  /// [selector] String value which will be used for the filter operation.
  /// [selectorMatchOperator] Operator which will be used to search in the variable content.
  GetApplicationGatewayWafConfigurationExclusion({
    required this.matchVariable,
    required this.selector,
    required this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'selector': selector,
      'selectorMatchOperator': selectorMatchOperator,
    };
  }

  factory GetApplicationGatewayWafConfigurationExclusion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationGatewayWafConfigurationExclusion(
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      selector: pulumi.Input.fromValue(map['selector'] as String),
      selectorMatchOperator: pulumi.Input.fromValue(
        map['selectorMatchOperator'] as String,
      ),
    );
  }
}
