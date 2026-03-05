// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NamespaceTopicSpacesConfigurationStaticRoutingEnrichment {
  /// The enrichment key.
  final pulumi.Input<String> key;
  /// The enrichment value.
  final pulumi.Input<String> value;

  /// Creates a new [NamespaceTopicSpacesConfigurationStaticRoutingEnrichment].
  /// [key] The enrichment key.
  /// [value] The enrichment value.
  NamespaceTopicSpacesConfigurationStaticRoutingEnrichment({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory NamespaceTopicSpacesConfigurationStaticRoutingEnrichment.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicSpacesConfigurationStaticRoutingEnrichment(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

