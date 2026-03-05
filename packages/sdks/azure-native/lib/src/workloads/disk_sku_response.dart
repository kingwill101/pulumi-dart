// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
class DiskSkuResponse {
  /// Defines the disk sku name.
  final pulumi.Input<String>? name;

  /// Creates a new [DiskSkuResponse].
  /// [name] Defines the disk sku name.
  DiskSkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DiskSkuResponse.fromMap(Map<String, dynamic> map) {
    return DiskSkuResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

