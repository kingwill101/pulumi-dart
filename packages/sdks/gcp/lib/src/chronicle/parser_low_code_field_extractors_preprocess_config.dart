// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParserLowCodeFieldExtractorsPreprocessConfig {
  /// GROK Regex to extract the structured part of the log.
  /// syntax documentation:
  /// www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html
  final pulumi.Input<String>? grokRegex;
  /// Target field name for the structured part of the log.
  /// This should match a SEMANTIC identifier from the grok expression.
  final pulumi.Input<String>? target;

  /// Creates a new [ParserLowCodeFieldExtractorsPreprocessConfig].
  /// [grokRegex] GROK Regex to extract the structured part of the log.
  /// [target] Target field name for the structured part of the log.
  const ParserLowCodeFieldExtractorsPreprocessConfig({
    this.grokRegex,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grokRegex': ?grokRegex,
      'target': ?target,
    };
  }

  factory ParserLowCodeFieldExtractorsPreprocessConfig.fromMap(Map<String, dynamic> map) {
    return ParserLowCodeFieldExtractorsPreprocessConfig(
      grokRegex: (() { final guardedValue = map['grokRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
