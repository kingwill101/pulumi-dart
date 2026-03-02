// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_platform_image_get_platform_image_args_doc}
/// Arguments for getPlatformImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_platform_image_get_platform_image_args_doc}
class GetPlatformImageArgs {
  /// Specifies the Location to pull information about this Platform Image from.
  final pulumi.Input<String> location;
  /// Specifies the Offer associated with the Platform Image.
  final pulumi.Input<String> offer;
  /// Specifies the Publisher associated with the Platform Image.
  final pulumi.Input<String> publisher;
  /// Specifies the SKU of the Platform Image.
  final pulumi.Input<String> sku;
  /// The version of the Platform Image.
  final pulumi.Input<String>? version;

  /// Creates a new [GetPlatformImageArgs].
  /// [location] Specifies the Location to pull information about this Platform Image from.
  /// [offer] Specifies the Offer associated with the Platform Image.
  /// [publisher] Specifies the Publisher associated with the Platform Image.
  /// [sku] Specifies the SKU of the Platform Image.
  /// [version] The version of the Platform Image.
  GetPlatformImageArgs({
    required this.location,
    required this.offer,
    required this.publisher,
    required this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': ?version,
    };
  }

  factory GetPlatformImageArgs.fromMap(Map<String, dynamic> map) {
    return GetPlatformImageArgs(
      location: (map['location'] as String).input(),
      offer: (map['offer'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      sku: (map['sku'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

