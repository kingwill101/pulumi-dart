// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_registered_server_args_doc}
/// The set of arguments for RegisteredServer.
/// {@endtemplate}
/// {@macro pulumi_storagesync_registered_server_args_doc}
class RegisteredServerArgs {
  /// Registered Server Agent Version
  final pulumi.Input<String>? agentVersion;

  /// Server ServicePrincipal Id
  final pulumi.Input<String>? applicationId;

  /// Registered Server clusterId
  final pulumi.Input<String>? clusterId;

  /// Registered Server clusterName
  final pulumi.Input<String>? clusterName;

  /// Friendly Name
  final pulumi.Input<String>? friendlyName;

  /// Apply server with newly discovered ApplicationId if available.
  final pulumi.Input<bool>? identity;

  /// Registered Server last heart beat
  final pulumi.Input<String>? lastHeartBeat;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Registered Server Certificate
  final pulumi.Input<String>? serverCertificate;

  /// Registered Server serverId
  final pulumi.Input<String>? serverId;

  /// Registered Server OS Version
  final pulumi.Input<String>? serverOSVersion;

  /// Registered Server serverRole
  final pulumi.Input<String>? serverRole;

  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;

  /// Creates a new [RegisteredServerArgs].
  /// [agentVersion] Registered Server Agent Version
  /// [applicationId] Server ServicePrincipal Id
  /// [clusterId] Registered Server clusterId
  /// [clusterName] Registered Server clusterName
  /// [friendlyName] Friendly Name
  /// [identity] Apply server with newly discovered ApplicationId if available.
  /// [lastHeartBeat] Registered Server last heart beat
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverCertificate] Registered Server Certificate
  /// [serverId] Registered Server serverId
  /// [serverOSVersion] Registered Server OS Version
  /// [serverRole] Registered Server serverRole
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  RegisteredServerArgs({
    this.agentVersion,
    this.applicationId,
    this.clusterId,
    this.clusterName,
    this.friendlyName,
    this.identity,
    this.lastHeartBeat,
    required this.resourceGroupName,
    this.serverCertificate,
    this.serverId,
    this.serverOSVersion,
    this.serverRole,
    required this.storageSyncServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'applicationId': ?applicationId,
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'friendlyName': ?friendlyName,
      'identity': ?identity,
      'lastHeartBeat': ?lastHeartBeat,
      'resourceGroupName': resourceGroupName,
      'serverCertificate': ?serverCertificate,
      'serverId': ?serverId,
      'serverOSVersion': ?serverOSVersion,
      'serverRole': ?serverRole,
      'storageSyncServiceName': storageSyncServiceName,
    };
  }

  factory RegisteredServerArgs.fromMap(Map<String, dynamic> map) {
    return RegisteredServerArgs(
      agentVersion: (() {
        final guardedValue = map['agentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastHeartBeat: (() {
        final guardedValue = map['lastHeartBeat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverCertificate: (() {
        final guardedValue = map['serverCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: (() {
        final guardedValue = map['serverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverOSVersion: (() {
        final guardedValue = map['serverOSVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverRole: (() {
        final guardedValue = map['serverRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageSyncServiceName: pulumi.Input.fromValue(
        map['storageSyncServiceName'] as String,
      ),
    );
  }
}
