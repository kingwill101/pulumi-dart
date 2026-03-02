// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_servers_get_servers_args_doc}
/// Arguments for getServers.
/// {@endtemplate}
/// {@macro pulumi_index_get_servers_get_servers_args_doc}
class GetServersArgs {
  /// Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;
  /// List only servers with the specified status, could contain `initializing`, `starting`, `running`, `stopping`, `off`, `deleting`, `rebuilding`, `migrating`, `unknown`.
  final pulumi.Input<List<String>>? withStatuses;

  /// Creates a new [GetServersArgs].
  /// [withSelector] Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [withStatuses] List only servers with the specified status, could contain `initializing`, `starting`, `running`, `stopping`, `off`, `deleting`, `rebuilding`, `migrating`, `unknown`.
  GetServersArgs({
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetServersArgs.fromMap(Map<String, dynamic> map) {
    return GetServersArgs(
      withSelector: map['withSelector'] == null ? null : (map['withSelector'] as String).input(),
      withStatuses: map['withStatuses'] == null ? null : ((map['withStatuses'] as List).cast<String>()).input(),
    );
  }
}

