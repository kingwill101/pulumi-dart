// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_outbound_endpoint.dart';
import 'managed_zone_forwarding_config_target_name_server.dart';

class ManagedZoneForwardingConfig {
  /// The list of outbound endpoints to use for queries.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZoneForwardingConfigOutboundEndpoint>?>? outboundEndpoints;
  /// List of target name servers to forward to. Cloud DNS will
  /// select the best available name server if more than
  /// one target is given.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZoneForwardingConfigTargetNameServer>> targetNameServers;

  /// Creates a new [ManagedZoneForwardingConfig].
  /// [outboundEndpoints] The list of outbound endpoints to use for queries.
  /// [targetNameServers] List of target name servers to forward to. Cloud DNS will
  const ManagedZoneForwardingConfig({
    this.outboundEndpoints,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ManagedZoneForwardingConfigOutboundEndpoint>, List<Map<String, dynamic>>>(outboundEndpoints, (value) => pulumi.Input.encodeList<ManagedZoneForwardingConfigOutboundEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetNameServers': pulumi.Input.mapInputValue<List<ManagedZoneForwardingConfigTargetNameServer>, List<Map<String, dynamic>>>(targetNameServers, (value) => pulumi.Input.encodeList<ManagedZoneForwardingConfigTargetNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedZoneForwardingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfig(
      outboundEndpoints: (() { final guardedValue = map['outboundEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZoneForwardingConfigOutboundEndpoint>(guardedValue, (value) => ManagedZoneForwardingConfigOutboundEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetNameServers: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZoneForwardingConfigTargetNameServer>(map['targetNameServers']!, (value) => ManagedZoneForwardingConfigTargetNameServer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
