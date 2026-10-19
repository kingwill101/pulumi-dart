// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactsConfigMethodologyExportOptions {
  /// If true, append the detailed methodology to the final response.
  final pulumi.Input<bool?>? appendMethodology;
  /// Format for methodology export.
  /// Possible values:
  /// MARKDOWN
  /// HTML
  /// PDF
  final pulumi.Input<String?>? exportFormat;
  /// If true, export the detailed methodology as a separate artifact.
  final pulumi.Input<bool?>? exportMethodologyArtifact;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigMethodologyExportOptions].
  /// [appendMethodology] If true, append the detailed methodology to the final response.
  /// [exportFormat] Format for methodology export.
  /// [exportMethodologyArtifact] If true, export the detailed methodology as a separate artifact.
  const AnalystAgentPersonaArtifactsConfigMethodologyExportOptions({
    this.appendMethodology,
    this.exportFormat,
    this.exportMethodologyArtifact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendMethodology': ?appendMethodology,
      'exportFormat': ?exportFormat,
      'exportMethodologyArtifact': ?exportMethodologyArtifact,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigMethodologyExportOptions.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigMethodologyExportOptions(
      appendMethodology: (() { final guardedValue = map['appendMethodology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportFormat: (() { final guardedValue = map['exportFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportMethodologyArtifact: (() { final guardedValue = map['exportMethodologyArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
