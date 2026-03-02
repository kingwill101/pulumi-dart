// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesCognitiveAccount {
  final pulumi.Input<bool>? purgeSoftDeleteOnDestroy;

  /// Creates a new [ProviderFeaturesCognitiveAccount].
  /// [purgeSoftDeleteOnDestroy] Optional.
  ProviderFeaturesCognitiveAccount({
    this.purgeSoftDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
    };
  }

  factory ProviderFeaturesCognitiveAccount.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesCognitiveAccount(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : (map['purgeSoftDeleteOnDestroy'] as bool).input(),
    );
  }
}

