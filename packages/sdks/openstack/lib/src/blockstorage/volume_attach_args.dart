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
  const VolumeAttachArgs({
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
      attachMode: (() { final guardedValue = map['attachMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      initiator: (() { final guardedValue = map['initiator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multipath: (() { final guardedValue = map['multipath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
      wwnn: (() { final guardedValue = map['wwnn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wwpns: (() { final guardedValue = map['wwpns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

