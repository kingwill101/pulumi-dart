// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_cluster_control_plane_acl_address.dart';

class GetLkeClusterControlPlaneAcl {
  /// A list of ip addresses to allow.
  final List<GetLkeClusterControlPlaneAclAddress> addresses;
  /// The default policy. A value of true means a default policy of DENY. A value of false means a default policy of ALLOW.
  final bool enabled;

  /// Creates a new [GetLkeClusterControlPlaneAcl].
  /// [addresses] A list of ip addresses to allow.
  /// [enabled] The default policy. A value of true means a default policy of DENY. A value of false means a default policy of ALLOW.
  GetLkeClusterControlPlaneAcl({
    required this.addresses,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetLkeClusterControlPlaneAclAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory GetLkeClusterControlPlaneAcl.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterControlPlaneAcl(
      addresses: pulumi.Input.decodeList<GetLkeClusterControlPlaneAclAddress>(map['addresses'], (value) => GetLkeClusterControlPlaneAclAddress.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}

