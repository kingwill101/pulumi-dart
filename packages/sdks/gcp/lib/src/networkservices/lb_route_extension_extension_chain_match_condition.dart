// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbRouteExtensionExtensionChainMatchCondition {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final pulumi.Input<String> celExpression;

  /// Creates a new [LbRouteExtensionExtensionChainMatchCondition].
  /// [celExpression] A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  LbRouteExtensionExtensionChainMatchCondition({required this.celExpression});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'celExpression': celExpression};
  }

  factory LbRouteExtensionExtensionChainMatchCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return LbRouteExtensionExtensionChainMatchCondition(
      celExpression: pulumi.Input.fromValue(map['celExpression'] as String),
    );
  }
}
