// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_cache_parameters_cache_config.dart';

class VolumeCacheParameters {
  /// Optional. Configuration of the cache volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeCacheParametersCacheConfig>? cacheConfig;
  /// (Output)
  /// State of the cache volume indicating the peering status.
  final pulumi.Input<String>? cacheState;
  /// (Output)
  /// Copy-paste-able commands to be used on user's ONTAP to accept peering requests.
  final pulumi.Input<String>? command;
  /// Optional. Field indicating whether cache volume as global file lock enabled.
  final pulumi.Input<bool>? enableGlobalFileLock;
  /// (Output)
  /// Temporary passphrase generated to accept cluster peering command.
  final pulumi.Input<String>? passphrase;
  /// Required. Name of the origin volume's ONTAP cluster.
  final pulumi.Input<String>? peerClusterName;
  /// Required. List of IC LIF addresses of the origin volume's ONTAP cluster.
  final pulumi.Input<List<String>>? peerIpAddresses;
  /// Required. Name of the origin volume's SVM.
  final pulumi.Input<String>? peerSvmName;
  /// Required. Name of the origin volume for the cache volume.
  final pulumi.Input<String>? peerVolumeName;
  /// Optional. Expiration time for the peering command to be executed on user's ONTAP. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? peeringCommandExpiryTime;
  /// (Output)
  /// Detailed description of the current cache state.
  final pulumi.Input<String>? stateDetails;

  /// Creates a new [VolumeCacheParameters].
  /// [cacheConfig] Optional. Configuration of the cache volume.
  /// [cacheState] (Output)
  /// [command] (Output)
  /// [enableGlobalFileLock] Optional. Field indicating whether cache volume as global file lock enabled.
  /// [passphrase] (Output)
  /// [peerClusterName] Required. Name of the origin volume's ONTAP cluster.
  /// [peerIpAddresses] Required. List of IC LIF addresses of the origin volume's ONTAP cluster.
  /// [peerSvmName] Required. Name of the origin volume's SVM.
  /// [peerVolumeName] Required. Name of the origin volume for the cache volume.
  /// [peeringCommandExpiryTime] Optional. Expiration time for the peering command to be executed on user's ONTAP. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [stateDetails] (Output)
  VolumeCacheParameters({
    this.cacheConfig,
    this.cacheState,
    this.command,
    this.enableGlobalFileLock,
    this.passphrase,
    this.peerClusterName,
    this.peerIpAddresses,
    this.peerSvmName,
    this.peerVolumeName,
    this.peeringCommandExpiryTime,
    this.stateDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheConfig': ?pulumi.Input.mapOptionalInputValue<VolumeCacheParametersCacheConfig, Map<String, dynamic>>(cacheConfig, (value) => value.toMap()),
      'cacheState': ?cacheState,
      'command': ?command,
      'enableGlobalFileLock': ?enableGlobalFileLock,
      'passphrase': ?passphrase,
      'peerClusterName': ?peerClusterName,
      'peerIpAddresses': ?peerIpAddresses,
      'peerSvmName': ?peerSvmName,
      'peerVolumeName': ?peerVolumeName,
      'peeringCommandExpiryTime': ?peeringCommandExpiryTime,
      'stateDetails': ?stateDetails,
    };
  }

  factory VolumeCacheParameters.fromMap(Map<String, dynamic> map) {
    return VolumeCacheParameters(
      cacheConfig: map['cacheConfig'] == null ? null : (VolumeCacheParametersCacheConfig.fromMap((map['cacheConfig']! as Map).cast<String, dynamic>())).input(),
      cacheState: map['cacheState'] == null ? null : (map['cacheState']! as String).input(),
      command: map['command'] == null ? null : (map['command']! as String).input(),
      enableGlobalFileLock: map['enableGlobalFileLock'] == null ? null : (map['enableGlobalFileLock']! as bool).input(),
      passphrase: map['passphrase'] == null ? null : (map['passphrase']! as String).input(),
      peerClusterName: map['peerClusterName'] == null ? null : (map['peerClusterName']! as String).input(),
      peerIpAddresses: map['peerIpAddresses'] == null ? null : ((map['peerIpAddresses']! as List).cast<String>()).input(),
      peerSvmName: map['peerSvmName'] == null ? null : (map['peerSvmName']! as String).input(),
      peerVolumeName: map['peerVolumeName'] == null ? null : (map['peerVolumeName']! as String).input(),
      peeringCommandExpiryTime: map['peeringCommandExpiryTime'] == null ? null : (map['peeringCommandExpiryTime']! as String).input(),
      stateDetails: map['stateDetails'] == null ? null : (map['stateDetails']! as String).input(),
    );
  }
}

