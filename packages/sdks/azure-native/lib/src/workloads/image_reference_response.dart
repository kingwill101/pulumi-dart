// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations. NOTE: Image reference publisher and offer can only be set when you create the scale set.
class ImageReferenceResponse {
  /// Specifies the ARM resource ID of the Azure Compute Gallery image version used for creating ACSS VMs. You will need to provide this input when you choose to deploy virtual machines in ACSS with OS image from the Azure Compute gallery.
  final pulumi.Input<String>? id;
  /// Specifies the offer of the platform image or marketplace image used to create the virtual machine.
  final pulumi.Input<String>? offer;
  /// The image publisher.
  final pulumi.Input<String>? publisher;
  /// The image SKU.
  final pulumi.Input<String>? sku;
  /// Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageReferenceResponse].
  /// [id] Specifies the ARM resource ID of the Azure Compute Gallery image version used for creating ACSS VMs. You will need to provide this input when you choose to deploy virtual machines in ACSS with OS image from the Azure Compute gallery.
  /// [offer] Specifies the offer of the platform image or marketplace image used to create the virtual machine.
  /// [publisher] The image publisher.
  /// [sku] The image SKU.
  /// [version] Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available.
  ImageReferenceResponse({
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

  factory ImageReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageReferenceResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

