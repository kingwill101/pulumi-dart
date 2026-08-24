// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsHostSelector {
  /// Specify whether to enable filtering via hosts for egress policies.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TeamsAccountSettingsHostSelector].
  /// [enabled] Specify whether to enable filtering via hosts for egress policies.
  const TeamsAccountSettingsHostSelector({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TeamsAccountSettingsHostSelector.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsHostSelector(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
