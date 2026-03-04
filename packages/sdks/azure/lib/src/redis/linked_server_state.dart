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
    this.geoReplicatedPrimaryHostName,
    this.linkedRedisCacheId,
    this.linkedRedisCacheLocation,
    this.name,
    this.resourceGroupName,
    this.serverRole,
    this.targetRedisCacheName,
  });

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
      geoReplicatedPrimaryHostName: (() {
        final guardedValue = map['geoReplicatedPrimaryHostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedRedisCacheId: (() {
        final guardedValue = map['linkedRedisCacheId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedRedisCacheLocation: (() {
        final guardedValue = map['linkedRedisCacheLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverRole: (() {
        final guardedValue = map['serverRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetRedisCacheName: (() {
        final guardedValue = map['targetRedisCacheName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
