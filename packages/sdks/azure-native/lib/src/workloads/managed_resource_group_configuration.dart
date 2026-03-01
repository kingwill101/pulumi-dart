// ignore_for_file: unused_element, unnecessary_cast


/// Managed resource group configuration
class ManagedResourceGroupConfiguration {
  /// Managed resource group name
  final String? name;

  /// Creates a new [ManagedResourceGroupConfiguration].
  /// [name] Managed resource group name
  ManagedResourceGroupConfiguration({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfiguration(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

