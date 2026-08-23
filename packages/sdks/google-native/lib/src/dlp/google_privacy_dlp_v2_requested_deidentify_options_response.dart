// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_template_response.dart';

/// De-identification options.
class GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse {
  /// Snapshot of the state of the `DeidentifyTemplate` from the Deidentify action at the time this job was run.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyTemplateResponse> snapshotDeidentifyTemplate;
  /// Snapshot of the state of the image transformation `DeidentifyTemplate` from the `Deidentify` action at the time this job was run.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyTemplateResponse> snapshotImageRedactTemplate;
  /// Snapshot of the state of the structured `DeidentifyTemplate` from the `Deidentify` action at the time this job was run.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyTemplateResponse> snapshotStructuredDeidentifyTemplate;

  /// Creates a new [GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse].
  /// [snapshotDeidentifyTemplate] Snapshot of the state of the `DeidentifyTemplate` from the Deidentify action at the time this job was run.
  /// [snapshotImageRedactTemplate] Snapshot of the state of the image transformation `DeidentifyTemplate` from the `Deidentify` action at the time this job was run.
  /// [snapshotStructuredDeidentifyTemplate] Snapshot of the state of the structured `DeidentifyTemplate` from the `Deidentify` action at the time this job was run.
  const GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse({
    required this.snapshotDeidentifyTemplate,
    required this.snapshotImageRedactTemplate,
    required this.snapshotStructuredDeidentifyTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotDeidentifyTemplate': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyTemplateResponse, Map<String, dynamic>>(snapshotDeidentifyTemplate, (value) => value.toMap()),
      'snapshotImageRedactTemplate': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyTemplateResponse, Map<String, dynamic>>(snapshotImageRedactTemplate, (value) => value.toMap()),
      'snapshotStructuredDeidentifyTemplate': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyTemplateResponse, Map<String, dynamic>>(snapshotStructuredDeidentifyTemplate, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse(
      snapshotDeidentifyTemplate: pulumi.Input.fromValue(GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap((map['snapshotDeidentifyTemplate']! as Map).cast<String, dynamic>())),
      snapshotImageRedactTemplate: pulumi.Input.fromValue(GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap((map['snapshotImageRedactTemplate']! as Map).cast<String, dynamic>())),
      snapshotStructuredDeidentifyTemplate: pulumi.Input.fromValue(GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap((map['snapshotStructuredDeidentifyTemplate']! as Map).cast<String, dynamic>())),
    );
  }
}
