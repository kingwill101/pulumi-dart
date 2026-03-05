// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Conditions under which this chain is invoked for a request.
class ExtensionChainMatchConditionResponse {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final pulumi.Input<String> celExpression;

  /// Creates a new [ExtensionChainMatchConditionResponse].
  /// [celExpression] A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  ExtensionChainMatchConditionResponse({
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'celExpression': celExpression,
    };
  }

  factory ExtensionChainMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionChainMatchConditionResponse(
      celExpression: pulumi.Input.fromValue(map['celExpression'] as String),
    );
  }
}

