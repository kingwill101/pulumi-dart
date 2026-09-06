// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
class DiskSku {
  /// Defines the disk sku name.
  final pulumi.Input<dynamic>? name;

  /// Creates a new [DiskSku].
  /// [name] Defines the disk sku name.
  const DiskSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DiskSku.fromMap(Map<String, dynamic> map) {
    return DiskSku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
