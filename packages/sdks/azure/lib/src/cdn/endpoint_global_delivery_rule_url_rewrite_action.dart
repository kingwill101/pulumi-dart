// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGlobalDeliveryRuleUrlRewriteAction {
  /// This value must start with a `/` and can't be longer than 260 characters.
  final pulumi.Input<String> destination;
  /// Whether preserve an unmatched path. Defaults to `true`.
  final pulumi.Input<bool>? preserveUnmatchedPath;
  /// This value must start with a `/` and can't be longer than 260 characters.
  final pulumi.Input<String> sourcePattern;

  /// Creates a new [EndpointGlobalDeliveryRuleUrlRewriteAction].
  /// [destination] This value must start with a `/` and can't be longer than 260 characters.
  /// [preserveUnmatchedPath] Whether preserve an unmatched path. Defaults to `true`.
  /// [sourcePattern] This value must start with a `/` and can't be longer than 260 characters.
  EndpointGlobalDeliveryRuleUrlRewriteAction({
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

  factory EndpointGlobalDeliveryRuleUrlRewriteAction.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRuleUrlRewriteAction(
      destination: (map['destination'] as String).input(),
      preserveUnmatchedPath: map['preserveUnmatchedPath'] == null ? null : (map['preserveUnmatchedPath']! as bool).input(),
      sourcePattern: (map['sourcePattern'] as String).input(),
    );
  }
}

