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
    pulumi.Output<String>? agentVersion,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<bool>? identity,
    pulumi.Output<String>? lastHeartBeat,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverCertificate,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? serverOSVersion,
    pulumi.Output<String>? serverRole,
    required pulumi.Output<String> storageSyncServiceName,
  }) :
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      identity = pulumi.Input.asOptionalInput<bool>(identity),
      lastHeartBeat = pulumi.Input.asOptionalInput<String>(lastHeartBeat),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverCertificate = pulumi.Input.asOptionalInput<String>(serverCertificate),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      serverOSVersion = pulumi.Input.asOptionalInput<String>(serverOSVersion),
      serverRole = pulumi.Input.asOptionalInput<String>(serverRole),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName);

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
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<bool>(map['identity'] as bool),
      lastHeartBeat: map['lastHeartBeat'] == null ? null : pulumi.Output.create<String>(map['lastHeartBeat'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverCertificate: map['serverCertificate'] == null ? null : pulumi.Output.create<String>(map['serverCertificate'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      serverOSVersion: map['serverOSVersion'] == null ? null : pulumi.Output.create<String>(map['serverOSVersion'] as String),
      serverRole: map['serverRole'] == null ? null : pulumi.Output.create<String>(map['serverRole'] as String),
      storageSyncServiceName: pulumi.Output.create<String>(map['storageSyncServiceName'] as String),
    );
  }
}

