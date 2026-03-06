// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesApiManagement {
  final pulumi.Input<bool>? purgeSoftDeleteOnDestroy;
  final pulumi.Input<bool>? recoverSoftDeleted;

  /// Creates a new [ProviderFeaturesApiManagement].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  const ProviderFeaturesApiManagement({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory ProviderFeaturesApiManagement.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesApiManagement(
      purgeSoftDeleteOnDestroy: (() { final guardedValue = map['purgeSoftDeleteOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverSoftDeleted: (() { final guardedValue = map['recoverSoftDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

