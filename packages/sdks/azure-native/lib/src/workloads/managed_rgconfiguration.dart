// ignore_for_file: unused_element, unnecessary_cast


/// Managed resource group configuration
class ManagedRGConfiguration {
  /// Managed resource group name
  final String? name;

  /// Creates a new [ManagedRGConfiguration].
  /// [name] Managed resource group name
  ManagedRGConfiguration({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedRGConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedRGConfiguration(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

