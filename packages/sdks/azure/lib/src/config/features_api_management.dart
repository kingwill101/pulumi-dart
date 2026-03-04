// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesApiManagement {
  final pulumi.Input<bool>? purgeSoftDeleteOnDestroy;
  final pulumi.Input<bool>? recoverSoftDeleted;

  /// Creates a new [FeaturesApiManagement].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  FeaturesApiManagement({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory FeaturesApiManagement.fromMap(Map<String, dynamic> map) {
    return FeaturesApiManagement(
      purgeSoftDeleteOnDestroy: (() {
        final guardedValue = map['purgeSoftDeleteOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      recoverSoftDeleted: (() {
        final guardedValue = map['recoverSoftDeleted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
