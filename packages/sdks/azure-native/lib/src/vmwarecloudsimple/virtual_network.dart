// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual network model
class VirtualNetwork {
  /// virtual network id (privateCloudId:vsphereId)
  final pulumi.Input<String> id;

  /// Creates a new [VirtualNetwork].
  /// [id] virtual network id (privateCloudId:vsphereId)
  const VirtualNetwork({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory VirtualNetwork.fromMap(Map<String, dynamic> map) {
    return VirtualNetwork(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

