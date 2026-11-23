// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel {
  /// The GUID of the sensitivity label.
  final pulumi.Input<String> guid;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel].
  /// [guid] The GUID of the sensitivity label.
  const PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel({
    required this.guid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': guid,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeSensitivityLabel(
      guid: pulumi.Input.fromValue(map['guid'] as String),
    );
  }
}
