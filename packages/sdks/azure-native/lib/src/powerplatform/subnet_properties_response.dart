// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a subnet.
class SubnetPropertiesResponse {
  /// Subnet name.
  final String? name;

  /// Creates a new [SubnetPropertiesResponse].
  /// [name] Subnet name.
  SubnetPropertiesResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SubnetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SubnetPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

