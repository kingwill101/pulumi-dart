// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type_file_label_info_type_google_drive_label_label_fields_to_match.dart';

class PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel {
  /// The field values of the Google Drive label to match.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch>?>? labelFieldsToMatches;
  /// The label ID of the Google Drive label.
  final pulumi.Input<String> labelId;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel].
  /// [labelFieldsToMatches] The field values of the Google Drive label to match.
  /// [labelId] The label ID of the Google Drive label.
  const PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel({
    this.labelFieldsToMatches,
    required this.labelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelFieldsToMatches': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch>, List<Map<String, dynamic>>>(labelFieldsToMatches, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelId': labelId,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel(
      labelFieldsToMatches: (() { final guardedValue = map['labelFieldsToMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch>(guardedValue, (value) => PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labelId: pulumi.Input.fromValue(map['labelId'] as String),
    );
  }
}
