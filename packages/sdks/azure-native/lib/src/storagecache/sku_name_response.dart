// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU for the resource.
class SkuNameResponse {
  /// SKU name for this resource.
  final pulumi.Input<String>? name;

  /// Creates a new [SkuNameResponse].
  /// [name] SKU name for this resource.
  SkuNameResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuNameResponse.fromMap(Map<String, dynamic> map) {
    return SkuNameResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

