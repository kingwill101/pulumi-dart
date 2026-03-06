// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_router_get_router_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_networking_get_router_get_router_args_doc}
class GetRouterArgs {
  /// Administrative up/down status for the router (must be "true" or "false" if provided).
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the router.
  final pulumi.Input<String>? description;
  /// Indicates whether or not to get a distributed router.
  final pulumi.Input<bool>? distributed;
  /// The value that points out if the Source NAT is enabled on the router.
  final pulumi.Input<bool>? enableSnat;
  /// The name of the router.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve router ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The UUID of the router resource.
  final pulumi.Input<String>? routerId;
  /// The status of the router (ACTIVE/DOWN).
  final pulumi.Input<String>? status;
  /// The list of router tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the router.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetRouterArgs].
  /// [adminStateUp] Administrative up/down status for the router (must be "true" or "false" if provided).
  /// [description] Human-readable description of the router.
  /// [distributed] Indicates whether or not to get a distributed router.
  /// [enableSnat] The value that points out if the Source NAT is enabled on the router.
  /// [name] The name of the router.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [routerId] The UUID of the router resource.
  /// [status] The status of the router (ACTIVE/DOWN).
  /// [tags] The list of router tags to filter.
  /// [tenantId] The owner of the router.
  const GetRouterArgs({
    this.adminStateUp,
    this.description,
    this.distributed,
    this.enableSnat,
    this.name,
    this.region,
    this.routerId,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'distributed': ?distributed,
      'enableSnat': ?enableSnat,
      'name': ?name,
      'region': ?region,
      'routerId': ?routerId,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributed: (() { final guardedValue = map['distributed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSnat: (() { final guardedValue = map['enableSnat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

