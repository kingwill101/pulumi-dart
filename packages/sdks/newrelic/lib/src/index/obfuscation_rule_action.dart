// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObfuscationRuleAction {
  /// Attribute names for action. An empty list applies the action to all the attributes.
  final pulumi.Input<List<String>> attributes;
  /// Expression Id for action.
  final pulumi.Input<String> expressionId;
  /// Obfuscation method to use. Methods for replacing obfuscated values are `HASH_SHA256` and `MASK`.
  final pulumi.Input<String> method;

  /// Creates a new [ObfuscationRuleAction].
  /// [attributes] Attribute names for action. An empty list applies the action to all the attributes.
  /// [expressionId] Expression Id for action.
  /// [method] Obfuscation method to use. Methods for replacing obfuscated values are `HASH_SHA256` and `MASK`.
  ObfuscationRuleAction({
    required this.attributes,
    required this.expressionId,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'expressionId': expressionId,
      'method': method,
    };
  }

  factory ObfuscationRuleAction.fromMap(Map<String, dynamic> map) {
    return ObfuscationRuleAction(
      attributes: pulumi.Input.fromValue((map['attributes'] as List).cast<String>()),
      expressionId: pulumi.Input.fromValue(map['expressionId'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}

