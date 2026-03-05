// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testing_v1_get_test_matrix_args_doc}
/// Arguments for getTestMatrix.
/// {@endtemplate}
/// {@macro pulumi_testing_v1_get_test_matrix_args_doc}
class GetTestMatrixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testMatrixId;

  /// Creates a new [GetTestMatrixArgs].
  /// [project] Optional.
  /// [testMatrixId] Required.
  GetTestMatrixArgs({
    this.project,
    required this.testMatrixId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'testMatrixId': testMatrixId,
    };
  }

  factory GetTestMatrixArgs.fromMap(Map<String, dynamic> map) {
    return GetTestMatrixArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testMatrixId: pulumi.Input.fromValue(map['testMatrixId'] as String),
    );
  }
}

