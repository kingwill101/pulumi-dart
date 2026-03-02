// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan script action details.
class RecoveryPlanScriptActionDetailsResponse {
  /// The fabric location.
  final pulumi.Input<String> fabricLocation;
  /// Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// Expected value is 'ScriptActionDetails'.
  final pulumi.Input<String> instanceType;
  /// The script path.
  final pulumi.Input<String> path;
  /// The script timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [RecoveryPlanScriptActionDetailsResponse].
  /// [fabricLocation] The fabric location.
  /// [instanceType] Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// [path] The script path.
  /// [timeout] The script timeout.
  RecoveryPlanScriptActionDetailsResponse({
    required this.fabricLocation,
    required this.instanceType,
    required this.path,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricLocation': fabricLocation,
      'instanceType': instanceType,
      'path': path,
      'timeout': ?timeout,
    };
  }

  factory RecoveryPlanScriptActionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanScriptActionDetailsResponse(
      fabricLocation: (map['fabricLocation'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      path: (map['path'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

