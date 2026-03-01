// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server_response_dns_v1beta2.dart';

class PolicyAlternativeNameServerConfigResponseDnsV1beta2 {
  final String kind;
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final List<PolicyAlternativeNameServerConfigTargetNameServerResponseDnsV1beta2> targetNameServers;

  /// Creates a new [PolicyAlternativeNameServerConfigResponseDnsV1beta2].
  /// [kind] Required.
  /// [targetNameServers] Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  PolicyAlternativeNameServerConfigResponseDnsV1beta2({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'targetNameServers': pulumi.Input.encodeList<PolicyAlternativeNameServerConfigTargetNameServerResponseDnsV1beta2, Map<String, dynamic>>(targetNameServers, (value) => value.toMap()),
    };
  }

  factory PolicyAlternativeNameServerConfigResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigResponseDnsV1beta2(
      kind: map['kind'] as String,
      targetNameServers: pulumi.Input.decodeList<PolicyAlternativeNameServerConfigTargetNameServerResponseDnsV1beta2>(map['targetNameServers'], (value) => PolicyAlternativeNameServerConfigTargetNameServerResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

