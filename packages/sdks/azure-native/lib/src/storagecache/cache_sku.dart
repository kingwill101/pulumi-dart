// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU for the cache.
class CacheSku {
  /// SKU name for this cache.
  final pulumi.Input<String>? name;

  /// Creates a new [CacheSku].
  /// [name] SKU name for this cache.
  CacheSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CacheSku.fromMap(Map<String, dynamic> map) {
    return CacheSku(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

