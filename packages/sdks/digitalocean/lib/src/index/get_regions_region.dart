// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsRegion {
  /// A boolean value that represents whether new Droplets can be created in this region.
  final pulumi.Input<bool> available;
  /// A set of features available in this region.
  final pulumi.Input<List<String>> features;
  /// The display name of the region.
  final pulumi.Input<String> name;
  /// A set of identifying slugs for the Droplet sizes available in this region.
  final pulumi.Input<List<String>> sizes;
  /// A human-readable string that is used as a unique identifier for each region.
  final pulumi.Input<String> slug;

  /// Creates a new [GetRegionsRegion].
  /// [available] A boolean value that represents whether new Droplets can be created in this region.
  /// [features] A set of features available in this region.
  /// [name] The display name of the region.
  /// [sizes] A set of identifying slugs for the Droplet sizes available in this region.
  /// [slug] A human-readable string that is used as a unique identifier for each region.
  GetRegionsRegion({
    required this.available,
    required this.features,
    required this.name,
    required this.sizes,
    required this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'features': features,
      'name': name,
      'sizes': sizes,
      'slug': slug,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      available: (map['available'] as bool).input(),
      features: ((map['features'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      sizes: ((map['sizes'] as List).cast<String>()).input(),
      slug: (map['slug'] as String).input(),
    );
  }
}

