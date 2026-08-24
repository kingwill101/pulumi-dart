// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget {
  /// The effective health check target. If 'saved' is empty, then this field will be populated with the calculated default value on GET requests. Ignored in POST, PUT, and PATCH requests.
  final pulumi.Input<String> effective;
  /// The saved health check target. Setting the value to the empty string indicates that the calculated default value will be used.
  final pulumi.Input<String> saved;

  /// Creates a new [GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget].
  /// [effective] The effective health check target. If 'saved' is empty, then this field will be populated with the calculated default value on GET requests. Ignored in POST, PUT, and PATCH requests.
  /// [saved] The saved health check target. Setting the value to the empty string indicates that the calculated default value will be used.
  const GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget({
    required this.effective,
    required this.saved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effective': effective,
      'saved': saved,
    };
  }

  factory GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget(
      effective: pulumi.Input.fromValue(map['effective'] as String),
      saved: pulumi.Input.fromValue(map['saved'] as String),
    );
  }
}
