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
      encapsulationProfile: map['encapsulationProfile'] == null ? null : (map['encapsulationProfile']! as String).input(),
      routingMode: map['routingMode'] == null ? null : (map['routingMode']! as String).input(),
    );
  }
}

