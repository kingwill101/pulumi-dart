// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionDetailCloudRouter {
  /// The resource name of VPN connection
  final pulumi.Input<String>? name;

  /// Creates a new [VpnConnectionDetailCloudRouter].
  /// [name] The resource name of VPN connection
  const VpnConnectionDetailCloudRouter({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory VpnConnectionDetailCloudRouter.fromMap(Map<String, dynamic> map) {
    return VpnConnectionDetailCloudRouter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
