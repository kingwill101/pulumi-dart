// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_networking_ipv6_global.dart';
import 'get_instance_networking_ipv6_link_local.dart';
import 'get_instance_networking_ipv6_slaac.dart';

class GetInstanceNetworkingIpv6 {
  final List<GetInstanceNetworkingIpv6Global> globals;
  final GetInstanceNetworkingIpv6LinkLocal linkLocal;
  final GetInstanceNetworkingIpv6Slaac slaac;

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
      'globals': pulumi.Input.encodeList<GetInstanceNetworkingIpv6Global, Map<String, dynamic>>(globals, (value) => value.toMap()),
      'linkLocal': linkLocal.toMap(),
      'slaac': slaac.toMap(),
    };
  }

  factory GetInstanceNetworkingIpv6.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv6(
      globals: pulumi.Input.decodeList<GetInstanceNetworkingIpv6Global>(map['globals'], (value) => GetInstanceNetworkingIpv6Global.fromMap((value as Map).cast<String, dynamic>())),
      linkLocal: GetInstanceNetworkingIpv6LinkLocal.fromMap((map['linkLocal'] as Map).cast<String, dynamic>()),
      slaac: GetInstanceNetworkingIpv6Slaac.fromMap((map['slaac'] as Map).cast<String, dynamic>()),
    );
  }
}

