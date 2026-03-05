// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an incident label
class IncidentLabel {
  /// The name of the label
  final pulumi.Input<String> labelName;

  /// Creates a new [IncidentLabel].
  /// [labelName] The name of the label
  IncidentLabel({
    required this.labelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': labelName,
    };
  }

  factory IncidentLabel.fromMap(Map<String, dynamic> map) {
    return IncidentLabel(
      labelName: pulumi.Input.fromValue(map['labelName'] as String),
    );
  }
}

