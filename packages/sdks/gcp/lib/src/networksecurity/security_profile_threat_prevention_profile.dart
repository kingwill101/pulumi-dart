// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_threat_prevention_profile_antivirus_override.dart';
import 'security_profile_threat_prevention_profile_severity_override.dart';
import 'security_profile_threat_prevention_profile_threat_override.dart';

class SecurityProfileThreatPreventionProfile {
  /// Defines what action to take for antivirus threats per protocol.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileThreatPreventionProfileAntivirusOverride>>? antivirusOverrides;
  /// The configuration for overriding threats actions by severity match.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileThreatPreventionProfileSeverityOverride>>? severityOverrides;
  /// The configuration for overriding threats actions by threat id match.
  /// If a threat is matched both by configuration provided in severity overrides
  /// and threat overrides, the threat overrides action is applied.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileThreatPreventionProfileThreatOverride>>? threatOverrides;

  /// Creates a new [SecurityProfileThreatPreventionProfile].
  /// [antivirusOverrides] Defines what action to take for antivirus threats per protocol.
  /// [severityOverrides] The configuration for overriding threats actions by severity match.
  /// [threatOverrides] The configuration for overriding threats actions by threat id match.
  SecurityProfileThreatPreventionProfile({
    this.antivirusOverrides,
    this.severityOverrides,
    this.threatOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antivirusOverrides': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileThreatPreventionProfileAntivirusOverride>, List<Map<String, dynamic>>>(antivirusOverrides, (value) => pulumi.Input.encodeList<SecurityProfileThreatPreventionProfileAntivirusOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severityOverrides': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileThreatPreventionProfileSeverityOverride>, List<Map<String, dynamic>>>(severityOverrides, (value) => pulumi.Input.encodeList<SecurityProfileThreatPreventionProfileSeverityOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threatOverrides': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileThreatPreventionProfileThreatOverride>, List<Map<String, dynamic>>>(threatOverrides, (value) => pulumi.Input.encodeList<SecurityProfileThreatPreventionProfileThreatOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityProfileThreatPreventionProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfileThreatPreventionProfile(
      antivirusOverrides: map['antivirusOverrides'] == null ? null : (pulumi.Input.decodeList<SecurityProfileThreatPreventionProfileAntivirusOverride>(map['antivirusOverrides']!, (value) => SecurityProfileThreatPreventionProfileAntivirusOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      severityOverrides: map['severityOverrides'] == null ? null : (pulumi.Input.decodeList<SecurityProfileThreatPreventionProfileSeverityOverride>(map['severityOverrides']!, (value) => SecurityProfileThreatPreventionProfileSeverityOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      threatOverrides: map['threatOverrides'] == null ? null : (pulumi.Input.decodeList<SecurityProfileThreatPreventionProfileThreatOverride>(map['threatOverrides']!, (value) => SecurityProfileThreatPreventionProfileThreatOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

