// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolDataStoreToolModalityConfigSnippetsConfig {
  /// Whether snippets are enabled.
  final pulumi.Input<bool?>? enableSnippets;

  /// Creates a new [ToolDataStoreToolModalityConfigSnippetsConfig].
  /// [enableSnippets] Whether snippets are enabled.
  const ToolDataStoreToolModalityConfigSnippetsConfig({
    this.enableSnippets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSnippets': ?enableSnippets,
    };
  }

  factory ToolDataStoreToolModalityConfigSnippetsConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfigSnippetsConfig(
      enableSnippets: (() { final guardedValue = map['enableSnippets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
