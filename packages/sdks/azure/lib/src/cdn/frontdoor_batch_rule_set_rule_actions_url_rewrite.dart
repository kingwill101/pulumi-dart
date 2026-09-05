// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleActionsUrlRewrite {
  /// The destination path to use in the rewrite.
  final pulumi.Input<String> destinationPath;
  /// Whether to append the remaining path after the source pattern to the new destination path. Defaults to `false`.
  final pulumi.Input<bool?>? preserveUnmatchedPathEnabled;
  /// The source pattern in the URL path to replace.
  final pulumi.Input<String> sourcePattern;

  /// Creates a new [FrontdoorBatchRuleSetRuleActionsUrlRewrite].
  /// [destinationPath] The destination path to use in the rewrite.
  /// [preserveUnmatchedPathEnabled] Whether to append the remaining path after the source pattern to the new destination path. Defaults to `false`.
  /// [sourcePattern] The source pattern in the URL path to replace.
  const FrontdoorBatchRuleSetRuleActionsUrlRewrite({
    required this.destinationPath,
    this.preserveUnmatchedPathEnabled,
    required this.sourcePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPath': destinationPath,
      'preserveUnmatchedPathEnabled': ?preserveUnmatchedPathEnabled,
      'sourcePattern': sourcePattern,
    };
  }

  factory FrontdoorBatchRuleSetRuleActionsUrlRewrite.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActionsUrlRewrite(
      destinationPath: pulumi.Input.fromValue(map['destinationPath'] as String),
      preserveUnmatchedPathEnabled: (() { final guardedValue = map['preserveUnmatchedPathEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourcePattern: pulumi.Input.fromValue(map['sourcePattern'] as String),
    );
  }
}
