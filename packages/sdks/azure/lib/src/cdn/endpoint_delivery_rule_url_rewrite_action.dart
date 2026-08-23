// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeliveryRuleUrlRewriteAction {
  /// This value must start with a `/` and can't be longer than 260 characters.
  final pulumi.Input<String> destination;
  /// Whether preserve an unmatched path. Defaults to `true`.
  final pulumi.Input<bool>? preserveUnmatchedPath;
  /// This value must start with a `/` and can't be longer than 260 characters.
  final pulumi.Input<String> sourcePattern;

  /// Creates a new [EndpointDeliveryRuleUrlRewriteAction].
  /// [destination] This value must start with a `/` and can't be longer than 260 characters.
  /// [preserveUnmatchedPath] Whether preserve an unmatched path. Defaults to `true`.
  /// [sourcePattern] This value must start with a `/` and can't be longer than 260 characters.
  const EndpointDeliveryRuleUrlRewriteAction({
    required this.destination,
    this.preserveUnmatchedPath,
    required this.sourcePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'preserveUnmatchedPath': ?preserveUnmatchedPath,
      'sourcePattern': sourcePattern,
    };
  }

  factory EndpointDeliveryRuleUrlRewriteAction.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleUrlRewriteAction(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      preserveUnmatchedPath: (() { final guardedValue = map['preserveUnmatchedPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourcePattern: pulumi.Input.fromValue(map['sourcePattern'] as String),
    );
  }
}
