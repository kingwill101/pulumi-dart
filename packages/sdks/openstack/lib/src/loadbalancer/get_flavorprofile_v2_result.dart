// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlavorprofileV2.
class GetFlavorprofileV2Result {
  /// Extra data of the flavorprofile depending on the provider.
  final String flavorData;
  final String flavorprofileId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the flavorprofile.
  final String name;
  /// The name of the provider that the flavorprofile uses.
  final String providerName;
  final String region;

  /// Creates a new [GetFlavorprofileV2Result].
  /// [flavorData] Extra data of the flavorprofile depending on the provider.
  /// [flavorprofileId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the flavorprofile.
  /// [providerName] The name of the provider that the flavorprofile uses.
  /// [region] Required.
  GetFlavorprofileV2Result({
    required this.flavorData,
    required this.flavorprofileId,
    required this.id,
    required this.name,
    required this.providerName,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorData': flavorData,
      'flavorprofileId': flavorprofileId,
      'id': id,
      'name': name,
      'providerName': providerName,
      'region': region,
    };
  }

  factory GetFlavorprofileV2Result.fromMap(Map<String, dynamic> map) {
    return GetFlavorprofileV2Result(
      flavorData: map['flavorData'] as String,
      flavorprofileId: map['flavorprofileId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      providerName: map['providerName'] as String,
      region: map['region'] as String,
    );
  }
}

