// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configurations for a test case.
class GoogleCloudDialogflowCxV3TestConfig {
  /// Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String>? flow;
  /// The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String>? page;
  /// Session parameters to be compared when calculating differences.
  final pulumi.Input<List<String>>? trackingParameters;

  /// Creates a new [GoogleCloudDialogflowCxV3TestConfig].
  /// [flow] Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  /// [page] The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  /// [trackingParameters] Session parameters to be compared when calculating differences.
  const GoogleCloudDialogflowCxV3TestConfig({
    this.flow,
    this.page,
    this.trackingParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flow': ?flow,
      'page': ?page,
      'trackingParameters': ?trackingParameters,
    };
  }

  factory GoogleCloudDialogflowCxV3TestConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TestConfig(
      flow: (() { final guardedValue = map['flow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingParameters: (() { final guardedValue = map['trackingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
