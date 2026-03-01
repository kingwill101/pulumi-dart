// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetStorageProfileImageReference {
  /// Specifies the ID of the (custom) image to use to create the virtual machine scale set, as in the example below.
  final String? id;
  /// Specifies the offer of the image used to create the virtual machines.
  final String? offer;
  /// Specifies the publisher of the image used to create the virtual machines.
  final String? publisher;
  /// Specifies the SKU of the image used to create the virtual machines.
  final String? sku;
  /// Specifies the version of the image used to create the virtual machines.
  final String? version;

  /// Creates a new [ScaleSetStorageProfileImageReference].
  /// [id] Specifies the ID of the (custom) image to use to create the virtual machine scale set, as in the example below.
  /// [offer] Specifies the offer of the image used to create the virtual machines.
  /// [publisher] Specifies the publisher of the image used to create the virtual machines.
  /// [sku] Specifies the SKU of the image used to create the virtual machines.
  /// [version] Specifies the version of the image used to create the virtual machines.
  ScaleSetStorageProfileImageReference({
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory ScaleSetStorageProfileImageReference.fromMap(Map<String, dynamic> map) {
    return ScaleSetStorageProfileImageReference(
      id: map['id'] == null ? null : map['id'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

