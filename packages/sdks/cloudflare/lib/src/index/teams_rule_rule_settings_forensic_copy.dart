// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsForensicCopy {
  /// Enable sending the copy to storage.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TeamsRuleRuleSettingsForensicCopy].
  /// [enabled] Enable sending the copy to storage.
  const TeamsRuleRuleSettingsForensicCopy({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TeamsRuleRuleSettingsForensicCopy.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsForensicCopy(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
