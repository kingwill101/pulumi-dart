// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateContainerReadinessProbeHeader {
  /// The HTTP Header Name.
  final pulumi.Input<String> name;
  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [AppTemplateContainerReadinessProbeHeader].
  /// [name] The HTTP Header Name.
  /// [value] The HTTP Header value.
  AppTemplateContainerReadinessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AppTemplateContainerReadinessProbeHeader.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerReadinessProbeHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

