// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolCertificate {
  /// The Batch pool ID.
  final pulumi.Input<String> id;
  final pulumi.Input<String> storeLocation;
  final pulumi.Input<String> storeName;
  final pulumi.Input<List<String>> visibilities;

  /// Creates a new [GetPoolCertificate].
  /// [id] The Batch pool ID.
  /// [storeLocation] Required.
  /// [storeName] Required.
  /// [visibilities] Required.
  GetPoolCertificate({
    required this.id,
    required this.storeLocation,
    required this.storeName,
    required this.visibilities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storeLocation': storeLocation,
      'storeName': storeName,
      'visibilities': visibilities,
    };
  }

  factory GetPoolCertificate.fromMap(Map<String, dynamic> map) {
    return GetPoolCertificate(
      id: (map['id'] as String).input(),
      storeLocation: (map['storeLocation'] as String).input(),
      storeName: (map['storeName'] as String).input(),
      visibilities: ((map['visibilities'] as List).cast<String>()).input(),
    );
  }
}

