// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedServer resources.
class LinkedServerState {
  /// The geo-replicated primary hostname for this linked server.
  final pulumi.Input<String>? geoReplicatedPrimaryHostName;
  /// The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  final pulumi.Input<String>? linkedRedisCacheId;
  /// The location of the linked Redis cache. Changing this forces a new Redis to be created.
  final pulumi.Input<String>? linkedRedisCacheLocation;
  /// The name of the linked server.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  final pulumi.Input<String>? serverRole;
  /// The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  final pulumi.Input<String>? targetRedisCacheName;

  /// Creates a new [LinkedServerState].
  /// [geoReplicatedPrimaryHostName] The geo-replicated primary hostname for this linked server.
  /// [linkedRedisCacheId] The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  /// [linkedRedisCacheLocation] The location of the linked Redis cache. Changing this forces a new Redis to be created.
  /// [name] The name of the linked server.
  /// [resourceGroupName] The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  /// [serverRole] The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  /// [targetRedisCacheName] The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  LinkedServerState({
    pulumi.Output<String>? geoReplicatedPrimaryHostName,
    pulumi.Output<String>? linkedRedisCacheId,
    pulumi.Output<String>? linkedRedisCacheLocation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverRole,
    pulumi.Output<String>? targetRedisCacheName,
  }) :
      geoReplicatedPrimaryHostName = pulumi.Input.asOptionalInput<String>(geoReplicatedPrimaryHostName),
      linkedRedisCacheId = pulumi.Input.asOptionalInput<String>(linkedRedisCacheId),
      linkedRedisCacheLocation = pulumi.Input.asOptionalInput<String>(linkedRedisCacheLocation),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverRole = pulumi.Input.asOptionalInput<String>(serverRole),
      targetRedisCacheName = pulumi.Input.asOptionalInput<String>(targetRedisCacheName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoReplicatedPrimaryHostName': ?geoReplicatedPrimaryHostName,
      'linkedRedisCacheId': ?linkedRedisCacheId,
      'linkedRedisCacheLocation': ?linkedRedisCacheLocation,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serverRole': ?serverRole,
      'targetRedisCacheName': ?targetRedisCacheName,
    };
  }

  factory LinkedServerState.fromMap(Map<String, dynamic> map) {
    return LinkedServerState(
      geoReplicatedPrimaryHostName: map['geoReplicatedPrimaryHostName'] == null ? null : pulumi.Output.create<String>(map['geoReplicatedPrimaryHostName'] as String),
      linkedRedisCacheId: map['linkedRedisCacheId'] == null ? null : pulumi.Output.create<String>(map['linkedRedisCacheId'] as String),
      linkedRedisCacheLocation: map['linkedRedisCacheLocation'] == null ? null : pulumi.Output.create<String>(map['linkedRedisCacheLocation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverRole: map['serverRole'] == null ? null : pulumi.Output.create<String>(map['serverRole'] as String),
      targetRedisCacheName: map['targetRedisCacheName'] == null ? null : pulumi.Output.create<String>(map['targetRedisCacheName'] as String),
    );
  }
}

