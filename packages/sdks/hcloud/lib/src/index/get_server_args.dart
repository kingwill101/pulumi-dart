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
    this.id,
    this.name,
    this.networks,
    this.placementGroupId,
    this.selector,
    this.withSelector,
    this.withStatuses,
  });

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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerNetwork>(guardedValue, (value) => GetServerNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

