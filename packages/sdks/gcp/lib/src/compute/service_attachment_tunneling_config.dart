// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentTunnelingConfig {
  /// The encapsulation profile for tunneling traffic.
  final pulumi.Input<String>? encapsulationProfile;

  /// The routing mode for tunneling traffic.
  final pulumi.Input<String>? routingMode;

  /// Creates a new [ServiceAttachmentTunnelingConfig].
  /// [encapsulationProfile] The encapsulation profile for tunneling traffic.
  /// [routingMode] The routing mode for tunneling traffic.
  ServiceAttachmentTunnelingConfig({
    this.encapsulationProfile,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile': ?encapsulationProfile,
      'routingMode': ?routingMode,
    };
  }

  factory ServiceAttachmentTunnelingConfig.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfig(
      encapsulationProfile: (() {
        final guardedValue = map['encapsulationProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routingMode: (() {
        final guardedValue = map['routingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
