// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_tunneling_config_encapsulation_profile.dart';
import 'service_attachment_tunneling_config_routing_mode.dart';

/// Use to configure this PSC connection in tunneling mode. In tunneling mode traffic from consumer to producer will be encapsulated as it crosses the VPC boundary and traffic from producer to consumer will be decapsulated in the same manner.
class ServiceAttachmentTunnelingConfig {
  /// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  final pulumi.Input<ServiceAttachmentTunnelingConfigEncapsulationProfile>? encapsulationProfile;
  /// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  final pulumi.Input<ServiceAttachmentTunnelingConfigRoutingMode>? routingMode;

  /// Creates a new [ServiceAttachmentTunnelingConfig].
  /// [encapsulationProfile] Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  /// [routingMode] How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  const ServiceAttachmentTunnelingConfig({
    this.encapsulationProfile,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentTunnelingConfigEncapsulationProfile, String>(encapsulationProfile, (value) => value.wireValue),
      'routingMode': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentTunnelingConfigRoutingMode, String>(routingMode, (value) => value.wireValue),
    };
  }

  factory ServiceAttachmentTunnelingConfig.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfig(
      encapsulationProfile: (() { final guardedValue = map['encapsulationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAttachmentTunnelingConfigEncapsulationProfile.fromValue(guardedValue as String)); })(),
      routingMode: (() { final guardedValue = map['routingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAttachmentTunnelingConfigRoutingMode.fromValue(guardedValue as String)); })(),
    );
  }
}
