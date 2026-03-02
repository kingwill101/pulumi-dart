// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateContainerStartupProbeHeader {
  /// The HTTP Header Name.
  final pulumi.Input<String> name;
  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [JobTemplateContainerStartupProbeHeader].
  /// [name] The HTTP Header Name.
  /// [value] The HTTP Header value.
  JobTemplateContainerStartupProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory JobTemplateContainerStartupProbeHeader.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerStartupProbeHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

