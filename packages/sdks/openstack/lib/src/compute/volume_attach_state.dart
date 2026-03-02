// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attach_vendor_options.dart';

/// Input properties used for looking up and filtering VolumeAttach resources.
class VolumeAttachState {
  final pulumi.Input<String>? device;
  /// The ID of the Instance to attach the Volume to.
  final pulumi.Input<String>? instanceId;
  /// Enable attachment of multiattach-capable volumes.
  final pulumi.Input<bool>? multiattach;
  /// The region in which to obtain the V2 Compute client.
  /// A Compute client is needed to create a volume attachment. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a
  /// new volume attachment.
  final pulumi.Input<String>? region;
  /// Add a device role tag that is applied to the volume when
  /// attaching it to the VM. Changing this creates a new volume attachment with
  /// the new tag. Requires microversion >= 2.49.
  final pulumi.Input<String>? tag;
  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  final pulumi.Input<VolumeAttachVendorOptions>? vendorOptions;
  /// The ID of the Volume to attach to an Instance.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [VolumeAttachState].
  /// [device] Optional.
  /// [instanceId] The ID of the Instance to attach the Volume to.
  /// [multiattach] Enable attachment of multiattach-capable volumes.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [tag] Add a device role tag that is applied to the volume when
  /// [vendorOptions] Map of additional vendor-specific options.
  /// [volumeId] The ID of the Volume to attach to an Instance.
  VolumeAttachState({
    this.device,
    this.instanceId,
    this.multiattach,
    this.region,
    this.tag,
    this.vendorOptions,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'instanceId': ?instanceId,
      'multiattach': ?multiattach,
      'region': ?region,
      'tag': ?tag,
      'vendorOptions': ?pulumi.Input.mapOptionalInputValue<VolumeAttachVendorOptions, Map<String, dynamic>>(vendorOptions, (value) => value.toMap()),
      'volumeId': ?volumeId,
    };
  }

  factory VolumeAttachState.fromMap(Map<String, dynamic> map) {
    return VolumeAttachState(
      device: map['device'] == null ? null : (map['device']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      multiattach: map['multiattach'] == null ? null : (map['multiattach']! as bool).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
      vendorOptions: map['vendorOptions'] == null ? null : (VolumeAttachVendorOptions.fromMap((map['vendorOptions']! as Map).cast<String, dynamic>())).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as String).input(),
    );
  }
}

