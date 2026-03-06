// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_override.dart';
import 'threat_override.dart';

/// ThreatPreventionProfile defines an action for specific threat signatures or severity levels.
class ThreatPreventionProfile {
  /// Optional. Configuration for overriding threats actions by severity match.
  final pulumi.Input<List<SeverityOverride>>? severityOverrides;
  /// Optional. Configuration for overriding threats actions by threat_id match. If a threat is matched both by configuration provided in severity_overrides and threat_overrides, the threat_overrides action is applied.
  final pulumi.Input<List<ThreatOverride>>? threatOverrides;

  /// Creates a new [ThreatPreventionProfile].
  /// [severityOverrides] Optional. Configuration for overriding threats actions by severity match.
  /// [threatOverrides] Optional. Configuration for overriding threats actions by threat_id match. If a threat is matched both by configuration provided in severity_overrides and threat_overrides, the threat_overrides action is applied.
  const ThreatPreventionProfile({
    this.severityOverrides,
    this.threatOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'severityOverrides': ?pulumi.Input.mapOptionalInputValue<List<SeverityOverride>, List<Map<String, dynamic>>>(severityOverrides, (value) => pulumi.Input.encodeList<SeverityOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threatOverrides': ?pulumi.Input.mapOptionalInputValue<List<ThreatOverride>, List<Map<String, dynamic>>>(threatOverrides, (value) => pulumi.Input.encodeList<ThreatOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThreatPreventionProfile.fromMap(Map<String, dynamic> map) {
    return ThreatPreventionProfile(
      severityOverrides: (() { final guardedValue = map['severityOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SeverityOverride>(guardedValue, (value) => SeverityOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      threatOverrides: (() { final guardedValue = map['threatOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatOverride>(guardedValue, (value) => ThreatOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

