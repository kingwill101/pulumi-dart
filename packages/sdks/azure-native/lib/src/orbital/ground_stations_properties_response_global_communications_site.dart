// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to global communications site.
class GroundStationsPropertiesResponseGlobalCommunicationsSite {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [GroundStationsPropertiesResponseGlobalCommunicationsSite].
  /// [id] Resource ID.
  GroundStationsPropertiesResponseGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GroundStationsPropertiesResponseGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return GroundStationsPropertiesResponseGlobalCommunicationsSite(
      id: (map['id'] as String).input(),
    );
  }
}

