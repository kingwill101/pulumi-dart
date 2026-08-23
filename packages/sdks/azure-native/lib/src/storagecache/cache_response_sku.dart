// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU for the cache.
class CacheResponseSku {
  /// SKU name for this cache.
  final pulumi.Input<String>? name;

  /// Creates a new [CacheResponseSku].
  /// [name] SKU name for this cache.
  const CacheResponseSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CacheResponseSku.fromMap(Map<String, dynamic> map) {
    return CacheResponseSku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
