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
  VolumeAttachState({
    pulumi.Output<String>? attachMode,
    pulumi.Output<Map<String, String>>? data,
    pulumi.Output<String>? device,
    pulumi.Output<String>? driverVolumeType,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? initiator,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? mountPointBase,
    pulumi.Output<bool>? multipath,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? region,
    pulumi.Output<String>? volumeId,
    pulumi.Output<String>? wwnn,
    pulumi.Output<List<String>>? wwpns,
  }) :
      attachMode = pulumi.Input.asOptionalInput<String>(attachMode),
      data = pulumi.Input.asOptionalInput<Map<String, String>>(data),
      device = pulumi.Input.asOptionalInput<String>(device),
      driverVolumeType = pulumi.Input.asOptionalInput<String>(driverVolumeType),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      initiator = pulumi.Input.asOptionalInput<String>(initiator),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      mountPointBase = pulumi.Input.asOptionalInput<String>(mountPointBase),
      multipath = pulumi.Input.asOptionalInput<bool>(multipath),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId),
      wwnn = pulumi.Input.asOptionalInput<String>(wwnn),
      wwpns = pulumi.Input.asOptionalInput<List<String>>(wwpns);

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
      attachMode: map['attachMode'] == null ? null : pulumi.Output.create<String>(map['attachMode'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<Map<String, String>>((map['data'] as Map).cast<String, String>()),
      device: map['device'] == null ? null : pulumi.Output.create<String>(map['device'] as String),
      driverVolumeType: map['driverVolumeType'] == null ? null : pulumi.Output.create<String>(map['driverVolumeType'] as String),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      initiator: map['initiator'] == null ? null : pulumi.Output.create<String>(map['initiator'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      mountPointBase: map['mountPointBase'] == null ? null : pulumi.Output.create<String>(map['mountPointBase'] as String),
      multipath: map['multipath'] == null ? null : pulumi.Output.create<bool>(map['multipath'] as bool),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
      wwnn: map['wwnn'] == null ? null : pulumi.Output.create<String>(map['wwnn'] as String),
      wwpns: map['wwpns'] == null ? null : pulumi.Output.create<List<String>>((map['wwpns'] as List).cast<String>()),
    );
  }
}

