// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_watcher_args_doc}
/// The set of arguments for NetworkWatcher.
/// {@endtemplate}
/// {@macro pulumi_network_network_watcher_args_doc}
class NetworkWatcherArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network watcher.
  final pulumi.Input<String>? networkWatcherName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkWatcherArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkWatcherName] The name of the network watcher.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  NetworkWatcherArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkWatcherName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkWatcherName = pulumi.Input.asOptionalInput<String>(networkWatcherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkWatcherName: map['networkWatcherName'] == null ? null : pulumi.Output.create<String>(map['networkWatcherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

