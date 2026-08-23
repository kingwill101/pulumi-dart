// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU for the resource.
class SkuName {
  /// SKU name for this resource.
  final pulumi.Input<String>? name;

  /// Creates a new [SkuName].
  /// [name] SKU name for this resource.
  const SkuName({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuName.fromMap(Map<String, dynamic> map) {
    return SkuName(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
