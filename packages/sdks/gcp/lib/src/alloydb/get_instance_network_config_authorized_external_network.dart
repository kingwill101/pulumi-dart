// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkConfigAuthorizedExternalNetwork {
  /// CIDR range for one authorized network of the instance.
  final pulumi.Input<String> cidrRange;

  /// Creates a new [GetInstanceNetworkConfigAuthorizedExternalNetwork].
  /// [cidrRange] CIDR range for one authorized network of the instance.
  GetInstanceNetworkConfigAuthorizedExternalNetwork({
    required this.cidrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRange': cidrRange,
    };
  }

  factory GetInstanceNetworkConfigAuthorizedExternalNetwork.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkConfigAuthorizedExternalNetwork(
      cidrRange: (map['cidrRange'] as String).input(),
    );
  }
}

