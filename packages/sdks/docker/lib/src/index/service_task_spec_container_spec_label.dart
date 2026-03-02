// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecLabel {
  /// Name of the label
  final pulumi.Input<String> label;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [ServiceTaskSpecContainerSpecLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  ServiceTaskSpecContainerSpecLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ServiceTaskSpecContainerSpecLabel.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecLabel(
      label: (map['label'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

