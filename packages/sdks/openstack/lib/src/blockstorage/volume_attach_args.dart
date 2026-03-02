// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_volume_attach_volume_attach_args_doc}
/// The set of arguments for VolumeAttach.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_volume_attach_volume_attach_args_doc}
class VolumeAttachArgs {
  /// Specify whether to attach the volume as Read-Only
  /// (`ro`) or Read-Write (`rw`). Only values of `ro` and `rw` are accepted.
  /// If left unspecified, the Block Storage API will apply a default of `rw`.
  final pulumi.Input<String>? attachMode;
  /// The device to tell the Block Storage service this
  /// volume will be attached as. This is purely for informational purposes.
  /// You can specify `auto` or a device such as `/dev/vdc`.
  final pulumi.Input<String>? device;
  /// The host to attach the volume to.
  final pulumi.Input<String> hostName;
  /// The iSCSI initiator string to make the connection.
  final pulumi.Input<String>? initiator;
  /// The IP address of the `host_name` above.
  final pulumi.Input<String>? ipAddress;
  /// Whether to connect to this volume via multipath.
  final pulumi.Input<bool>? multipath;
  /// The iSCSI initiator OS type.
  final pulumi.Input<String>? osType;
  /// The iSCSI initiator platform.
  final pulumi.Input<String>? platform;
  /// The region in which to obtain the V3 Block Storage
  /// client. A Block Storage client is needed to create a volume attachment.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new volume attachment.
  final pulumi.Input<String>? region;
  /// The ID of the Volume to attach to an Instance.
  final pulumi.Input<String> volumeId;
  /// A wwnn name. Used for Fibre Channel connections.
  final pulumi.Input<String>? wwnn;
  /// An array of wwpn strings. Used for Fibre Channel
  /// connections.
  final pulumi.Input<List<String>>? wwpns;

  /// Creates a new [VolumeAttachArgs].
  /// [attachMode] Specify whether to attach the volume as Read-Only
  /// [device] The device to tell the Block Storage service this
  /// [hostName] The host to attach the volume to.
  /// [initiator] The iSCSI initiator string to make the connection.
  /// [ipAddress] The IP address of the `host_name` above.
  /// [multipath] Whether to connect to this volume via multipath.
  /// [osType] The iSCSI initiator OS type.
  /// [platform] The iSCSI initiator platform.
  /// [region] The region in which to obtain the V3 Block Storage
  /// [volumeId] The ID of the Volume to attach to an Instance.
  /// [wwnn] A wwnn name. Used for Fibre Channel connections.
  /// [wwpns] An array of wwpn strings. Used for Fibre Channel
  VolumeAttachArgs({
    this.attachMode,
    this.device,
    required this.hostName,
    this.initiator,
    this.ipAddress,
    this.multipath,
    this.osType,
    this.platform,
    this.region,
    required this.volumeId,
    this.wwnn,
    this.wwpns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachMode': ?attachMode,
      'device': ?device,
      'hostName': hostName,
      'initiator': ?initiator,
      'ipAddress': ?ipAddress,
      'multipath': ?multipath,
      'osType': ?osType,
      'platform': ?platform,
      'region': ?region,
      'volumeId': volumeId,
      'wwnn': ?wwnn,
      'wwpns': ?wwpns,
    };
  }

  factory VolumeAttachArgs.fromMap(Map<String, dynamic> map) {
    return VolumeAttachArgs(
      attachMode: map['attachMode'] == null ? null : (map['attachMode']! as String).input(),
      device: map['device'] == null ? null : (map['device']! as String).input(),
      hostName: (map['hostName'] as String).input(),
      initiator: map['initiator'] == null ? null : (map['initiator']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      multipath: map['multipath'] == null ? null : (map['multipath']! as bool).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      platform: map['platform'] == null ? null : (map['platform']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      volumeId: (map['volumeId'] as String).input(),
      wwnn: map['wwnn'] == null ? null : (map['wwnn']! as String).input(),
      wwpns: map['wwpns'] == null ? null : ((map['wwpns']! as List).cast<String>()).input(),
    );
  }
}

