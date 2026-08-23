// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to global communications site.
class EdgeSitesPropertiesGlobalCommunicationsSite {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [EdgeSitesPropertiesGlobalCommunicationsSite].
  /// [id] Resource ID.
  const EdgeSitesPropertiesGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory EdgeSitesPropertiesGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return EdgeSitesPropertiesGlobalCommunicationsSite(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
