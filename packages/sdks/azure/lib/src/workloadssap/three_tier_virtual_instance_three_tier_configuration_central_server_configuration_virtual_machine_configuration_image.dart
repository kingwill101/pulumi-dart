// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage {
  /// Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> offer;
  /// The publisher of the Image. Possible values are `RedHat` and `SUSE`. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// The SKU of the Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;
  /// Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage].
  /// [offer] Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [publisher] The publisher of the Image. Possible values are `RedHat` and `SUSE`. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Image. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage({
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

  factory ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage(
      offer: (map['offer'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      sku: (map['sku'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

