// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageImageReference {
  /// Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? id;
  /// Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? offer;
  /// Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? publisher;
  /// Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sku;
  /// Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created.
  ///
  /// To provision a Custom Image, the following fields are applicable:
  final pulumi.Input<String?>? version;

  /// Creates a new [VirtualMachineStorageImageReference].
  /// [id] Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [offer] Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [sku] Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created.
  const VirtualMachineStorageImageReference({
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

  factory VirtualMachineStorageImageReference.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageImageReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
