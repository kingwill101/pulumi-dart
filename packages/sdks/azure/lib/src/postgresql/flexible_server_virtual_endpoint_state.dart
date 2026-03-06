// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerVirtualEndpoint resources.
class FlexibleServerVirtualEndpointState {
  /// The name of the Virtual Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Resource ID of the *Replica* Postgres Flexible Server this should be associated with
  ///
  /// &gt; **Note:** If a fail-over has occurred, you will be unable to update `replica_server_id`. You can remove the resource from state and reimport it back in with `source_server_id` and `replica_server_id` flipped and then update `replica_server_id`.
  final pulumi.Input<String>? replicaServerId;
  /// The Resource ID of the *Source* Postgres Flexible Server this should be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceServerId;
  /// The type of Virtual Endpoint. Currently only `ReadWrite` is supported. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [FlexibleServerVirtualEndpointState].
  /// [name] The name of the Virtual Endpoint. Changing this forces a new resource to be created.
  /// [replicaServerId] The Resource ID of the *Replica* Postgres Flexible Server this should be associated with
  /// [sourceServerId] The Resource ID of the *Source* Postgres Flexible Server this should be associated with. Changing this forces a new resource to be created.
  /// [type] The type of Virtual Endpoint. Currently only `ReadWrite` is supported. Changing this forces a new resource to be created.
  const FlexibleServerVirtualEndpointState({
    this.name,
    this.replicaServerId,
    this.sourceServerId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'replicaServerId': ?replicaServerId,
      'sourceServerId': ?sourceServerId,
      'type': ?type,
    };
  }

  factory FlexibleServerVirtualEndpointState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerVirtualEndpointState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaServerId: (() { final guardedValue = map['replicaServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceServerId: (() { final guardedValue = map['sourceServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

