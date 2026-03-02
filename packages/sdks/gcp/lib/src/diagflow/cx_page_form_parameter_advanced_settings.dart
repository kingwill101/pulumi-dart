// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter_advanced_settings_dtmf_settings.dart';

class CxPageFormParameterAdvancedSettings {
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final pulumi.Input<CxPageFormParameterAdvancedSettingsDtmfSettings>? dtmfSettings;

  /// Creates a new [CxPageFormParameterAdvancedSettings].
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  CxPageFormParameterAdvancedSettings({
    this.dtmfSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmfSettings': ?pulumi.Input.mapOptionalInputValue<CxPageFormParameterAdvancedSettingsDtmfSettings, Map<String, dynamic>>(dtmfSettings, (value) => value.toMap()),
    };
  }

  factory CxPageFormParameterAdvancedSettings.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterAdvancedSettings(
      dtmfSettings: map['dtmfSettings'] == null ? null : (CxPageFormParameterAdvancedSettingsDtmfSettings.fromMap((map['dtmfSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

