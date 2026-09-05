// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleActionUrlRewrite {
  /// The destination path for the rewrite action.
  final pulumi.Input<String> destinationPath;
  /// Whether to preserve the unmatched part of the path.
  final pulumi.Input<bool> preserveUnmatchedPathEnabled;
  /// The source pattern for the rewrite action.
  final pulumi.Input<String> sourcePattern;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleActionUrlRewrite].
  /// [destinationPath] The destination path for the rewrite action.
  /// [preserveUnmatchedPathEnabled] Whether to preserve the unmatched part of the path.
  /// [sourcePattern] The source pattern for the rewrite action.
  const GetFrontdoorBatchRuleSetRuleActionUrlRewrite({
    required this.destinationPath,
    required this.preserveUnmatchedPathEnabled,
    required this.sourcePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPath': destinationPath,
      'preserveUnmatchedPathEnabled': preserveUnmatchedPathEnabled,
      'sourcePattern': sourcePattern,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleActionUrlRewrite(
      destinationPath: pulumi.Input.fromValue(map['destinationPath'] as String),
      preserveUnmatchedPathEnabled: pulumi.Input.fromValue(map['preserveUnmatchedPathEnabled'] as bool),
      sourcePattern: pulumi.Input.fromValue(map['sourcePattern'] as String),
    );
  }
}
