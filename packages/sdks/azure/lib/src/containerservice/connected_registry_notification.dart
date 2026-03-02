// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectedRegistryNotification {
  /// The action of the artifact that wants to be subscribed for the Connected Registry. Possible values are `push`, `delete` and `*` (i.e. any).
  final pulumi.Input<String> action;
  /// The digest of the artifact that wants to be subscribed for the Connected Registry.
  ///
  /// > **Note:** One of either `tag` or `digest` can be specified.
  final pulumi.Input<String>? digest;
  /// The name of the artifact that wants to be subscribed for the Connected Registry.
  final pulumi.Input<String> name;
  /// The tag of the artifact that wants to be subscribed for the Connected Registry.
  final pulumi.Input<String>? tag;

  /// Creates a new [ConnectedRegistryNotification].
  /// [action] The action of the artifact that wants to be subscribed for the Connected Registry. Possible values are `push`, `delete` and `*` (i.e. any).
  /// [digest] The digest of the artifact that wants to be subscribed for the Connected Registry.
  /// [name] The name of the artifact that wants to be subscribed for the Connected Registry.
  /// [tag] The tag of the artifact that wants to be subscribed for the Connected Registry.
  ConnectedRegistryNotification({
    required this.action,
    this.digest,
    required this.name,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'digest': ?digest,
      'name': name,
      'tag': ?tag,
    };
  }

  factory ConnectedRegistryNotification.fromMap(Map<String, dynamic> map) {
    return ConnectedRegistryNotification(
      action: (map['action'] as String).input(),
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      name: (map['name'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

