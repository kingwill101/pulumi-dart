// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configurations for a test case.
class GoogleCloudDialogflowCxV3beta1TestConfig {
  /// Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String>? flow;
  /// The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String>? page;
  /// Session parameters to be compared when calculating differences.
  final pulumi.Input<List<String>>? trackingParameters;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TestConfig].
  /// [flow] Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  /// [page] The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  /// [trackingParameters] Session parameters to be compared when calculating differences.
  GoogleCloudDialogflowCxV3beta1TestConfig({
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

  factory GoogleCloudDialogflowCxV3beta1TestConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestConfig(
      flow: map['flow'] == null ? null : (map['flow']! as String).input(),
      page: map['page'] == null ? null : (map['page']! as String).input(),
      trackingParameters: map['trackingParameters'] == null ? null : ((map['trackingParameters']! as List).cast<String>()).input(),
    );
  }
}

