// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_wildfire_analysis_profile_wildfire_inline_ml_setting_file_exception.dart';
import 'security_profile_wildfire_analysis_profile_wildfire_inline_ml_setting_inline_ml_config.dart';

class SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting {
  /// File exceptions to exclude from WildFire inline ML.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException>?>? fileExceptions;
  /// Defines what action to take for a specific file type in WildFire inline ML.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig>?>? inlineMlConfigs;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting].
  /// [fileExceptions] File exceptions to exclude from WildFire inline ML.
  /// [inlineMlConfigs] Defines what action to take for a specific file type in WildFire inline ML.
  const SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting({
    this.fileExceptions,
    this.inlineMlConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileExceptions': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException>, List<Map<String, dynamic>>>(fileExceptions, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inlineMlConfigs': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig>, List<Map<String, dynamic>>>(inlineMlConfigs, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting(
      fileExceptions: (() { final guardedValue = map['fileExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingFileException.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inlineMlConfigs: (() { final guardedValue = map['inlineMlConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
