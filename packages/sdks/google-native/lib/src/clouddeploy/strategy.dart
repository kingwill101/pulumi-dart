// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary.dart';
import 'standard.dart';

/// Strategy contains deployment strategy information.
class Strategy {
  /// Canary deployment strategy provides progressive percentage based deployments to a Target.
  final pulumi.Input<Canary>? canary;
  /// Standard deployment strategy executes a single deploy and allows verifying the deployment.
  final pulumi.Input<Standard>? standard;

  /// Creates a new [Strategy].
  /// [canary] Canary deployment strategy provides progressive percentage based deployments to a Target.
  /// [standard] Standard deployment strategy executes a single deploy and allows verifying the deployment.
  const Strategy({
    this.canary,
    this.standard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canary': ?pulumi.Input.mapOptionalInputValue<Canary, Map<String, dynamic>>(canary, (value) => value.toMap()),
      'standard': ?pulumi.Input.mapOptionalInputValue<Standard, Map<String, dynamic>>(standard, (value) => value.toMap()),
    };
  }

  factory Strategy.fromMap(Map<String, dynamic> map) {
    return Strategy(
      canary: (() { final guardedValue = map['canary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Canary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      standard: (() { final guardedValue = map['standard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Standard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
