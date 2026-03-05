// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetStorageProfileImageReference {
  /// Specifies the ID of the (custom) image to use to create the virtual machine scale set, as in the example below.
  final pulumi.Input<String>? id;
  /// Specifies the offer of the image used to create the virtual machines.
  final pulumi.Input<String>? offer;
  /// Specifies the publisher of the image used to create the virtual machines.
  final pulumi.Input<String>? publisher;
  /// Specifies the SKU of the image used to create the virtual machines.
  final pulumi.Input<String>? sku;
  /// Specifies the version of the image used to create the virtual machines.
  final pulumi.Input<String>? version;

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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

