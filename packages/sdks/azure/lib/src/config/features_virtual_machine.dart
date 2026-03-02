// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesVirtualMachine {
  final pulumi.Input<bool>? deleteOsDiskOnDeletion;
  final pulumi.Input<bool>? detachImplicitDataDiskOnDeletion;
  final pulumi.Input<bool>? gracefulShutdown;
  final pulumi.Input<bool>? skipShutdownAndForceDelete;

  /// Creates a new [FeaturesVirtualMachine].
  /// [deleteOsDiskOnDeletion] Optional.
  /// [detachImplicitDataDiskOnDeletion] Optional.
  /// [gracefulShutdown] Optional.
  /// [skipShutdownAndForceDelete] Optional.
  FeaturesVirtualMachine({
    this.deleteOsDiskOnDeletion,
    this.detachImplicitDataDiskOnDeletion,
    this.gracefulShutdown,
    this.skipShutdownAndForceDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOsDiskOnDeletion': ?deleteOsDiskOnDeletion,
      'detachImplicitDataDiskOnDeletion': ?detachImplicitDataDiskOnDeletion,
      'gracefulShutdown': ?gracefulShutdown,
      'skipShutdownAndForceDelete': ?skipShutdownAndForceDelete,
    };
  }

  factory FeaturesVirtualMachine.fromMap(Map<String, dynamic> map) {
    return FeaturesVirtualMachine(
      deleteOsDiskOnDeletion: map['deleteOsDiskOnDeletion'] == null ? null : (map['deleteOsDiskOnDeletion'] as bool).input(),
      detachImplicitDataDiskOnDeletion: map['detachImplicitDataDiskOnDeletion'] == null ? null : (map['detachImplicitDataDiskOnDeletion'] as bool).input(),
      gracefulShutdown: map['gracefulShutdown'] == null ? null : (map['gracefulShutdown'] as bool).input(),
      skipShutdownAndForceDelete: map['skipShutdownAndForceDelete'] == null ? null : (map['skipShutdownAndForceDelete'] as bool).input(),
    );
  }
}

