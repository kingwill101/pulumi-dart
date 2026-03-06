// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbEdgeExtensionExtensionChainMatchCondition {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final pulumi.Input<String> celExpression;

  /// Creates a new [LbEdgeExtensionExtensionChainMatchCondition].
  /// [celExpression] A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  const LbEdgeExtensionExtensionChainMatchCondition({
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'celExpression': celExpression,
    };
  }

  factory LbEdgeExtensionExtensionChainMatchCondition.fromMap(Map<String, dynamic> map) {
    return LbEdgeExtensionExtensionChainMatchCondition(
      celExpression: pulumi.Input.fromValue(map['celExpression'] as String),
    );
  }
}

