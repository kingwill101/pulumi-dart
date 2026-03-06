// ignore_for_file: unused_element, unnecessary_cast

import 'get_interface_default_route.dart';
import 'get_interface_public.dart';
import 'get_interface_vlan.dart';
import 'get_interface_vpc.dart';

/// Result data returned by getInterface.
class GetInterfaceResult {
  final GetInterfaceDefaultRoute defaultRoute;
  final String id;
  final int linodeId;
  final GetInterfacePublic public;
  final GetInterfaceVlan vlan;
  final GetInterfaceVpc vpc;

  /// Creates a new [GetInterfaceResult].
  /// [defaultRoute] Required.
  /// [id] Required.
  /// [linodeId] Required.
  /// [public] Required.
  /// [vlan] Required.
  /// [vpc] Required.
  const GetInterfaceResult({
    required this.defaultRoute,
    required this.id,
    required this.linodeId,
    required this.public,
    required this.vlan,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRoute': defaultRoute.toMap(),
      'id': id,
      'linodeId': linodeId,
      'public': public.toMap(),
      'vlan': vlan.toMap(),
      'vpc': vpc.toMap(),
    };
  }

  factory GetInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetInterfaceResult(
      defaultRoute: GetInterfaceDefaultRoute.fromMap((map['defaultRoute']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      linodeId: map['linodeId'] as int,
      public: GetInterfacePublic.fromMap((map['public']! as Map).cast<String, dynamic>()),
      vlan: GetInterfaceVlan.fromMap((map['vlan']! as Map).cast<String, dynamic>()),
      vpc: GetInterfaceVpc.fromMap((map['vpc']! as Map).cast<String, dynamic>()),
    );
  }
}

