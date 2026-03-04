// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleFusionSourceSubType {
  /// Whether this source subtype under source signal is enabled or disabled in Fusion detection. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// The Name of the source subtype under a given source signal in Fusion detection. Refer to Fusion alert rule template for supported values.
  final pulumi.Input<String> name;

  /// A list of severities that are enabled for this source subtype consumed in Fusion detection. Possible values for each element are `High`, `Medium`, `Low`, `Informational`.
  final pulumi.Input<List<String>> severitiesAlloweds;

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
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      severitiesAlloweds: pulumi.Input.fromValue(
        (map['severitiesAlloweds'] as List).cast<String>(),
      ),
    );
  }
}
