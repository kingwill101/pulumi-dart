// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default options to interpret user query.
class QueryInterpretationConfig {
  /// Set this flag to disable supplemental results retrieval, setting a flag here will not retrieve supplemental results for queries associated with a given search application. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for supplemental results.
  final pulumi.Input<bool>? forceDisableSupplementalResults;
  /// Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental results retrieval, and usage of synonyms including custom ones. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for verbatim mode.
  final pulumi.Input<bool>? forceVerbatimMode;

  /// Creates a new [QueryInterpretationConfig].
  /// [forceDisableSupplementalResults] Set this flag to disable supplemental results retrieval, setting a flag here will not retrieve supplemental results for queries associated with a given search application. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for supplemental results.
  /// [forceVerbatimMode] Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental results retrieval, and usage of synonyms including custom ones. If this flag is set to True, it will take precedence over the option set at Query level. For the default value of False, query level flag will set the correct interpretation for verbatim mode.
  QueryInterpretationConfig({
    this.forceDisableSupplementalResults,
    this.forceVerbatimMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDisableSupplementalResults': ?forceDisableSupplementalResults,
      'forceVerbatimMode': ?forceVerbatimMode,
    };
  }

  factory QueryInterpretationConfig.fromMap(Map<String, dynamic> map) {
    return QueryInterpretationConfig(
      forceDisableSupplementalResults: (() { final guardedValue = map['forceDisableSupplementalResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceVerbatimMode: (() { final guardedValue = map['forceVerbatimMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

