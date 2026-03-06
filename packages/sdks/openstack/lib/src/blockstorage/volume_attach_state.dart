// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeAttach resources.
class VolumeAttachState {
  /// Specify whether to attach the volume as Read-Only
  /// (`ro`) or Read-Write (`rw`). Only values of `ro` and `rw` are accepted.
  /// If left unspecified, the Block Storage API will apply a default of `rw`.
  final pulumi.Input<String>? attachMode;
  /// This is a map of key/value pairs that contain the connection
  /// information. You will want to pass this information to a provisioner
  /// script to finalize the connection. See below for more information.
  final pulumi.Input<Map<String, String>>? data;
  /// The device to tell the Block Storage service this
  /// volume will be attached as. This is purely for informational purposes.
  /// You can specify `auto` or a device such as `/dev/vdc`.
  final pulumi.Input<String>? device;
  /// The storage driver that the volume is based on.
  final pulumi.Input<String>? driverVolumeType;
  /// The host to attach the volume to.
  final pulumi.Input<String>? hostName;
  /// The iSCSI initiator string to make the connection.
  final pulumi.Input<String>? initiator;
  /// The IP address of the `host_name` above.
  final pulumi.Input<String>? ipAddress;
  /// A mount point base name for shared storage.
  final pulumi.Input<String>? mountPointBase;
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
  final pulumi.Input<String>? volumeId;
  /// A wwnn name. Used for Fibre Channel connections.
  final pulumi.Input<String>? wwnn;
  /// An array of wwpn strings. Used for Fibre Channel
  /// connections.
  final pulumi.Input<List<String>>? wwpns;

  /// Creates a new [VolumeAttachState].
  /// [attachMode] Specify whether to attach the volume as Read-Only
  /// [data] This is a map of key/value pairs that contain the connection
  /// [device] The device to tell the Block Storage service this
  /// [driverVolumeType] The storage driver that the volume is based on.
  /// [hostName] The host to attach the volume to.
  /// [initiator] The iSCSI initiator string to make the connection.
  /// [ipAddress] The IP address of the `host_name` above.
  /// [mountPointBase] A mount point base name for shared storage.
  /// [multipath] Whether to connect to this volume via multipath.
  /// [osType] The iSCSI initiator OS type.
  /// [platform] The iSCSI initiator platform.
  /// [region] The region in which to obtain the V3 Block Storage
  /// [volumeId] The ID of the Volume to attach to an Instance.
  /// [wwnn] A wwnn name. Used for Fibre Channel connections.
  /// [wwpns] An array of wwpn strings. Used for Fibre Channel
  const VolumeAttachState({
    this.attachMode,
    this.data,
    this.device,
    this.driverVolumeType,
    this.hostName,
    this.initiator,
    this.ipAddress,
    this.mountPointBase,
    this.multipath,
    this.osType,
    this.platform,
    this.region,
    this.volumeId,
    this.wwnn,
    this.wwpns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachMode': ?attachMode,
      'data': ?data,
      'device': ?device,
      'driverVolumeType': ?driverVolumeType,
      'hostName': ?hostName,
      'initiator': ?initiator,
      'ipAddress': ?ipAddress,
      'mountPointBase': ?mountPointBase,
      'multipath': ?multipath,
      'osType': ?osType,
      'platform': ?platform,
      'region': ?region,
      'volumeId': ?volumeId,
      'wwnn': ?wwnn,
      'wwpns': ?wwpns,
    };
  }

  factory VolumeAttachState.fromMap(Map<String, dynamic> map) {
    return VolumeAttachState(
      attachMode: (() { final guardedValue = map['attachMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverVolumeType: (() { final guardedValue = map['driverVolumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initiator: (() { final guardedValue = map['initiator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountPointBase: (() { final guardedValue = map['mountPointBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multipath: (() { final guardedValue = map['multipath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wwnn: (() { final guardedValue = map['wwnn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wwpns: (() { final guardedValue = map['wwpns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

