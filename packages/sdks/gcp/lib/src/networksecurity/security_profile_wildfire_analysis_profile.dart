// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_wildfire_analysis_profile_wildfire_inline_cloud_analysis_rule.dart';
import 'security_profile_wildfire_analysis_profile_wildfire_inline_ml_override.dart';
import 'security_profile_wildfire_analysis_profile_wildfire_inline_ml_setting.dart';
import 'security_profile_wildfire_analysis_profile_wildfire_override.dart';
import 'security_profile_wildfire_analysis_profile_wildfire_submission_rule.dart';
import 'security_profile_wildfire_analysis_profile_wildfire_threat_override.dart';

class SecurityProfileWildfireAnalysisProfile {
  /// The configuration for inline cloud analysis of files.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule>?>? wildfireInlineCloudAnalysisRules;
  /// Defines what action to take for WildFire inline ML threats per protocol.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride>?>? wildfireInlineMlOverrides;
  /// WildFire inline Machine Learning setting for the Security Profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting?>? wildfireInlineMlSetting;
  /// Defines what action to take for WildFire threats per protocol.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireOverride>?>? wildfireOverrides;
  /// Whether to hold the transfer of a file while the WildFire real-time signature cloud performs a signature lookup. Default value is false.
  final pulumi.Input<bool?>? wildfireRealtimeLookup;
  /// The configuration for file submission to WildFire in cloud.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireSubmissionRule>?>? wildfireSubmissionRules;
  /// The configuration for overriding threats actions by threat id match.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileWildfireAnalysisProfileWildfireThreatOverride>?>? wildfireThreatOverrides;

  /// Creates a new [SecurityProfileWildfireAnalysisProfile].
  /// [wildfireInlineCloudAnalysisRules] The configuration for inline cloud analysis of files.
  /// [wildfireInlineMlOverrides] Defines what action to take for WildFire inline ML threats per protocol.
  /// [wildfireInlineMlSetting] WildFire inline Machine Learning setting for the Security Profile.
  /// [wildfireOverrides] Defines what action to take for WildFire threats per protocol.
  /// [wildfireRealtimeLookup] Whether to hold the transfer of a file while the WildFire real-time signature cloud performs a signature lookup. Default value is false.
  /// [wildfireSubmissionRules] The configuration for file submission to WildFire in cloud.
  /// [wildfireThreatOverrides] The configuration for overriding threats actions by threat id match.
  const SecurityProfileWildfireAnalysisProfile({
    this.wildfireInlineCloudAnalysisRules,
    this.wildfireInlineMlOverrides,
    this.wildfireInlineMlSetting,
    this.wildfireOverrides,
    this.wildfireRealtimeLookup,
    this.wildfireSubmissionRules,
    this.wildfireThreatOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wildfireInlineCloudAnalysisRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule>, List<Map<String, dynamic>>>(wildfireInlineCloudAnalysisRules, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wildfireInlineMlOverrides': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride>, List<Map<String, dynamic>>>(wildfireInlineMlOverrides, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wildfireInlineMlSetting': ?pulumi.Input.mapOptionalInputValue<SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting, Map<String, dynamic>>(wildfireInlineMlSetting, (value) => value.toMap()),
      'wildfireOverrides': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireOverride>, List<Map<String, dynamic>>>(wildfireOverrides, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wildfireRealtimeLookup': ?wildfireRealtimeLookup,
      'wildfireSubmissionRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireSubmissionRule>, List<Map<String, dynamic>>>(wildfireSubmissionRules, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireSubmissionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wildfireThreatOverrides': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileWildfireAnalysisProfileWildfireThreatOverride>, List<Map<String, dynamic>>>(wildfireThreatOverrides, (value) => pulumi.Input.encodeList<SecurityProfileWildfireAnalysisProfileWildfireThreatOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityProfileWildfireAnalysisProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfile(
      wildfireInlineCloudAnalysisRules: (() { final guardedValue = map['wildfireInlineCloudAnalysisRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wildfireInlineMlOverrides: (() { final guardedValue = map['wildfireInlineMlOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wildfireInlineMlSetting: (() { final guardedValue = map['wildfireInlineMlSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfileWildfireAnalysisProfileWildfireInlineMlSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wildfireOverrides: (() { final guardedValue = map['wildfireOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireOverride>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wildfireRealtimeLookup: (() { final guardedValue = map['wildfireRealtimeLookup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      wildfireSubmissionRules: (() { final guardedValue = map['wildfireSubmissionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireSubmissionRule>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireSubmissionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wildfireThreatOverrides: (() { final guardedValue = map['wildfireThreatOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileWildfireAnalysisProfileWildfireThreatOverride>(guardedValue, (value) => SecurityProfileWildfireAnalysisProfileWildfireThreatOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
