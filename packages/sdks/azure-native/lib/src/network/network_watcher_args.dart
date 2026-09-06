// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_watcher_args_doc}
/// The set of arguments for NetworkWatcher.
/// {@endtemplate}
/// {@macro pulumi_network_network_watcher_args_doc}
class NetworkWatcherArgs {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the network watcher.
  final pulumi.Input<String?>? networkWatcherName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NetworkWatcherArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkWatcherName] The name of the network watcher.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  const NetworkWatcherArgs({
    this.id,
    this.location,
    this.networkWatcherName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'networkWatcherName': ?networkWatcherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkWatcherArgs.fromMap(Map<String, dynamic> map) {
    return NetworkWatcherArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkWatcherName: (() { final guardedValue = map['networkWatcherName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
