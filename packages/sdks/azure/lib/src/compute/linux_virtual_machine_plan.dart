// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachinePlan {
  /// Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final pulumi.Input<String> product;
  /// Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;

  /// Creates a new [LinuxVirtualMachinePlan].
  /// [name] Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [product] Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [publisher] Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  const LinuxVirtualMachinePlan({
    required this.name,
    required this.product,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
    };
  }

  factory LinuxVirtualMachinePlan.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachinePlan(
      name: pulumi.Input.fromValue(map['name'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
    );
  }
}
