// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Use to configure this PSC connection in tunneling mode. In tunneling mode traffic from consumer to producer will be encapsulated as it crosses the VPC boundary and traffic from producer to consumer will be decapsulated in the same manner.
class ServiceAttachmentTunnelingConfigResponseComputeBeta {
  /// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  final pulumi.Input<String> encapsulationProfile;
  /// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  final pulumi.Input<String> routingMode;

  /// Creates a new [ServiceAttachmentTunnelingConfigResponseComputeBeta].
  /// [encapsulationProfile] Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  /// [routingMode] How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  const ServiceAttachmentTunnelingConfigResponseComputeBeta({
    required this.encapsulationProfile,
    required this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile': encapsulationProfile,
      'routingMode': routingMode,
    };
  }

  factory ServiceAttachmentTunnelingConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfigResponseComputeBeta(
      encapsulationProfile: pulumi.Input.fromValue(map['encapsulationProfile'] as String),
      routingMode: pulumi.Input.fromValue(map['routingMode'] as String),
    );
  }
}
