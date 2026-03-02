// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_delegation_properties.dart';

/// Details of DNS Domains delegated to the Communications Gateway.
class DnsDelegationsProperties {
  /// DNS Domains to delegate for the creation of DNS Zones by the Azure Communications Gateway
  final pulumi.Input<List<DnsDelegationProperties>>? delegations;

  /// Creates a new [DnsDelegationsProperties].
  /// [delegations] DNS Domains to delegate for the creation of DNS Zones by the Azure Communications Gateway
  DnsDelegationsProperties({
    this.delegations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<DnsDelegationProperties>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<DnsDelegationProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DnsDelegationsProperties.fromMap(Map<String, dynamic> map) {
    return DnsDelegationsProperties(
      delegations: map['delegations'] == null ? null : (pulumi.Input.decodeList<DnsDelegationProperties>(map['delegations']!, (value) => DnsDelegationProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

