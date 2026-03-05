// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlavorV2.
class GetFlavorV2Result {
  /// The description of the flavor.
  final String description;
  /// Is the flavor enabled.
  final bool enabled;
  /// The ID of the flavor.
  final String flavorId;
  /// The ID of the flavor profile.
  final String flavorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the flavor.
  final String name;
  final String region;

  /// Creates a new [GetFlavorV2Result].
  /// [description] The description of the flavor.
  /// [enabled] Is the flavor enabled.
  /// [flavorId] The ID of the flavor.
  /// [flavorProfileId] The ID of the flavor profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the flavor.
  /// [region] Required.
  GetFlavorV2Result({
    required this.description,
    required this.enabled,
    required this.flavorId,
    required this.flavorProfileId,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'flavorId': flavorId,
      'flavorProfileId': flavorProfileId,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetFlavorV2Result.fromMap(Map<String, dynamic> map) {
    return GetFlavorV2Result(
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      flavorId: map['flavorId'] as String,
      flavorProfileId: map['flavorProfileId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

