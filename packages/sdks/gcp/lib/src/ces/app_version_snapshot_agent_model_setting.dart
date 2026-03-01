// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotAgentModelSetting {
  /// (Output)
  /// The LLM model that the agent should use.
  /// If not set, the agent will inherit the model from its parent agent.
  final String? model;
  /// (Output)
  /// If set, this temperature will be used for the LLM model. Temperature
  /// controls the randomness of the model's responses. Lower temperatures
  /// produce responses that are more predictable. Higher temperatures produce
  /// responses that are more creative.
  final double? temperature;

  /// Creates a new [AppVersionSnapshotAgentModelSetting].
  /// [model] (Output)
  /// [temperature] (Output)
  AppVersionSnapshotAgentModelSetting({
    this.model,
    this.temperature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?model,
      'temperature': ?temperature,
    };
  }

  factory AppVersionSnapshotAgentModelSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentModelSetting(
      model: map['model'] == null ? null : map['model'] as String,
      temperature: map['temperature'] == null ? null : map['temperature'] as double,
    );
  }
}

