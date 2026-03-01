// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Service.
  final String name;
  /// The header field value
  final String value;

  /// Creates a new [GetServiceTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run v2 Service.
  /// [value] The header field value
  GetServiceTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetServiceTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerStartupProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

