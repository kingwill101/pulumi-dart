// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSharedImageIdentifier {
  /// The Offer Name for this Shared Image.
  final pulumi.Input<String> offer;
  /// (Optional) The Purchase Plan Publisher for this Gallery Image.
  final pulumi.Input<String> publisher;
  /// The Name of the SKU for this Gallery Image.
  final pulumi.Input<String> sku;

  /// Creates a new [GetSharedImageIdentifier].
  /// [offer] The Offer Name for this Shared Image.
  /// [publisher] (Optional) The Purchase Plan Publisher for this Gallery Image.
  /// [sku] The Name of the SKU for this Gallery Image.
  const GetSharedImageIdentifier({
    required this.offer,
    required this.publisher,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
    };
  }

  factory GetSharedImageIdentifier.fromMap(Map<String, dynamic> map) {
    return GetSharedImageIdentifier(
      offer: pulumi.Input.fromValue(map['offer'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
    );
  }
}

