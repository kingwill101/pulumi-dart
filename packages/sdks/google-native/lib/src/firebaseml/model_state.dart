// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State common to all model types. Includes publishing and validation information.
class ModelState {
  /// Indicates if this model has been published.
  final pulumi.Input<bool>? published;

  /// Creates a new [ModelState].
  /// [published] Indicates if this model has been published.
  ModelState({this.published});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'published': ?published};
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      published: (() {
        final guardedValue = map['published'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
