// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_target_name_server.dart';

class ManagedZoneForwardingConfig {
  /// List of target name servers to forward to. Cloud DNS will
  /// select the best available name server if more than
  /// one target is given.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZoneForwardingConfigTargetNameServer>> targetNameServers;

  /// Creates a new [ManagedZoneForwardingConfig].
  /// [targetNameServers] List of target name servers to forward to. Cloud DNS will
  ManagedZoneForwardingConfig({
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetNameServers': pulumi.Input.mapInputValue<List<ManagedZoneForwardingConfigTargetNameServer>, List<Map<String, dynamic>>>(targetNameServers, (value) => pulumi.Input.encodeList<ManagedZoneForwardingConfigTargetNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedZoneForwardingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfig(
      targetNameServers: (pulumi.Input.decodeList<ManagedZoneForwardingConfigTargetNameServer>(map['targetNameServers'], (value) => ManagedZoneForwardingConfigTargetNameServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

