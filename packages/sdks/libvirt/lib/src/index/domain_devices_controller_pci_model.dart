// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesControllerPciModel {
  /// Specifies the name of the PCI model being used.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesControllerPciModel].
  /// [name] Specifies the name of the PCI model being used.
  DomainDevicesControllerPciModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesControllerPciModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerPciModel(
      name: (map['name'] as String).input(),
    );
  }
}

