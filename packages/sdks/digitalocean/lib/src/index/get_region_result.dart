// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegion.
class GetRegionResult {
  /// A boolean value that represents whether new Droplets can be created in this region.
  final bool? available;
  /// A set of features available in this region.
  final List<String>? features;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The display name of the region.
  final String? name;
  /// A set of identifying slugs for the Droplet sizes available in this region.
  final List<String>? sizes;
  /// A human-readable string that is used as a unique identifier for each region.
  final String? slug;

  /// Creates a new [GetRegionResult].
  /// [available] A boolean value that represents whether new Droplets can be created in this region.
  /// [features] A set of features available in this region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The display name of the region.
  /// [sizes] A set of identifying slugs for the Droplet sizes available in this region.
  /// [slug] A human-readable string that is used as a unique identifier for each region.
  const GetRegionResult({
    this.available,
    this.features,
    this.id,
    this.name,
    this.sizes,
    this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': ?available,
      'features': ?features,
      'id': ?id,
      'name': ?name,
      'sizes': ?sizes,
      'slug': ?slug,
    };
  }

  factory GetRegionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionResult(
      available: (() { final guardedValue = map['available']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizes: (() { final guardedValue = map['sizes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      slug: (() { final guardedValue = map['slug']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
