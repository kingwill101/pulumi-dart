// ignore_for_file: unused_element, unnecessary_cast


/// The type of disk sku. For example, Standard_LRS, Standard_ZRS, Premium_LRS, Premium_ZRS.
class DiskSku {
  /// Defines the disk sku name.
  final String? name;

  /// Creates a new [DiskSku].
  /// [name] Defines the disk sku name.
  DiskSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DiskSku.fromMap(Map<String, dynamic> map) {
    return DiskSku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

