// ignore_for_file: unused_element, unnecessary_cast


/// Properties supplied for Subnet
class Subnet {
  /// Resource ID of Virtual Network Subnet
  final String id;

  /// Creates a new [Subnet].
  /// [id] Resource ID of Virtual Network Subnet
  Subnet({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      id: map['id'] as String,
    );
  }
}

