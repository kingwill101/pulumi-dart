// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec_response_dns_v1beta2.dart';

class ManagedZoneDnsSecConfigResponseDnsV1beta2 {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final pulumi.Input<List<DnsKeySpecResponseDnsV1beta2>> defaultKeySpecs;
  final pulumi.Input<String> kind;
  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final pulumi.Input<String> nonExistence;
  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final pulumi.Input<String> state;

  /// Creates a new [ManagedZoneDnsSecConfigResponseDnsV1beta2].
  /// [defaultKeySpecs] Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  /// [kind] Required.
  /// [nonExistence] Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  /// [state] Specifies whether DNSSEC is enabled, and what mode it is in.
  const ManagedZoneDnsSecConfigResponseDnsV1beta2({
    required this.defaultKeySpecs,
    required this.kind,
    required this.nonExistence,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeySpecs': pulumi.Input.mapInputValue<List<DnsKeySpecResponseDnsV1beta2>, List<Map<String, dynamic>>>(defaultKeySpecs, (value) => pulumi.Input.encodeList<DnsKeySpecResponseDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'nonExistence': nonExistence,
      'state': state,
    };
  }

  factory ManagedZoneDnsSecConfigResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfigResponseDnsV1beta2(
      defaultKeySpecs: pulumi.Input.fromValue(pulumi.Input.decodeList<DnsKeySpecResponseDnsV1beta2>(map['defaultKeySpecs']!, (value) => DnsKeySpecResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      nonExistence: pulumi.Input.fromValue(map['nonExistence'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

