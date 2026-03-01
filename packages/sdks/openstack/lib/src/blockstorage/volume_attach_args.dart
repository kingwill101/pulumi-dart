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
    pulumi.Output<String>? attachMode,
    pulumi.Output<String>? device,
    required pulumi.Output<String> hostName,
    pulumi.Output<String>? initiator,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<bool>? multipath,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? region,
    required pulumi.Output<String> volumeId,
    pulumi.Output<String>? wwnn,
    pulumi.Output<List<String>>? wwpns,
  }) :
      attachMode = pulumi.Input.asOptionalInput<String>(attachMode),
      device = pulumi.Input.asOptionalInput<String>(device),
      hostName = pulumi.Input.asInput<String>(hostName),
      initiator = pulumi.Input.asOptionalInput<String>(initiator),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      multipath = pulumi.Input.asOptionalInput<bool>(multipath),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      volumeId = pulumi.Input.asInput<String>(volumeId),
      wwnn = pulumi.Input.asOptionalInput<String>(wwnn),
      wwpns = pulumi.Input.asOptionalInput<List<String>>(wwpns);

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
      attachMode: map['attachMode'] == null ? null : pulumi.Output.create<String>(map['attachMode'] as String),
      device: map['device'] == null ? null : pulumi.Output.create<String>(map['device'] as String),
      hostName: pulumi.Output.create<String>(map['hostName'] as String),
      initiator: map['initiator'] == null ? null : pulumi.Output.create<String>(map['initiator'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      multipath: map['multipath'] == null ? null : pulumi.Output.create<bool>(map['multipath'] as bool),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      volumeId: pulumi.Output.create<String>(map['volumeId'] as String),
      wwnn: map['wwnn'] == null ? null : pulumi.Output.create<String>(map['wwnn'] as String),
      wwpns: map['wwpns'] == null ? null : pulumi.Output.create<List<String>>((map['wwpns'] as List).cast<String>()),
    );
  }
}

