// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postdeploy.dart';
import 'predeploy.dart';

/// Standard represents the standard deployment strategy.
class Standard {
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final pulumi.Input<Postdeploy>? postdeploy;
  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final pulumi.Input<Predeploy>? predeploy;
  /// Whether to verify a deployment.
  final pulumi.Input<bool>? verify;

  /// Creates a new [Standard].
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  const Standard({
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postdeploy': ?pulumi.Input.mapOptionalInputValue<Postdeploy, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': ?pulumi.Input.mapOptionalInputValue<Predeploy, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'verify': ?verify,
    };
  }

  factory Standard.fromMap(Map<String, dynamic> map) {
    return Standard(
      postdeploy: (() { final guardedValue = map['postdeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Postdeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predeploy: (() { final guardedValue = map['predeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Predeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
