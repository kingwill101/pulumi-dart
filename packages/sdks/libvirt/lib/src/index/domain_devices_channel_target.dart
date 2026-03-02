// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_channel_target_guest_fwd.dart';
import 'domain_devices_channel_target_virt_io.dart';
import 'domain_devices_channel_target_xen.dart';

class DomainDevicesChannelTarget {
  /// This field configures the guest forwarding settings for the channel target.
  final pulumi.Input<DomainDevicesChannelTargetGuestFwd>? guestFwd;
  /// This field defines the target configuration for the VirtIO channel.
  final pulumi.Input<DomainDevicesChannelTargetVirtIo>? virtIo;
  /// This field specifies the channel target configuration for Xen.
  final pulumi.Input<DomainDevicesChannelTargetXen>? xen;

  /// Creates a new [DomainDevicesChannelTarget].
  /// [guestFwd] This field configures the guest forwarding settings for the channel target.
  /// [virtIo] This field defines the target configuration for the VirtIO channel.
  /// [xen] This field specifies the channel target configuration for Xen.
  DomainDevicesChannelTarget({
    this.guestFwd,
    this.virtIo,
    this.xen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestFwd': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelTargetGuestFwd, Map<String, dynamic>>(guestFwd, (value) => value.toMap()),
      'virtIo': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelTargetVirtIo, Map<String, dynamic>>(virtIo, (value) => value.toMap()),
      'xen': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelTargetXen, Map<String, dynamic>>(xen, (value) => value.toMap()),
    };
  }

  factory DomainDevicesChannelTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelTarget(
      guestFwd: map['guestFwd'] == null ? null : (DomainDevicesChannelTargetGuestFwd.fromMap((map['guestFwd']! as Map).cast<String, dynamic>())).input(),
      virtIo: map['virtIo'] == null ? null : (DomainDevicesChannelTargetVirtIo.fromMap((map['virtIo']! as Map).cast<String, dynamic>())).input(),
      xen: map['xen'] == null ? null : (DomainDevicesChannelTargetXen.fromMap((map['xen']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

