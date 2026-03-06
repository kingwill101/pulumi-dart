// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an incident label
class IncidentLabelResponse {
  /// The name of the label
  final pulumi.Input<String> labelName;
  /// The type of the label
  final pulumi.Input<String> labelType;

  /// Creates a new [IncidentLabelResponse].
  /// [labelName] The name of the label
  /// [labelType] The type of the label
  const IncidentLabelResponse({
    required this.labelName,
    required this.labelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': labelName,
      'labelType': labelType,
    };
  }

  factory IncidentLabelResponse.fromMap(Map<String, dynamic> map) {
    return IncidentLabelResponse(
      labelName: pulumi.Input.fromValue(map['labelName'] as String),
      labelType: pulumi.Input.fromValue(map['labelType'] as String),
    );
  }
}

