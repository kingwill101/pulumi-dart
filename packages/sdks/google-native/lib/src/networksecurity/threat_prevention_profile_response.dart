// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_override_response.dart';
import 'threat_override_response.dart';

/// ThreatPreventionProfile defines an action for specific threat signatures or severity levels.
class ThreatPreventionProfileResponse {
  /// Optional. Configuration for overriding threats actions by severity match.
  final List<SeverityOverrideResponse> severityOverrides;
  /// Optional. Configuration for overriding threats actions by threat_id match. If a threat is matched both by configuration provided in severity_overrides and threat_overrides, the threat_overrides action is applied.
  final List<ThreatOverrideResponse> threatOverrides;

  /// Creates a new [ThreatPreventionProfileResponse].
  /// [severityOverrides] Optional. Configuration for overriding threats actions by severity match.
  /// [threatOverrides] Optional. Configuration for overriding threats actions by threat_id match. If a threat is matched both by configuration provided in severity_overrides and threat_overrides, the threat_overrides action is applied.
  ThreatPreventionProfileResponse({
    required this.severityOverrides,
    required this.threatOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'severityOverrides': pulumi.Input.encodeList<SeverityOverrideResponse, Map<String, dynamic>>(severityOverrides, (value) => value.toMap()),
      'threatOverrides': pulumi.Input.encodeList<ThreatOverrideResponse, Map<String, dynamic>>(threatOverrides, (value) => value.toMap()),
    };
  }

  factory ThreatPreventionProfileResponse.fromMap(Map<String, dynamic> map) {
    return ThreatPreventionProfileResponse(
      severityOverrides: pulumi.Input.decodeList<SeverityOverrideResponse>(map['severityOverrides'], (value) => SeverityOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      threatOverrides: pulumi.Input.decodeList<ThreatOverrideResponse>(map['threatOverrides'], (value) => ThreatOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

