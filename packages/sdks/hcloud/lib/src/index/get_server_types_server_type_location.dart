// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerTypesServerTypeLocation {
  /// Date of the Server Type deprecation announcement.
  final pulumi.Input<String> deprecationAnnounced;
  /// ID of the Location.
  final pulumi.Input<int> id;
  /// Whether the Server Type is deprecated.
  final pulumi.Input<bool> isDeprecated;
  /// Name of the Location.
  final pulumi.Input<String> name;
  /// Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  final pulumi.Input<String> unavailableAfter;

  /// Creates a new [GetServerTypesServerTypeLocation].
  /// [deprecationAnnounced] Date of the Server Type deprecation announcement.
  /// [id] ID of the Location.
  /// [isDeprecated] Whether the Server Type is deprecated.
  /// [name] Name of the Location.
  /// [unavailableAfter] Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  const GetServerTypesServerTypeLocation({
    required this.deprecationAnnounced,
    required this.id,
    required this.isDeprecated,
    required this.name,
    required this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecationAnnounced': deprecationAnnounced,
      'id': id,
      'isDeprecated': isDeprecated,
      'name': name,
      'unavailableAfter': unavailableAfter,
    };
  }

  factory GetServerTypesServerTypeLocation.fromMap(Map<String, dynamic> map) {
    return GetServerTypesServerTypeLocation(
      deprecationAnnounced: pulumi.Input.fromValue(map['deprecationAnnounced'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      isDeprecated: pulumi.Input.fromValue(map['isDeprecated'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      unavailableAfter: pulumi.Input.fromValue(map['unavailableAfter'] as String),
    );
  }
}

