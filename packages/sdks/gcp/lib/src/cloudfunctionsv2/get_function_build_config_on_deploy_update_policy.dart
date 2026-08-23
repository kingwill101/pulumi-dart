// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionBuildConfigOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [GetFunctionBuildConfigOnDeployUpdatePolicy].
  /// [runtimeVersion] The runtime version which was used during latest function deployment.
  const GetFunctionBuildConfigOnDeployUpdatePolicy({
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeVersion': runtimeVersion,
    };
  }

  factory GetFunctionBuildConfigOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfigOnDeployUpdatePolicy(
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}
