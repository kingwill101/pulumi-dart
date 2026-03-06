// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_connection_keys_args_doc}
/// Arguments for listConnectionKeys.
/// {@endtemplate}
/// {@macro pulumi_web_list_connection_keys_args_doc}
class ListConnectionKeysArgs {
  /// The connection name.
  final pulumi.Input<String> connectionName;
  /// Resource Id
  final pulumi.Input<String>? id;
  /// Kind of resource
  final pulumi.Input<String>? kind;
  /// Resource Location
  final pulumi.Input<String>? location;
  /// Resource Name
  final pulumi.Input<String>? name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type
  final pulumi.Input<String>? type;
  /// time span for how long the keys will be valid
  final pulumi.Input<String>? validityTimeSpan;

  /// Creates a new [ListConnectionKeysArgs].
  /// [connectionName] The connection name.
  /// [id] Resource Id
  /// [kind] Kind of resource
  /// [location] Resource Location
  /// [name] Resource Name
  /// [resourceGroupName] The resource group name.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [validityTimeSpan] time span for how long the keys will be valid
  const ListConnectionKeysArgs({
    required this.connectionName,
    this.id,
    this.kind,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.type,
    this.validityTimeSpan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': ?type,
      'validityTimeSpan': ?validityTimeSpan,
    };
  }

  factory ListConnectionKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListConnectionKeysArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validityTimeSpan: (() { final guardedValue = map['validityTimeSpan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

