// ignore_for_file: unused_element, unnecessary_cast


/// Virtual network model
class VirtualNetwork {
  /// virtual network id (privateCloudId:vsphereId)
  final String id;

  /// Creates a new [VirtualNetwork].
  /// [id] virtual network id (privateCloudId:vsphereId)
  VirtualNetwork({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory VirtualNetwork.fromMap(Map<String, dynamic> map) {
    return VirtualNetwork(
      id: map['id'] as String,
    );
  }
}

