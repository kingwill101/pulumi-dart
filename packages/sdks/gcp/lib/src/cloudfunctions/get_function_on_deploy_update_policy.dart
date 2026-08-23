// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [GetFunctionOnDeployUpdatePolicy].
  /// [runtimeVersion] The runtime version which was used during latest function deployment.
  const GetFunctionOnDeployUpdatePolicy({
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeVersion': runtimeVersion,
    };
  }

  factory GetFunctionOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetFunctionOnDeployUpdatePolicy(
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}
