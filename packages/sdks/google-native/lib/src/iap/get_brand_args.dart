// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_get_brand_args_doc}
/// Arguments for getBrand.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_get_brand_args_doc}
class GetBrandArgs {
  final pulumi.Input<String> brandId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBrandArgs].
  /// [brandId] Required.
  /// [project] Optional.
  GetBrandArgs({
    required this.brandId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brandId': brandId,
      'project': ?project,
    };
  }

  factory GetBrandArgs.fromMap(Map<String, dynamic> map) {
    return GetBrandArgs(
      brandId: (map['brandId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

