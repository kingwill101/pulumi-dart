// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a Redis Enterprise cluster SKU.
class SkuDetailsResponse {
  /// The name of the SKU.
  final pulumi.Input<String> name;
  /// The cache size in GB.
  final pulumi.Input<double> sizeInGB;

  /// Creates a new [SkuDetailsResponse].
  /// [name] The name of the SKU.
  /// [sizeInGB] The cache size in GB.
  const SkuDetailsResponse({
    required this.name,
    required this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sizeInGB': sizeInGB,
    };
  }

  factory SkuDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SkuDetailsResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      sizeInGB: pulumi.Input.fromValue(map['sizeInGB'] as double),
    );
  }
}

