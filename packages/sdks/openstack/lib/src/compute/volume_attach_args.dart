// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attach_vendor_options.dart';

/// {@template pulumi_compute_volume_attach_volume_attach_args_doc}
/// The set of arguments for VolumeAttach.
/// {@endtemplate}
/// {@macro pulumi_compute_volume_attach_volume_attach_args_doc}
class VolumeAttachArgs {
  final pulumi.Input<String>? device;
  /// The ID of the Instance to attach the Volume to.
  final pulumi.Input<String> instanceId;
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
  final pulumi.Input<String> volumeId;

  /// Creates a new [VolumeAttachArgs].
  /// [device] Optional.
  /// [instanceId] The ID of the Instance to attach the Volume to.
  /// [multiattach] Enable attachment of multiattach-capable volumes.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [tag] Add a device role tag that is applied to the volume when
  /// [vendorOptions] Map of additional vendor-specific options.
  /// [volumeId] The ID of the Volume to attach to an Instance.
  VolumeAttachArgs({
    pulumi.Output<String>? device,
    required pulumi.Output<String> instanceId,
    pulumi.Output<bool>? multiattach,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tag,
    pulumi.Output<VolumeAttachVendorOptions>? vendorOptions,
    required pulumi.Output<String> volumeId,
  }) :
      device = pulumi.Input.asOptionalInput<String>(device),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      multiattach = pulumi.Input.asOptionalInput<bool>(multiattach),
      region = pulumi.Input.asOptionalInput<String>(region),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      vendorOptions = pulumi.Input.asOptionalInput<VolumeAttachVendorOptions>(vendorOptions),
      volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
      'instanceId': instanceId,
      'multiattach': ?multiattach,
      'region': ?region,
      'tag': ?tag,
      'vendorOptions': ?pulumi.Input.mapOptionalInputValue<VolumeAttachVendorOptions, Map<String, dynamic>>(vendorOptions, (value) => value.toMap()),
      'volumeId': volumeId,
    };
  }

  factory VolumeAttachArgs.fromMap(Map<String, dynamic> map) {
    return VolumeAttachArgs(
      device: map['device'] == null ? null : pulumi.Output.create<String>(map['device'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      multiattach: map['multiattach'] == null ? null : pulumi.Output.create<bool>(map['multiattach'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
      vendorOptions: map['vendorOptions'] == null ? null : pulumi.Output.create<VolumeAttachVendorOptions>(VolumeAttachVendorOptions.fromMap((map['vendorOptions'] as Map).cast<String, dynamic>())),
      volumeId: pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

