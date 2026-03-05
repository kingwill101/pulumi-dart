// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_security_operator_args_doc}
/// Arguments for getSecurityOperator.
/// {@endtemplate}
/// {@macro pulumi_security_get_security_operator_args_doc}
class GetSecurityOperatorArgs {
  /// name of the pricing configuration
  final pulumi.Input<String> pricingName;
  /// name of the securityOperator
  final pulumi.Input<String> securityOperatorName;

  /// Creates a new [GetSecurityOperatorArgs].
  /// [pricingName] name of the pricing configuration
  /// [securityOperatorName] name of the securityOperator
  GetSecurityOperatorArgs({
    required this.pricingName,
    required this.securityOperatorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pricingName': pricingName,
      'securityOperatorName': securityOperatorName,
    };
  }

  factory GetSecurityOperatorArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityOperatorArgs(
      pricingName: pulumi.Input.fromValue(map['pricingName'] as String),
      securityOperatorName: pulumi.Input.fromValue(map['securityOperatorName'] as String),
    );
  }
}

