// ignore_for_file: unused_element, unnecessary_cast


/// Properties supplied for Subnet
class SubnetResponse {
  /// Resource ID of Virtual Network Subnet
  final String id;

  /// Creates a new [SubnetResponse].
  /// [id] Resource ID of Virtual Network Subnet
  SubnetResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      id: map['id'] as String,
    );
  }
}

