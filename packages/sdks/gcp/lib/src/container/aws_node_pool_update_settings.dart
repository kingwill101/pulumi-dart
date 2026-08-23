// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_update_settings_surge_settings.dart';

class AwsNodePoolUpdateSettings {
  /// Optional. Settings for surge update.
  final pulumi.Input<AwsNodePoolUpdateSettingsSurgeSettings>? surgeSettings;

  /// Creates a new [AwsNodePoolUpdateSettings].
  /// [surgeSettings] Optional. Settings for surge update.
  const AwsNodePoolUpdateSettings({
    this.surgeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'surgeSettings': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolUpdateSettingsSurgeSettings, Map<String, dynamic>>(surgeSettings, (value) => value.toMap()),
    };
  }

  factory AwsNodePoolUpdateSettings.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolUpdateSettings(
      surgeSettings: (() { final guardedValue = map['surgeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsNodePoolUpdateSettingsSurgeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
