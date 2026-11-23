// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactsConfigAuditTrailExportOptions {
  /// If true, append the audit trail to the final response.
  final pulumi.Input<bool?>? appendAuditTrail;
  /// If true, export the audit trail as a separate artifact.
  final pulumi.Input<bool?>? exportAuditTrailArtifact;
  /// Format for audit trail export.
  /// Possible values:
  /// MARKDOWN
  /// HTML
  /// PDF
  final pulumi.Input<String?>? exportFormat;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigAuditTrailExportOptions].
  /// [appendAuditTrail] If true, append the audit trail to the final response.
  /// [exportAuditTrailArtifact] If true, export the audit trail as a separate artifact.
  /// [exportFormat] Format for audit trail export.
  const AnalystAgentPersonaArtifactsConfigAuditTrailExportOptions({
    this.appendAuditTrail,
    this.exportAuditTrailArtifact,
    this.exportFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendAuditTrail': ?appendAuditTrail,
      'exportAuditTrailArtifact': ?exportAuditTrailArtifact,
      'exportFormat': ?exportFormat,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigAuditTrailExportOptions.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigAuditTrailExportOptions(
      appendAuditTrail: (() { final guardedValue = map['appendAuditTrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportAuditTrailArtifact: (() { final guardedValue = map['exportAuditTrailArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportFormat: (() { final guardedValue = map['exportFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
