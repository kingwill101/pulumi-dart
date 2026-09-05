// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesVirtualMachine {
  final pulumi.Input<bool?>? deleteOsDiskOnDeletion;
  final pulumi.Input<bool?>? detachImplicitDataDiskOnDeletion;
  final pulumi.Input<bool?>? gracefulShutdown;
  final pulumi.Input<bool?>? skipShutdownAndForceDelete;

  /// Creates a new [ProviderFeaturesVirtualMachine].
  /// [deleteOsDiskOnDeletion] Optional.
  /// [detachImplicitDataDiskOnDeletion] Optional.
  /// [gracefulShutdown] Optional.
  /// [skipShutdownAndForceDelete] Optional.
  const ProviderFeaturesVirtualMachine({
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

  factory ProviderFeaturesVirtualMachine.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesVirtualMachine(
      deleteOsDiskOnDeletion: (() { final guardedValue = map['deleteOsDiskOnDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      detachImplicitDataDiskOnDeletion: (() { final guardedValue = map['detachImplicitDataDiskOnDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gracefulShutdown: (() { final guardedValue = map['gracefulShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipShutdownAndForceDelete: (() { final guardedValue = map['skipShutdownAndForceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
