// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [FunctionOnDeployUpdatePolicy].
  /// [runtimeVersion] The runtime version which was used during latest function deployment.
  FunctionOnDeployUpdatePolicy({
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory FunctionOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return FunctionOnDeployUpdatePolicy(
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

