// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to global communications site.
class EdgeSitesPropertiesResponseGlobalCommunicationsSite {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [EdgeSitesPropertiesResponseGlobalCommunicationsSite].
  /// [id] Resource ID.
  EdgeSitesPropertiesResponseGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory EdgeSitesPropertiesResponseGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return EdgeSitesPropertiesResponseGlobalCommunicationsSite(
      id: (map['id'] as String).input(),
    );
  }
}

