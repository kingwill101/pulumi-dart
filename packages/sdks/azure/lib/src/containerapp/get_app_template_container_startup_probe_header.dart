// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateContainerStartupProbeHeader {
  /// The name of the Container App.
  final pulumi.Input<String> name;
  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppTemplateContainerStartupProbeHeader].
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  const GetAppTemplateContainerStartupProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetAppTemplateContainerStartupProbeHeader.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerStartupProbeHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

