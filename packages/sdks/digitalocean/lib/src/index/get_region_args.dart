// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_region_get_region_args_doc}
/// Arguments for getRegion.
/// {@endtemplate}
/// {@macro pulumi_index_get_region_get_region_args_doc}
class GetRegionArgs {
  /// A human-readable string that is used as a unique identifier for each region.
  final pulumi.Input<String> slug;

  /// Creates a new [GetRegionArgs].
  /// [slug] A human-readable string that is used as a unique identifier for each region.
  GetRegionArgs({
    required pulumi.Output<String> slug,
  }) :
      slug = pulumi.Input.asInput<String>(slug);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slug': slug,
    };
  }

  factory GetRegionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionArgs(
      slug: pulumi.Output.create<String>(map['slug'] as String),
    );
  }
}

