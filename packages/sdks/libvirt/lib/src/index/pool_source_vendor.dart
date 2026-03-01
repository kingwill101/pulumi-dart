// ignore_for_file: unused_element, unnecessary_cast


class PoolSourceVendor {
  /// Configures the name attribute for the vendor related to the storage source.
  final String name;

  /// Creates a new [PoolSourceVendor].
  /// [name] Configures the name attribute for the vendor related to the storage source.
  PoolSourceVendor({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PoolSourceVendor.fromMap(Map<String, dynamic> map) {
    return PoolSourceVendor(
      name: map['name'] as String,
    );
  }
}

