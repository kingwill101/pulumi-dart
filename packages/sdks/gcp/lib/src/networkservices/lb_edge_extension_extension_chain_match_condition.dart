// ignore_for_file: unused_element, unnecessary_cast


class LbEdgeExtensionExtensionChainMatchCondition {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final String celExpression;

  /// Creates a new [LbEdgeExtensionExtensionChainMatchCondition].
  /// [celExpression] A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  LbEdgeExtensionExtensionChainMatchCondition({
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'celExpression': celExpression,
    };
  }

  factory LbEdgeExtensionExtensionChainMatchCondition.fromMap(Map<String, dynamic> map) {
    return LbEdgeExtensionExtensionChainMatchCondition(
      celExpression: map['celExpression'] as String,
    );
  }
}

