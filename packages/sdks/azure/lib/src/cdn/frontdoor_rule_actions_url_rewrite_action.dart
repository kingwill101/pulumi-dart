// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleActionsUrlRewriteAction {
  /// The destination path to use in the rewrite. The destination path overwrites the source pattern.
  final pulumi.Input<String> destination;
  /// Append the remaining path after the source pattern to the new destination path? Possible values `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? preserveUnmatchedPath;
  /// The source pattern in the URL path to replace. This uses prefix-based matching. For example, to match all URL paths use a forward slash `"/"` as the source pattern value.
  final pulumi.Input<String> sourcePattern;

  /// Creates a new [FrontdoorRuleActionsUrlRewriteAction].
  /// [destination] The destination path to use in the rewrite. The destination path overwrites the source pattern.
  /// [preserveUnmatchedPath] Append the remaining path after the source pattern to the new destination path? Possible values `true` or `false`. Defaults to `false`.
  /// [sourcePattern] The source pattern in the URL path to replace. This uses prefix-based matching. For example, to match all URL paths use a forward slash `"/"` as the source pattern value.
  const FrontdoorRuleActionsUrlRewriteAction({
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

  factory FrontdoorRuleActionsUrlRewriteAction.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActionsUrlRewriteAction(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      preserveUnmatchedPath: (() { final guardedValue = map['preserveUnmatchedPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourcePattern: pulumi.Input.fromValue(map['sourcePattern'] as String),
    );
  }
}

