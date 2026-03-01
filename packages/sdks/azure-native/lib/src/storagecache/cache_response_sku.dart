// ignore_for_file: unused_element, unnecessary_cast


/// SKU for the cache.
class CacheResponseSku {
  /// SKU name for this cache.
  final String? name;

  /// Creates a new [CacheResponseSku].
  /// [name] SKU name for this cache.
  CacheResponseSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CacheResponseSku.fromMap(Map<String, dynamic> map) {
    return CacheResponseSku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

