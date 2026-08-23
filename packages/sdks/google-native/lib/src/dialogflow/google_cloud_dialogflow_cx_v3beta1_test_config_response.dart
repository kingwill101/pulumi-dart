// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configurations for a test case.
class GoogleCloudDialogflowCxV3beta1TestConfigResponse {
  /// Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String> flow;
  /// The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final pulumi.Input<String> page;
  /// Session parameters to be compared when calculating differences.
  final pulumi.Input<List<String>> trackingParameters;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TestConfigResponse].
  /// [flow] Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  /// [page] The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  /// [trackingParameters] Session parameters to be compared when calculating differences.
  const GoogleCloudDialogflowCxV3beta1TestConfigResponse({
    required this.flow,
    required this.page,
    required this.trackingParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flow': flow,
      'page': page,
      'trackingParameters': trackingParameters,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1TestConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestConfigResponse(
      flow: pulumi.Input.fromValue(map['flow'] as String),
      page: pulumi.Input.fromValue(map['page'] as String),
      trackingParameters: pulumi.Input.fromValue((map['trackingParameters'] as List).cast<String>()),
    );
  }
}
