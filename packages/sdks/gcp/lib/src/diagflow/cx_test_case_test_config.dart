// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestConfig {
  /// Flow name to start the test case with.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  /// Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String>? flow;

  /// The page to start the test case with.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  /// Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String>? page;

  /// Session parameters to be compared when calculating differences.
  final pulumi.Input<List<String>>? trackingParameters;

  /// Creates a new [CxTestCaseTestConfig].
  /// [flow] Flow name to start the test case with.
  /// [page] The page to start the test case with.
  /// [trackingParameters] Session parameters to be compared when calculating differences.
  CxTestCaseTestConfig({this.flow, this.page, this.trackingParameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flow': ?flow,
      'page': ?page,
      'trackingParameters': ?trackingParameters,
    };
  }

  factory CxTestCaseTestConfig.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestConfig(
      flow: (() {
        final guardedValue = map['flow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      page: (() {
        final guardedValue = map['page'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trackingParameters: (() {
        final guardedValue = map['trackingParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
