// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateContainerReadinessProbeHeader {
  /// The name of the Container App.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [GetAppTemplateContainerReadinessProbeHeader].
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  GetAppTemplateContainerReadinessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetAppTemplateContainerReadinessProbeHeader.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerReadinessProbeHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

