// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegion.
class GetRegionResult {
  /// A boolean value that represents whether new Droplets can be created in this region.
  final bool available;

  /// A set of features available in this region.
  final List<String> features;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The display name of the region.
  final String name;

  /// A set of identifying slugs for the Droplet sizes available in this region.
  final List<String> sizes;

  /// A human-readable string that is used as a unique identifier for each region.
  final String slug;

  /// Creates a new [GetRegionResult].
  /// [available] A boolean value that represents whether new Droplets can be created in this region.
  /// [features] A set of features available in this region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The display name of the region.
  /// [sizes] A set of identifying slugs for the Droplet sizes available in this region.
  /// [slug] A human-readable string that is used as a unique identifier for each region.
  GetRegionResult({
    required this.available,
    required this.features,
    required this.id,
    required this.name,
    required this.sizes,
    required this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'features': features,
      'id': id,
      'name': name,
      'sizes': sizes,
      'slug': slug,
    };
  }

  factory GetRegionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionResult(
      available: map['available'] as bool,
      features: (map['features'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      sizes: (map['sizes'] as List).cast<String>(),
      slug: map['slug'] as String,
    );
  }
}
