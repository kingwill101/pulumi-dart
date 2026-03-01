// ignore_for_file: unused_element, unnecessary_cast


/// The complex type of the extended location.
class AzureResourceManagerCommonTypesExtendedLocation {
  /// The name of the extended location.
  final String name;
  /// The type of the extended location.
  final String type;

  /// Creates a new [AzureResourceManagerCommonTypesExtendedLocation].
  /// [name] The name of the extended location.
  /// [type] The type of the extended location.
  AzureResourceManagerCommonTypesExtendedLocation({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory AzureResourceManagerCommonTypesExtendedLocation.fromMap(Map<String, dynamic> map) {
    return AzureResourceManagerCommonTypesExtendedLocation(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

