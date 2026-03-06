// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_name_server_target_response_dns_v1beta2.dart';

class ManagedZoneForwardingConfigResponseDnsV1beta2 {
  final pulumi.Input<String> kind;
  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final pulumi.Input<List<ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2>> targetNameServers;

  /// Creates a new [ManagedZoneForwardingConfigResponseDnsV1beta2].
  /// [kind] Required.
  /// [targetNameServers] List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  const ManagedZoneForwardingConfigResponseDnsV1beta2({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'targetNameServers': pulumi.Input.mapInputValue<List<ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2>, List<Map<String, dynamic>>>(targetNameServers, (value) => pulumi.Input.encodeList<ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedZoneForwardingConfigResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigResponseDnsV1beta2(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      targetNameServers: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2>(map['targetNameServers']!, (value) => ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

