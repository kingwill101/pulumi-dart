// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateContainerLivenessProbeHeader {
  /// The HTTP Header Name.
  final pulumi.Input<String> name;
  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [AppTemplateContainerLivenessProbeHeader].
  /// [name] The HTTP Header Name.
  /// [value] The HTTP Header value.
  const AppTemplateContainerLivenessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AppTemplateContainerLivenessProbeHeader.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerLivenessProbeHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

