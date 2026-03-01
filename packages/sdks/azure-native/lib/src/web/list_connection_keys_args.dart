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
  ListConnectionKeysArgs({
    required pulumi.Output<String> connectionName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? validityTimeSpan,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      validityTimeSpan = pulumi.Input.asOptionalInput<String>(validityTimeSpan);

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
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      validityTimeSpan: map['validityTimeSpan'] == null ? null : pulumi.Output.create<String>(map['validityTimeSpan'] as String),
    );
  }
}

