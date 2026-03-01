// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleFusionSourceSubType {
  /// Whether this source subtype under source signal is enabled or disabled in Fusion detection. Defaults to `true`.
  final bool? enabled;
  /// The Name of the source subtype under a given source signal in Fusion detection. Refer to Fusion alert rule template for supported values.
  final String name;
  /// A list of severities that are enabled for this source subtype consumed in Fusion detection. Possible values for each element are `High`, `Medium`, `Low`, `Informational`.
  final List<String> severitiesAlloweds;

  /// Creates a new [AlertRuleFusionSourceSubType].
  /// [enabled] Whether this source subtype under source signal is enabled or disabled in Fusion detection. Defaults to `true`.
  /// [name] The Name of the source subtype under a given source signal in Fusion detection. Refer to Fusion alert rule template for supported values.
  /// [severitiesAlloweds] A list of severities that are enabled for this source subtype consumed in Fusion detection. Possible values for each element are `High`, `Medium`, `Low`, `Informational`.
  AlertRuleFusionSourceSubType({
    this.enabled,
    required this.name,
    required this.severitiesAlloweds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'severitiesAlloweds': severitiesAlloweds,
    };
  }

  factory AlertRuleFusionSourceSubType.fromMap(Map<String, dynamic> map) {
    return AlertRuleFusionSourceSubType(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      severitiesAlloweds: (map['severitiesAlloweds'] as List).cast<String>(),
    );
  }
}

