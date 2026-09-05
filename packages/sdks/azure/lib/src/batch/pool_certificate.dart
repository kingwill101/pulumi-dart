// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolCertificate {
  /// The ID of the Batch Pool.
  final pulumi.Input<String> id;
  final pulumi.Input<String> storeLocation;
  final pulumi.Input<String?>? storeName;
  final pulumi.Input<List<String>?>? visibilities;

  /// Creates a new [PoolCertificate].
  /// [id] The ID of the Batch Pool.
  /// [storeLocation] Required.
  /// [storeName] Optional.
  /// [visibilities] Optional.
  const PoolCertificate({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      storeLocation: pulumi.Input.fromValue(map['storeLocation'] as String),
      storeName: (() { final guardedValue = map['storeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibilities: (() { final guardedValue = map['visibilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
