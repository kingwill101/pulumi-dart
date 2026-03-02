// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineGalleryImageReference {
  /// The Offer of the Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> offer;
  /// The Publisher of the Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// The SKU of the Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;
  /// The Version of the Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [LinuxVirtualMachineGalleryImageReference].
  /// [offer] The Offer of the Gallery Image. Changing this forces a new resource to be created.
  /// [publisher] The Publisher of the Gallery Image. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Gallery Image. Changing this forces a new resource to be created.
  /// [version] The Version of the Gallery Image. Changing this forces a new resource to be created.
  LinuxVirtualMachineGalleryImageReference({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': version,
    };
  }

  factory LinuxVirtualMachineGalleryImageReference.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineGalleryImageReference(
      offer: (map['offer'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      sku: (map['sku'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

