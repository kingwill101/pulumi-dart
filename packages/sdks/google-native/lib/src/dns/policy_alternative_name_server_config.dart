// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server.dart';

class PolicyAlternativeNameServerConfig {
  final pulumi.Input<String>? kind;
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final pulumi.Input<List<PolicyAlternativeNameServerConfigTargetNameServer>>? targetNameServers;

  /// Creates a new [PolicyAlternativeNameServerConfig].
  /// [kind] Optional.
  /// [targetNameServers] Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  const PolicyAlternativeNameServerConfig({
    this.kind,
    this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'targetNameServers': ?pulumi.Input.mapOptionalInputValue<List<PolicyAlternativeNameServerConfigTargetNameServer>, List<Map<String, dynamic>>>(targetNameServers, (value) => pulumi.Input.encodeList<PolicyAlternativeNameServerConfigTargetNameServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyAlternativeNameServerConfig.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfig(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNameServers: (() { final guardedValue = map['targetNameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyAlternativeNameServerConfigTargetNameServer>(guardedValue, (value) => PolicyAlternativeNameServerConfigTargetNameServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

