// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type_file_label_info_type_google_drive_label.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_file_label_info_type_sensitivity_label.dart';

class PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType {
  /// Google Drive labels published by Google.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel?>? googleDriveLabel;
  /// Sensitivity labels published by Microsoft.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel?>? sensitivityLabel;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType].
  /// [googleDriveLabel] Google Drive labels published by Google.
  /// [sensitivityLabel] Sensitivity labels published by Microsoft.
  const PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType({
    this.googleDriveLabel,
    this.sensitivityLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleDriveLabel': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel, Map<String, dynamic>>(googleDriveLabel, (value) => value.toMap()),
      'sensitivityLabel': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel, Map<String, dynamic>>(sensitivityLabel, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType(
      googleDriveLabel: (() { final guardedValue = map['googleDriveLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityLabel: (() { final guardedValue = map['sensitivityLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
