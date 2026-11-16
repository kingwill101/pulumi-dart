// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolDataStoreToolModalityConfigSnippetsConfig {
  /// Whether snippets are enabled.
  final pulumi.Input<bool?>? enableSnippets;
  /// Number of snippets to return per query.
  /// If unset, returns all snippets from the service by default.
  final pulumi.Input<int?>? maxSnippets;

  /// Creates a new [ToolDataStoreToolModalityConfigSnippetsConfig].
  /// [enableSnippets] Whether snippets are enabled.
  /// [maxSnippets] Number of snippets to return per query.
  const ToolDataStoreToolModalityConfigSnippetsConfig({
    this.enableSnippets,
    this.maxSnippets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSnippets': ?enableSnippets,
      'maxSnippets': ?maxSnippets,
    };
  }

  factory ToolDataStoreToolModalityConfigSnippetsConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfigSnippetsConfig(
      enableSnippets: (() { final guardedValue = map['enableSnippets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxSnippets: (() { final guardedValue = map['maxSnippets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
