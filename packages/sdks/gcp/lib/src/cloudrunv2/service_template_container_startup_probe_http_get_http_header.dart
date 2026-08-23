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
  const ServiceTemplateContainerStartupProbeHttpGetHttpHeader({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
