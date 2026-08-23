// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_get_connectivity_tests_get_connectivity_tests_args_doc}
/// Arguments for getConnectivityTests.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_get_connectivity_tests_get_connectivity_tests_args_doc}
class GetConnectivityTestsArgs {
  /// Lists the ConnectivityTests that match the [filter expression](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/list#query-parameters). A filter expression filters the resources listed in the response.
  final pulumi.Input<String>? filter;
  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestsArgs].
  /// [filter] Lists the ConnectivityTests that match the [filter expression](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/list#query-parameters). A filter expression filters the resources listed in the response.
  /// [project] The ID of the project.
  const GetConnectivityTestsArgs({
    this.filter,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
    };
  }

  factory GetConnectivityTestsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
