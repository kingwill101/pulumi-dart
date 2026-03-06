// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesCognitiveAccount {
  final pulumi.Input<bool>? purgeSoftDeleteOnDestroy;

  /// Creates a new [FeaturesCognitiveAccount].
  /// [purgeSoftDeleteOnDestroy] Optional.
  const FeaturesCognitiveAccount({
    this.purgeSoftDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
    };
  }

  factory FeaturesCognitiveAccount.fromMap(Map<String, dynamic> map) {
    return FeaturesCognitiveAccount(
      purgeSoftDeleteOnDestroy: (() { final guardedValue = map['purgeSoftDeleteOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

