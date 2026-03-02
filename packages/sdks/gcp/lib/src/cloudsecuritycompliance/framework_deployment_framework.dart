// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkDeploymentFramework {
  /// In the format:
  /// organizations/{org}/locations/{location}/frameworks/{framework}
  final pulumi.Input<String> framework;
  /// Major revision id of the framework.
  final pulumi.Input<String> majorRevisionId;

  /// Creates a new [FrameworkDeploymentFramework].
  /// [framework] In the format:
  /// [majorRevisionId] Major revision id of the framework.
  FrameworkDeploymentFramework({
    required this.framework,
    required this.majorRevisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'framework': framework,
      'majorRevisionId': majorRevisionId,
    };
  }

  factory FrameworkDeploymentFramework.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentFramework(
      framework: (map['framework'] as String).input(),
      majorRevisionId: (map['majorRevisionId'] as String).input(),
    );
  }
}

