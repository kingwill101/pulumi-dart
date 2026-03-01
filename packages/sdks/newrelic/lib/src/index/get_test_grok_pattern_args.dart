// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_test_grok_pattern_get_test_grok_pattern_args_doc}
/// Arguments for getTestGrokPattern.
/// {@endtemplate}
/// {@macro pulumi_index_get_test_grok_pattern_get_test_grok_pattern_args_doc}
class GetTestGrokPatternArgs {
  /// The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The Grok pattern to test.
  final pulumi.Input<String> grok;
  /// The log lines to test the Grok pattern against.
  final pulumi.Input<List<String>> logLines;

  /// Creates a new [GetTestGrokPatternArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [grok] The Grok pattern to test.
  /// [logLines] The log lines to test the Grok pattern against.
  GetTestGrokPatternArgs({
    pulumi.Output<String>? accountId,
    required pulumi.Output<String> grok,
    required pulumi.Output<List<String>> logLines,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      grok = pulumi.Input.asInput<String>(grok),
      logLines = pulumi.Input.asInput<List<String>>(logLines);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'grok': grok,
      'logLines': logLines,
    };
  }

  factory GetTestGrokPatternArgs.fromMap(Map<String, dynamic> map) {
    return GetTestGrokPatternArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      grok: pulumi.Output.create<String>(map['grok'] as String),
      logLines: pulumi.Output.create<List<String>>((map['logLines'] as List).cast<String>()),
    );
  }
}

