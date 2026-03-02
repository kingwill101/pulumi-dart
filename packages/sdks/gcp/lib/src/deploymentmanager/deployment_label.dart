// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentLabel {
  /// Key for label.
  final pulumi.Input<String>? key;
  /// Value of label.
  final pulumi.Input<String>? value;

  /// Creates a new [DeploymentLabel].
  /// [key] Key for label.
  /// [value] Value of label.
  DeploymentLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DeploymentLabel.fromMap(Map<String, dynamic> map) {
    return DeploymentLabel(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

