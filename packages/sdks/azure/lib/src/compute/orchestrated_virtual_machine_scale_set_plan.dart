// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetPlan {
  /// Specifies the name of the image from the marketplace. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specifies the product of the image from the marketplace. Changing this forces a new resource to be created.
  final pulumi.Input<String> product;
  /// Specifies the publisher of the image. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;

  /// Creates a new [OrchestratedVirtualMachineScaleSetPlan].
  /// [name] Specifies the name of the image from the marketplace. Changing this forces a new resource to be created.
  /// [product] Specifies the product of the image from the marketplace. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image. Changing this forces a new resource to be created.
  OrchestratedVirtualMachineScaleSetPlan({
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

  factory OrchestratedVirtualMachineScaleSetPlan.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetPlan(
      name: (map['name'] as String).input(),
      product: (map['product'] as String).input(),
      publisher: (map['publisher'] as String).input(),
    );
  }
}

