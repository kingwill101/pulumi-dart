// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_outbound_endpoint.dart';
import 'policy_alternative_name_server_config_target_name_server.dart';

class PolicyAlternativeNameServerConfig {
  /// The list of outbound endpoints to use for queries.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyAlternativeNameServerConfigOutboundEndpoint>?>? outboundEndpoints;
  /// Sets an alternative name server for the associated networks. When specified,
  /// all DNS queries are forwarded to a name server that you choose. Names such as .internal
  /// are not available when an alternative name server is specified.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyAlternativeNameServerConfigTargetNameServer>> targetNameServers;

  /// Creates a new [PolicyAlternativeNameServerConfig].
  /// [outboundEndpoints] The list of outbound endpoints to use for queries.
  /// [targetNameServers] Sets an alternative name server for the associated networks. When specified,
  const PolicyAlternativeNameServerConfig({
    this.outboundEndpoints,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundEndpoints': ?pulumi.Input.mapOptionalInputValue<List<PolicyAlternativeNameServerConfigOutboundEndpoint>, List<Map<String, dynamic>>>(outboundEndpoints, (value) => pulumi.Input.encodeList<PolicyAlternativeNameServerConfigOutboundEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetNameServers': pulumi.Input.mapInputValue<List<PolicyAlternativeNameServerConfigTargetNameServer>, List<Map<String, dynamic>>>(targetNameServers, (value) => pulumi.Input.encodeList<PolicyAlternativeNameServerConfigTargetNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyAlternativeNameServerConfig.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfig(
      outboundEndpoints: (() { final guardedValue = map['outboundEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyAlternativeNameServerConfigOutboundEndpoint>(guardedValue, (value) => PolicyAlternativeNameServerConfigOutboundEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetNameServers: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyAlternativeNameServerConfigTargetNameServer>(map['targetNameServers']!, (value) => PolicyAlternativeNameServerConfigTargetNameServer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
