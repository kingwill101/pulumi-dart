// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a container label.
class ContainerLabelResponse {
  /// The name of the container label.
  final pulumi.Input<String> name;

  /// The value of the container label.
  final pulumi.Input<String> value;

  /// Creates a new [ContainerLabelResponse].
  /// [name] The name of the container label.
  /// [value] The value of the container label.
  ContainerLabelResponse({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ContainerLabelResponse.fromMap(Map<String, dynamic> map) {
    return ContainerLabelResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
