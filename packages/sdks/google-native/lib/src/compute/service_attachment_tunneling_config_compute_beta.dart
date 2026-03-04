// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_tunneling_config_encapsulation_profile_compute_beta.dart';
import 'service_attachment_tunneling_config_routing_mode_compute_beta.dart';

/// Use to configure this PSC connection in tunneling mode. In tunneling mode traffic from consumer to producer will be encapsulated as it crosses the VPC boundary and traffic from producer to consumer will be decapsulated in the same manner.
class ServiceAttachmentTunnelingConfigComputeBeta {
  /// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  final pulumi.Input<
    ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta
  >?
  encapsulationProfile;

  /// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  final pulumi.Input<ServiceAttachmentTunnelingConfigRoutingModeComputeBeta>?
  routingMode;

  /// Creates a new [ServiceAttachmentTunnelingConfigComputeBeta].
  /// [encapsulationProfile] Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  /// [routingMode] How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  ServiceAttachmentTunnelingConfigComputeBeta({
    this.encapsulationProfile,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta,
            String
          >(encapsulationProfile, (value) => value.wireValue),
      'routingMode':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAttachmentTunnelingConfigRoutingModeComputeBeta,
            String
          >(routingMode, (value) => value.wireValue),
    };
  }

  factory ServiceAttachmentTunnelingConfigComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceAttachmentTunnelingConfigComputeBeta(
      encapsulationProfile: (() {
        final guardedValue = map['encapsulationProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      routingMode: (() {
        final guardedValue = map['routingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAttachmentTunnelingConfigRoutingModeComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
