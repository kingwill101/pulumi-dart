// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaWebSearchConfig {
  /// Whether web search grounding is disabled for the analyst agent.
  /// Defaults to false if not specified (i.e. web search grounding is enabled).
  final pulumi.Input<bool?>? disabled;
  /// List of domains to be excluded from Google Search / Enterprise Web Search
  /// grounding.
  final pulumi.Input<List<String>?>? excludedDomains;

  /// Creates a new [AnalystAgentPersonaWebSearchConfig].
  /// [disabled] Whether web search grounding is disabled for the analyst agent.
  /// [excludedDomains] List of domains to be excluded from Google Search / Enterprise Web Search
  const AnalystAgentPersonaWebSearchConfig({
    this.disabled,
    this.excludedDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'excludedDomains': ?excludedDomains,
    };
  }

  factory AnalystAgentPersonaWebSearchConfig.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaWebSearchConfig(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludedDomains: (() { final guardedValue = map['excludedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
