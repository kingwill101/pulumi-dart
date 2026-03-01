// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_network.dart';

/// {@template pulumi_index_get_server_get_server_args_doc}
/// Arguments for getServer.
/// {@endtemplate}
/// {@macro pulumi_index_get_server_get_server_args_doc}
class GetServerArgs {
  /// ID of the server.
  final pulumi.Input<int>? id;
  /// Name of the server.
  final pulumi.Input<String>? name;
  /// (map) Private Network the server is attached to.
  final pulumi.Input<List<GetServerNetwork>>? networks;
  /// (Optional, string) Placement Group ID the server is assigned to.
  final pulumi.Input<int>? placementGroupId;
  final pulumi.Input<String>? selector;
  /// Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;
  /// List only servers with the specified status, could contain `initializing`, `starting`, `running`, `stopping`, `off`, `deleting`, `rebuilding`, `migrating`, `unknown`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetServerArgs].
  /// [id] ID of the server.
  /// [name] Name of the server.
  /// [networks] (map) Private Network the server is attached to.
  /// [placementGroupId] (Optional, string) Placement Group ID the server is assigned to.
  /// [selector] Optional.
  /// [withSelector] Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [withStatuses] List only servers with the specified status, could contain `initializing`, `starting`, `running`, `stopping`, `off`, `deleting`, `rebuilding`, `migrating`, `unknown`.
  GetServerArgs({
    pulumi.Output<int>? id,
    pulumi.Output<String>? name,
    pulumi.Output<List<GetServerNetwork>>? networks,
    pulumi.Output<int>? placementGroupId,
    pulumi.Output<String>? selector,
    pulumi.Output<String>? withSelector,
    pulumi.Output<List<String>>? withStatuses,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      networks = pulumi.Input.asOptionalInput<List<GetServerNetwork>>(networks),
      placementGroupId = pulumi.Input.asOptionalInput<int>(placementGroupId),
      selector = pulumi.Input.asOptionalInput<String>(selector),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector),
      withStatuses = pulumi.Input.asOptionalInput<List<String>>(withStatuses);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<GetServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementGroupId': ?placementGroupId,
      'selector': ?selector,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetServerArgs(
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<GetServerNetwork>>(pulumi.Input.decodeList<GetServerNetwork>(map['networks'], (value) => GetServerNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      placementGroupId: map['placementGroupId'] == null ? null : pulumi.Output.create<int>(map['placementGroupId'] as int),
      selector: map['selector'] == null ? null : pulumi.Output.create<String>(map['selector'] as String),
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
      withStatuses: map['withStatuses'] == null ? null : pulumi.Output.create<List<String>>((map['withStatuses'] as List).cast<String>()),
    );
  }
}

