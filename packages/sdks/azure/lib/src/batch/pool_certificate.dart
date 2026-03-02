// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolCertificate {
  /// The ID of the Batch Pool.
  final pulumi.Input<String> id;
  final pulumi.Input<String> storeLocation;
  final pulumi.Input<String>? storeName;
  final pulumi.Input<List<String>>? visibilities;

  /// Creates a new [PoolCertificate].
  /// [id] The ID of the Batch Pool.
  /// [storeLocation] Required.
  /// [storeName] Optional.
  /// [visibilities] Optional.
  PoolCertificate({
    required this.id,
    required this.storeLocation,
    this.storeName,
    this.visibilities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storeLocation': storeLocation,
      'storeName': ?storeName,
      'visibilities': ?visibilities,
    };
  }

  factory PoolCertificate.fromMap(Map<String, dynamic> map) {
    return PoolCertificate(
      id: (map['id'] as String).input(),
      storeLocation: (map['storeLocation'] as String).input(),
      storeName: map['storeName'] == null ? null : (map['storeName']! as String).input(),
      visibilities: map['visibilities'] == null ? null : ((map['visibilities']! as List).cast<String>()).input(),
    );
  }
}

