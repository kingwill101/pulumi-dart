// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateContainerLivenessProbeHeader {
  /// The name of the Container App.
  final pulumi.Input<String> name;
  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppTemplateContainerLivenessProbeHeader].
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  const GetAppTemplateContainerLivenessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetAppTemplateContainerLivenessProbeHeader.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerLivenessProbeHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

