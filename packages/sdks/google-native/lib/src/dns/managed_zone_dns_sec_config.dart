// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec.dart';
import 'managed_zone_dns_sec_config_non_existence.dart';
import 'managed_zone_dns_sec_config_state.dart';

class ManagedZoneDnsSecConfig {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final pulumi.Input<List<DnsKeySpec>>? defaultKeySpecs;
  final pulumi.Input<String>? kind;
  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final pulumi.Input<ManagedZoneDnsSecConfigNonExistence>? nonExistence;
  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final pulumi.Input<ManagedZoneDnsSecConfigState>? state;

  /// Creates a new [ManagedZoneDnsSecConfig].
  /// [defaultKeySpecs] Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  /// [kind] Optional.
  /// [nonExistence] Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  /// [state] Specifies whether DNSSEC is enabled, and what mode it is in.
  ManagedZoneDnsSecConfig({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeySpecs': ?pulumi.Input.mapOptionalInputValue<List<DnsKeySpec>, List<Map<String, dynamic>>>(defaultKeySpecs, (value) => pulumi.Input.encodeList<DnsKeySpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'nonExistence': ?pulumi.Input.mapOptionalInputValue<ManagedZoneDnsSecConfigNonExistence, String>(nonExistence, (value) => value.wireValue),
      'state': ?pulumi.Input.mapOptionalInputValue<ManagedZoneDnsSecConfigState, String>(state, (value) => value.wireValue),
    };
  }

  factory ManagedZoneDnsSecConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfig(
      defaultKeySpecs: (() { final guardedValue = map['defaultKeySpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DnsKeySpec>(guardedValue, (value) => DnsKeySpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonExistence: (() { final guardedValue = map['nonExistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZoneDnsSecConfigNonExistence.fromValue(guardedValue as String)); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZoneDnsSecConfigState.fromValue(guardedValue as String)); })(),
    );
  }
}

