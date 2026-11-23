// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch {
  /// The identifier of the Label Field.
  final pulumi.Input<String> id;
  /// The value of the Label Field to match.
  final pulumi.Input<String> value;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch].
  /// [id] The identifier of the Label Field.
  /// [value] The value of the Label Field to match.
  const PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch({
    required this.id,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'value': value,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoTypeGoogleDriveLabelLabelFieldsToMatch(
      id: pulumi.Input.fromValue(map['id'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
