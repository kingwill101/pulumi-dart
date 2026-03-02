// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceVendorOptions {
  /// Whether to try to detach all attached
  /// ports to the vm before destroying it to make sure the port state is correct
  /// after the vm destruction. This is helpful when the port is not deleted.
  final pulumi.Input<bool>? detachPortsBeforeDestroy;
  /// Boolean to control whether
  /// to ignore manual confirmation of the instance resizing. This can be helpful
  /// to work with some OpenStack clouds which automatically confirm resizing of
  /// instances after some timeout.
  final pulumi.Input<bool>? ignoreResizeConfirmation;

  /// Creates a new [InstanceVendorOptions].
  /// [detachPortsBeforeDestroy] Whether to try to detach all attached
  /// [ignoreResizeConfirmation] Boolean to control whether
  InstanceVendorOptions({
    this.detachPortsBeforeDestroy,
    this.ignoreResizeConfirmation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detachPortsBeforeDestroy': ?detachPortsBeforeDestroy,
      'ignoreResizeConfirmation': ?ignoreResizeConfirmation,
    };
  }

  factory InstanceVendorOptions.fromMap(Map<String, dynamic> map) {
    return InstanceVendorOptions(
      detachPortsBeforeDestroy: map['detachPortsBeforeDestroy'] == null ? null : (map['detachPortsBeforeDestroy'] as bool).input(),
      ignoreResizeConfirmation: map['ignoreResizeConfirmation'] == null ? null : (map['ignoreResizeConfirmation'] as bool).input(),
    );
  }
}

