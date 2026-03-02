// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedImageIdentifier {
  /// The Offer Name for this Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> offer;
  /// The Publisher Name for this Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// The Name of the SKU for this Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;

  /// Creates a new [SharedImageIdentifier].
  /// [offer] The Offer Name for this Shared Image. Changing this forces a new resource to be created.
  /// [publisher] The Publisher Name for this Gallery Image. Changing this forces a new resource to be created.
  /// [sku] The Name of the SKU for this Gallery Image. Changing this forces a new resource to be created.
  SharedImageIdentifier({
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

  factory SharedImageIdentifier.fromMap(Map<String, dynamic> map) {
    return SharedImageIdentifier(
      offer: (map['offer'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      sku: (map['sku'] as String).input(),
    );
  }
}

