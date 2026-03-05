// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_dnssec_config_default_key_spec.dart';

class ManagedZoneDnssecConfig {
  /// Specifies parameters that will be used for generating initial DnsKeys
  /// for this ManagedZone. If you provide a spec for keySigning or zoneSigning,
  /// you must also provide one for the other.
  /// default_key_specs can only be updated when the state is `off`.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedZoneDnssecConfigDefaultKeySpec>>? defaultKeySpecs;
  /// Identifies what kind of resource this is
  final pulumi.Input<String>? kind;
  /// Specifies the mechanism used to provide authenticated denial-of-existence responses.
  /// non_existence can only be updated when the state is `off`.
  /// Possible values are: `nsec`, `nsec3`.
  final pulumi.Input<String>? nonExistence;
  /// Specifies whether DNSSEC is enabled, and what mode it is in
  /// Possible values are: `off`, `on`, `transfer`.
  final pulumi.Input<String>? state;

  /// Creates a new [ManagedZoneDnssecConfig].
  /// [defaultKeySpecs] Specifies parameters that will be used for generating initial DnsKeys
  /// [kind] Identifies what kind of resource this is
  /// [nonExistence] Specifies the mechanism used to provide authenticated denial-of-existence responses.
  /// [state] Specifies whether DNSSEC is enabled, and what mode it is in
  ManagedZoneDnssecConfig({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeySpecs': ?pulumi.Input.mapOptionalInputValue<List<ManagedZoneDnssecConfigDefaultKeySpec>, List<Map<String, dynamic>>>(defaultKeySpecs, (value) => pulumi.Input.encodeList<ManagedZoneDnssecConfigDefaultKeySpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'nonExistence': ?nonExistence,
      'state': ?state,
    };
  }

  factory ManagedZoneDnssecConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnssecConfig(
      defaultKeySpecs: (() { final guardedValue = map['defaultKeySpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedZoneDnssecConfigDefaultKeySpec>(guardedValue, (value) => ManagedZoneDnssecConfigDefaultKeySpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonExistence: (() { final guardedValue = map['nonExistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

