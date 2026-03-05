// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_delegation_properties_response.dart';

/// Details of DNS Domains delegated to the Communications Gateway.
class DnsDelegationsPropertiesResponse {
  /// DNS Domains to delegate for the creation of DNS Zones by the Azure Communications Gateway
  final pulumi.Input<List<DnsDelegationPropertiesResponse>>? delegations;

  /// Creates a new [DnsDelegationsPropertiesResponse].
  /// [delegations] DNS Domains to delegate for the creation of DNS Zones by the Azure Communications Gateway
  DnsDelegationsPropertiesResponse({
    this.delegations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<DnsDelegationPropertiesResponse>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<DnsDelegationPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DnsDelegationsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DnsDelegationsPropertiesResponse(
      delegations: (() { final guardedValue = map['delegations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DnsDelegationPropertiesResponse>(guardedValue, (value) => DnsDelegationPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

