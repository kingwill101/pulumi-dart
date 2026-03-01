// ignore_for_file: unused_element, unnecessary_cast


class GetServerTypesServerTypeLocation {
  /// Date of the Server Type deprecation announcement.
  final String deprecationAnnounced;
  /// ID of the Location.
  final int id;
  /// Whether the Server Type is deprecated.
  final bool isDeprecated;
  /// Name of the Location.
  final String name;
  /// Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  final String unavailableAfter;

  /// Creates a new [GetServerTypesServerTypeLocation].
  /// [deprecationAnnounced] Date of the Server Type deprecation announcement.
  /// [id] ID of the Location.
  /// [isDeprecated] Whether the Server Type is deprecated.
  /// [name] Name of the Location.
  /// [unavailableAfter] Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  GetServerTypesServerTypeLocation({
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
      deprecationAnnounced: map['deprecationAnnounced'] as String,
      id: map['id'] as int,
      isDeprecated: map['isDeprecated'] as bool,
      name: map['name'] as String,
      unavailableAfter: map['unavailableAfter'] as String,
    );
  }
}

