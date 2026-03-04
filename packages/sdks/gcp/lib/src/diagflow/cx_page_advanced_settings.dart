// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_advanced_settings_dtmf_settings.dart';

class CxPageAdvancedSettings {
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final pulumi.Input<CxPageAdvancedSettingsDtmfSettings>? dtmfSettings;

  /// Creates a new [CxPageAdvancedSettings].
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  CxPageAdvancedSettings({this.dtmfSettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmfSettings':
          ?pulumi.Input.mapOptionalInputValue<
            CxPageAdvancedSettingsDtmfSettings,
            Map<String, dynamic>
          >(dtmfSettings, (value) => value.toMap()),
    };
  }

  factory CxPageAdvancedSettings.fromMap(Map<String, dynamic> map) {
    return CxPageAdvancedSettings(
      dtmfSettings: (() {
        final guardedValue = map['dtmfSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CxPageAdvancedSettingsDtmfSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
