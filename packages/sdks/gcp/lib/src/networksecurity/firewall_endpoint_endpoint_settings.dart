// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallEndpointEndpointSettings {
  /// Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  final pulumi.Input<bool>? jumboFramesEnabled;

  /// Creates a new [FirewallEndpointEndpointSettings].
  /// [jumboFramesEnabled] Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  FirewallEndpointEndpointSettings({this.jumboFramesEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jumboFramesEnabled': ?jumboFramesEnabled};
  }

  factory FirewallEndpointEndpointSettings.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointEndpointSettings(
      jumboFramesEnabled: (() {
        final guardedValue = map['jumboFramesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
