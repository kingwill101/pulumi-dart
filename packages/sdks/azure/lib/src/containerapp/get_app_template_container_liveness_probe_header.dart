// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateContainerLivenessProbeHeader {
  /// The name of the Container App.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [GetAppTemplateContainerLivenessProbeHeader].
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  GetAppTemplateContainerLivenessProbeHeader({
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
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

