// ignore_for_file: unused_element, unnecessary_cast


class GetSharedImageIdentifier {
  /// The Offer Name for this Shared Image.
  final String offer;
  /// (Optional) The Purchase Plan Publisher for this Gallery Image.
  final String publisher;
  /// The Name of the SKU for this Gallery Image.
  final String sku;

  /// Creates a new [GetSharedImageIdentifier].
  /// [offer] The Offer Name for this Shared Image.
  /// [publisher] (Optional) The Purchase Plan Publisher for this Gallery Image.
  /// [sku] The Name of the SKU for this Gallery Image.
  GetSharedImageIdentifier({
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
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
    );
  }
}

