// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snat_origin.dart';

/// {@template pulumi_ltm_snat_snat_args_doc}
/// The set of arguments for Snat.
/// {@endtemplate}
/// {@macro pulumi_ltm_snat_snat_args_doc}
class SnatArgs {
  /// Specifies whether to automatically map last hop for pools or not. The default is to use next level's default.
  final pulumi.Input<String>? autolasthop;
  /// Fullpath
  final pulumi.Input<String>? fullPath;
  /// Enables or disables mirroring of SNAT connections.
  final pulumi.Input<String>? mirror;
  /// Name of the SNAT, name of SNAT should be full path. Full path is the combination of the `partition + SNAT name`,For example `/Common/test-snat`.
  final pulumi.Input<String> name;
  /// Specifies, for each SNAT that you create, the origin addresses that are to be members of that SNAT. Specify origin addresses by their IP addresses and service ports
  final pulumi.Input<List<SnatOrigin>> origins;
  /// Partition or path to which the SNAT belongs
  final pulumi.Input<String>? partition;
  /// Specifies the name of a SNAT pool. You can only use this option when `automap` and `translation` are not used.
  final pulumi.Input<String>? snatpool;
  /// Specifies how the SNAT object handles the client's source port. The default is `preserve`.
  final pulumi.Input<String>? sourceport;
  /// Specifies the IP address configured for translation. Note that translated addresses are outside the traffic management system. You can only use this option when `automap` and `snatpool` are not used.
  final pulumi.Input<String>? translation;
  /// Specifies the available VLANs or tunnels and those for which the SNAT is enabled or disabled.
  final pulumi.Input<List<String>>? vlans;
  /// Specifies the VLANs or tunnels for which the SNAT is enabled or disabled. The default is `true`, vlandisabled on VLANS specified by `vlans`,if set to `false` vlanEnabled set on VLANS specified by `vlans` .
  final pulumi.Input<bool>? vlansdisabled;

  /// Creates a new [SnatArgs].
  /// [autolasthop] Specifies whether to automatically map last hop for pools or not. The default is to use next level's default.
  /// [fullPath] Fullpath
  /// [mirror] Enables or disables mirroring of SNAT connections.
  /// [name] Name of the SNAT, name of SNAT should be full path. Full path is the combination of the `partition + SNAT name`,For example `/Common/test-snat`.
  /// [origins] Specifies, for each SNAT that you create, the origin addresses that are to be members of that SNAT. Specify origin addresses by their IP addresses and service ports
  /// [partition] Partition or path to which the SNAT belongs
  /// [snatpool] Specifies the name of a SNAT pool. You can only use this option when `automap` and `translation` are not used.
  /// [sourceport] Specifies how the SNAT object handles the client's source port. The default is `preserve`.
  /// [translation] Specifies the IP address configured for translation. Note that translated addresses are outside the traffic management system. You can only use this option when `automap` and `snatpool` are not used.
  /// [vlans] Specifies the available VLANs or tunnels and those for which the SNAT is enabled or disabled.
  /// [vlansdisabled] Specifies the VLANs or tunnels for which the SNAT is enabled or disabled. The default is `true`, vlandisabled on VLANS specified by `vlans`,if set to `false` vlanEnabled set on VLANS specified by `vlans` .
  SnatArgs({
    pulumi.Output<String>? autolasthop,
    pulumi.Output<String>? fullPath,
    pulumi.Output<String>? mirror,
    required pulumi.Output<String> name,
    required pulumi.Output<List<SnatOrigin>> origins,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? snatpool,
    pulumi.Output<String>? sourceport,
    pulumi.Output<String>? translation,
    pulumi.Output<List<String>>? vlans,
    pulumi.Output<bool>? vlansdisabled,
  }) :
      autolasthop = pulumi.Input.asOptionalInput<String>(autolasthop),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      mirror = pulumi.Input.asOptionalInput<String>(mirror),
      name = pulumi.Input.asInput<String>(name),
      origins = pulumi.Input.asInput<List<SnatOrigin>>(origins),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      snatpool = pulumi.Input.asOptionalInput<String>(snatpool),
      sourceport = pulumi.Input.asOptionalInput<String>(sourceport),
      translation = pulumi.Input.asOptionalInput<String>(translation),
      vlans = pulumi.Input.asOptionalInput<List<String>>(vlans),
      vlansdisabled = pulumi.Input.asOptionalInput<bool>(vlansdisabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autolasthop': ?autolasthop,
      'fullPath': ?fullPath,
      'mirror': ?mirror,
      'name': name,
      'origins': pulumi.Input.mapInputValue<List<SnatOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<SnatOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partition': ?partition,
      'snatpool': ?snatpool,
      'sourceport': ?sourceport,
      'translation': ?translation,
      'vlans': ?vlans,
      'vlansdisabled': ?vlansdisabled,
    };
  }

  factory SnatArgs.fromMap(Map<String, dynamic> map) {
    return SnatArgs(
      autolasthop: map['autolasthop'] == null ? null : pulumi.Output.create<String>(map['autolasthop'] as String),
      fullPath: map['fullPath'] == null ? null : pulumi.Output.create<String>(map['fullPath'] as String),
      mirror: map['mirror'] == null ? null : pulumi.Output.create<String>(map['mirror'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      origins: pulumi.Output.create<List<SnatOrigin>>(pulumi.Input.decodeList<SnatOrigin>(map['origins'], (value) => SnatOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      snatpool: map['snatpool'] == null ? null : pulumi.Output.create<String>(map['snatpool'] as String),
      sourceport: map['sourceport'] == null ? null : pulumi.Output.create<String>(map['sourceport'] as String),
      translation: map['translation'] == null ? null : pulumi.Output.create<String>(map['translation'] as String),
      vlans: map['vlans'] == null ? null : pulumi.Output.create<List<String>>((map['vlans'] as List).cast<String>()),
      vlansdisabled: map['vlansdisabled'] == null ? null : pulumi.Output.create<bool>(map['vlansdisabled'] as bool),
    );
  }
}

