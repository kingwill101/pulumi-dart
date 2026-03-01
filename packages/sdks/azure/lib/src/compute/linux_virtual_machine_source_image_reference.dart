// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineSourceImageReference {
  /// Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String offer;
  /// Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String publisher;
  /// Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String sku;
  /// Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String version;

  /// Creates a new [LinuxVirtualMachineSourceImageReference].
  /// [offer] Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [sku] Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created.
  LinuxVirtualMachineSourceImageReference({
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

  factory LinuxVirtualMachineSourceImageReference.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineSourceImageReference(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

