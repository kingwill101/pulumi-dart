// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceAttachmentTunnelingConfig {
  /// The encapsulation profile for tunneling traffic.
  final pulumi.Input<String> encapsulationProfile;
  /// The routing mode for tunneling traffic.
  final pulumi.Input<String> routingMode;

  /// Creates a new [GetServiceAttachmentTunnelingConfig].
  /// [encapsulationProfile] The encapsulation profile for tunneling traffic.
  /// [routingMode] The routing mode for tunneling traffic.
  const GetServiceAttachmentTunnelingConfig({
    required this.encapsulationProfile,
    required this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile': encapsulationProfile,
      'routingMode': routingMode,
    };
  }

  factory GetServiceAttachmentTunnelingConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentTunnelingConfig(
      encapsulationProfile: pulumi.Input.fromValue(map['encapsulationProfile'] as String),
      routingMode: pulumi.Input.fromValue(map['routingMode'] as String),
    );
  }
}
