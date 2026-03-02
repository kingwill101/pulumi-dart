// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_update_settings_surge_settings.dart';

class AwsNodePoolUpdateSettings {
  /// Optional. Settings for surge update.
  final pulumi.Input<AwsNodePoolUpdateSettingsSurgeSettings>? surgeSettings;

  /// Creates a new [AwsNodePoolUpdateSettings].
  /// [surgeSettings] Optional. Settings for surge update.
  AwsNodePoolUpdateSettings({
    this.surgeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'surgeSettings': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolUpdateSettingsSurgeSettings, Map<String, dynamic>>(surgeSettings, (value) => value.toMap()),
    };
  }

  factory AwsNodePoolUpdateSettings.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolUpdateSettings(
      surgeSettings: map['surgeSettings'] == null ? null : (AwsNodePoolUpdateSettingsSurgeSettings.fromMap((map['surgeSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

