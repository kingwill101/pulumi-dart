// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfacePublicIpv4Shared {
  /// The shared IPv4 address.
  final pulumi.Input<String> address;
  /// The ID of the Linode that this shared address belongs to.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetInterfacePublicIpv4Shared].
  /// [address] The shared IPv4 address.
  /// [linodeId] The ID of the Linode that this shared address belongs to.
  const GetInterfacePublicIpv4Shared({
    required this.address,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'linodeId': linodeId,
    };
  }

  factory GetInterfacePublicIpv4Shared.fromMap(Map<String, dynamic> map) {
    return GetInterfacePublicIpv4Shared(
      address: pulumi.Input.fromValue(map['address'] as String),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}

