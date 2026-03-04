// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateContainerReadinessProbeHeader {
  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppTemplateContainerReadinessProbeHeader].
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  GetAppTemplateContainerReadinessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetAppTemplateContainerReadinessProbeHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppTemplateContainerReadinessProbeHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
