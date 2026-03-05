// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_networking_ipv6_global.dart';
import 'get_instance_networking_ipv6_link_local.dart';
import 'get_instance_networking_ipv6_slaac.dart';

class GetInstanceNetworkingIpv6 {
  final pulumi.Input<List<GetInstanceNetworkingIpv6Global>> globals;
  final pulumi.Input<GetInstanceNetworkingIpv6LinkLocal> linkLocal;
  final pulumi.Input<GetInstanceNetworkingIpv6Slaac> slaac;

  /// Creates a new [GetInstanceNetworkingIpv6].
  /// [globals] Required.
  /// [linkLocal] Required.
  /// [slaac] Required.
  GetInstanceNetworkingIpv6({
    required this.globals,
    required this.linkLocal,
    required this.slaac,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globals': pulumi.Input.mapInputValue<List<GetInstanceNetworkingIpv6Global>, List<Map<String, dynamic>>>(globals, (value) => pulumi.Input.encodeList<GetInstanceNetworkingIpv6Global, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkLocal': pulumi.Input.mapInputValue<GetInstanceNetworkingIpv6LinkLocal, Map<String, dynamic>>(linkLocal, (value) => value.toMap()),
      'slaac': pulumi.Input.mapInputValue<GetInstanceNetworkingIpv6Slaac, Map<String, dynamic>>(slaac, (value) => value.toMap()),
    };
  }

  factory GetInstanceNetworkingIpv6.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv6(
      globals: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceNetworkingIpv6Global>(map['globals']!, (value) => GetInstanceNetworkingIpv6Global.fromMap((value as Map).cast<String, dynamic>()))),
      linkLocal: pulumi.Input.fromValue(GetInstanceNetworkingIpv6LinkLocal.fromMap((map['linkLocal']! as Map).cast<String, dynamic>())),
      slaac: pulumi.Input.fromValue(GetInstanceNetworkingIpv6Slaac.fromMap((map['slaac']! as Map).cast<String, dynamic>())),
    );
  }
}

