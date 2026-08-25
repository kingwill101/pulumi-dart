// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_tests_connectivity_test.dart';

/// Result data returned by getConnectivityTests.
class GetConnectivityTestsResult {
  /// A list of connectivity tests in the selected project matching the filter. Structure is defined below.
  final List<GetConnectivityTestsConnectivityTest>? connectivityTests;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the project in which the resource belongs.
  final String? project;

  /// Creates a new [GetConnectivityTestsResult].
  /// [connectivityTests] A list of connectivity tests in the selected project matching the filter. Structure is defined below.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] The ID of the project in which the resource belongs.
  const GetConnectivityTestsResult({
    this.connectivityTests,
    this.filter,
    this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityTests': ?(() { final guardedValue = connectivityTests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectivityTestsConnectivityTest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter,
      'id': ?id,
      'project': ?project,
    };
  }

  factory GetConnectivityTestsResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsResult(
      connectivityTests: (() { final guardedValue = map['connectivityTests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectivityTestsConnectivityTest>(guardedValue, (value) => GetConnectivityTestsConnectivityTest.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
