// ignore_for_file: unused_element, unnecessary_cast


class FeaturesVirtualMachine {
  final bool? deleteOsDiskOnDeletion;
  final bool? detachImplicitDataDiskOnDeletion;
  final bool? gracefulShutdown;
  final bool? skipShutdownAndForceDelete;

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
      deleteOsDiskOnDeletion: map['deleteOsDiskOnDeletion'] == null ? null : map['deleteOsDiskOnDeletion'] as bool,
      detachImplicitDataDiskOnDeletion: map['detachImplicitDataDiskOnDeletion'] == null ? null : map['detachImplicitDataDiskOnDeletion'] as bool,
      gracefulShutdown: map['gracefulShutdown'] == null ? null : map['gracefulShutdown'] as bool,
      skipShutdownAndForceDelete: map['skipShutdownAndForceDelete'] == null ? null : map['skipShutdownAndForceDelete'] as bool,
    );
  }
}

