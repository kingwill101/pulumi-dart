// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The header field name
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String>? value;

  /// Creates a new [ServiceTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [name] The header field name
  /// [value] The header field value
  ServiceTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory ServiceTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerStartupProbeHttpGetHttpHeader(
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

