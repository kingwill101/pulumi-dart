// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_get_connectivity_test_run_get_connectivity_test_run_args_doc}
/// Arguments for getConnectivityTestRun.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_get_connectivity_test_run_get_connectivity_test_run_args_doc}
class GetConnectivityTestRunArgs {
  /// Unique name for the connectivity test.
  ///
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestRunArgs].
  /// [name] Unique name for the connectivity test.
  /// [project] The ID of the project in which the resource belongs.
  GetConnectivityTestRunArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetConnectivityTestRunArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestRunArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

