// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesAppConfiguration {
  final pulumi.Input<bool>? purgeSoftDeleteOnDestroy;
  final pulumi.Input<bool>? recoverSoftDeleted;

  /// Creates a new [ProviderFeaturesAppConfiguration].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  ProviderFeaturesAppConfiguration({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory ProviderFeaturesAppConfiguration.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesAppConfiguration(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : (map['purgeSoftDeleteOnDestroy'] as bool).input(),
      recoverSoftDeleted: map['recoverSoftDeleted'] == null ? null : (map['recoverSoftDeleted'] as bool).input(),
    );
  }
}

