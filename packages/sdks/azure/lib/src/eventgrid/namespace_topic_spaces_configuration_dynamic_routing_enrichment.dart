// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment {
  /// The enrichment key.
  final pulumi.Input<String> key;
  /// The enrichment value.
  final pulumi.Input<String> value;

  /// Creates a new [NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment].
  /// [key] The enrichment key.
  /// [value] The enrichment value.
  const NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

