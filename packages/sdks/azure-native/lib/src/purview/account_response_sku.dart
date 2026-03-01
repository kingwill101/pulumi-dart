// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the Sku.
class AccountResponseSku {
  /// Gets or sets the sku capacity.
  final int? capacity;
  /// Gets or sets the sku name.
  final String? name;

  /// Creates a new [AccountResponseSku].
  /// [capacity] Gets or sets the sku capacity.
  /// [name] Gets or sets the sku name.
  AccountResponseSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory AccountResponseSku.fromMap(Map<String, dynamic> map) {
    return AccountResponseSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

