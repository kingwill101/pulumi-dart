// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImage {
  /// Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> offer;
  /// The publisher of the Image. Possible values are `RedHat` and `SUSE`. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// The SKU of the Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;
  /// Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImage].
  /// [offer] Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [publisher] The publisher of the Image. Possible values are `RedHat` and `SUSE`. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Image. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImage({
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

  factory ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImage.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfigurationImage(
      offer: pulumi.Input.fromValue(map['offer'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

