// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_control_plane_acl_address.dart';

class LkeClusterControlPlaneAcl {
  /// A list of ip addresses to allow.
  final pulumi.Input<List<LkeClusterControlPlaneAclAddress>>? addresses;
  /// Defines default policy. A value of true results in a default policy of DENY. A value of false results in default policy of ALLOW, and has the same effect as delete the ACL configuration.
  ///
  /// * `addresses` - (Optional) A list of ip addresses to allow.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [LkeClusterControlPlaneAcl].
  /// [addresses] A list of ip addresses to allow.
  /// [enabled] Defines default policy. A value of true results in a default policy of DENY. A value of false results in default policy of ALLOW, and has the same effect as delete the ACL configuration.
  const LkeClusterControlPlaneAcl({
    this.addresses,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<LkeClusterControlPlaneAclAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<LkeClusterControlPlaneAclAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
    };
  }

  factory LkeClusterControlPlaneAcl.fromMap(Map<String, dynamic> map) {
    return LkeClusterControlPlaneAcl(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LkeClusterControlPlaneAclAddress>(guardedValue, (value) => LkeClusterControlPlaneAclAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

