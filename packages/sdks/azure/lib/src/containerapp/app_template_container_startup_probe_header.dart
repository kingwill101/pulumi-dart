// ignore_for_file: unused_element, unnecessary_cast


class AppTemplateContainerStartupProbeHeader {
  /// The HTTP Header Name.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [AppTemplateContainerStartupProbeHeader].
  /// [name] The HTTP Header Name.
  /// [value] The HTTP Header value.
  AppTemplateContainerStartupProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AppTemplateContainerStartupProbeHeader.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerStartupProbeHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

