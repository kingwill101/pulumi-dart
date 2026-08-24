// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanIpsecTunnelHealthCheckTarget {
  /// The effective health check target. If 'saved' is empty, then this field will be populated with the calculated default value on GET requests. Ignored in POST, PUT, and PATCH requests.
  final pulumi.Input<String?>? effective;
  /// The saved health check target. Setting the value to the empty string indicates that the calculated default value will be used.
  final pulumi.Input<String?>? saved;

  /// Creates a new [MagicWanIpsecTunnelHealthCheckTarget].
  /// [effective] The effective health check target. If 'saved' is empty, then this field will be populated with the calculated default value on GET requests. Ignored in POST, PUT, and PATCH requests.
  /// [saved] The saved health check target. Setting the value to the empty string indicates that the calculated default value will be used.
  const MagicWanIpsecTunnelHealthCheckTarget({
    this.effective,
    this.saved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effective': ?effective,
      'saved': ?saved,
    };
  }

  factory MagicWanIpsecTunnelHealthCheckTarget.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelHealthCheckTarget(
      effective: (() { final guardedValue = map['effective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saved: (() { final guardedValue = map['saved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
