// ignore_for_file: unused_element, unnecessary_cast


class ManagedResourceGroupConfigurationResponse {
  /// The location of the managed resource group. If not specified, the location of the parent resource is chosen.
  final String? location;
  /// The name for the managed resource group. If not specified, the unique name is automatically generated.
  final String? name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [location] The location of the managed resource group. If not specified, the location of the parent resource is chosen.
  /// [name] The name for the managed resource group. If not specified, the unique name is automatically generated.
  ManagedResourceGroupConfigurationResponse({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

