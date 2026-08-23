// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetSourceImageReference {
  /// Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final pulumi.Input<String> offer;
  /// Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// Specifies the SKU of the image used to create the virtual machines.
  final pulumi.Input<String> sku;
  /// Specifies the version of the image used to create the virtual machines.
  final pulumi.Input<String> version;

  /// Creates a new [LinuxVirtualMachineScaleSetSourceImageReference].
  /// [offer] Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [sku] Specifies the SKU of the image used to create the virtual machines.
  /// [version] Specifies the version of the image used to create the virtual machines.
  const LinuxVirtualMachineScaleSetSourceImageReference({
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

  factory LinuxVirtualMachineScaleSetSourceImageReference.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetSourceImageReference(
      offer: pulumi.Input.fromValue(map['offer'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
