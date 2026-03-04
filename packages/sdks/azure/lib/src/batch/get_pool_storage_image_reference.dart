// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolStorageImageReference {
  /// The Batch pool ID.
  final pulumi.Input<String> id;
  final pulumi.Input<String> offer;

  /// The name of the extension handler publisher.The name of the extension handler publisher.
  final pulumi.Input<String> publisher;
  final pulumi.Input<String> sku;
  final pulumi.Input<String> version;

  /// Creates a new [GetPoolStorageImageReference].
  /// [id] The Batch pool ID.
  /// [offer] Required.
  /// [publisher] The name of the extension handler publisher.The name of the extension handler publisher.
  /// [sku] Required.
  /// [version] Required.
  GetPoolStorageImageReference({
    required this.id,
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': version,
    };
  }

  factory GetPoolStorageImageReference.fromMap(Map<String, dynamic> map) {
    return GetPoolStorageImageReference(
      id: pulumi.Input.fromValue(map['id'] as String),
      offer: pulumi.Input.fromValue(map['offer'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
