// ignore_for_file: unused_element, unnecessary_cast


class NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment {
  /// The enrichment key.
  final String key;
  /// The enrichment value.
  final String value;

  /// Creates a new [NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment].
  /// [key] The enrichment key.
  /// [value] The enrichment value.
  NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

