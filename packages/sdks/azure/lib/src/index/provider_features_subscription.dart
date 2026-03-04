// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesSubscription {
  final pulumi.Input<bool>? preventCancellationOnDestroy;

  /// Creates a new [ProviderFeaturesSubscription].
  /// [preventCancellationOnDestroy] Optional.
  ProviderFeaturesSubscription({this.preventCancellationOnDestroy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preventCancellationOnDestroy': ?preventCancellationOnDestroy,
    };
  }

  factory ProviderFeaturesSubscription.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesSubscription(
      preventCancellationOnDestroy: (() {
        final guardedValue = map['preventCancellationOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
