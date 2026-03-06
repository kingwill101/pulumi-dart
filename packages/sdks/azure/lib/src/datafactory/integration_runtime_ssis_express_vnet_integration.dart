// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeSsisExpressVnetIntegration {
  /// id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  final pulumi.Input<String> subnetId;

  /// Creates a new [IntegrationRuntimeSsisExpressVnetIntegration].
  /// [subnetId] id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  const IntegrationRuntimeSsisExpressVnetIntegration({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory IntegrationRuntimeSsisExpressVnetIntegration.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressVnetIntegration(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

