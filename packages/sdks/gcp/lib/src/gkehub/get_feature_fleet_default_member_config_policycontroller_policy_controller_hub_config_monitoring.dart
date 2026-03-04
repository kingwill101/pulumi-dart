// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: ["MONITORING_BACKEND_UNSPECIFIED", "PROMETHEUS", "CLOUD_MONITORING"]
  final pulumi.Input<List<String>> backends;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: ["MONITORING_BACKEND_UNSPECIFIED", "PROMETHEUS", "CLOUD_MONITORING"]
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'backends': backends};
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring(
      backends: pulumi.Input.fromValue(
        (map['backends'] as List).cast<String>(),
      ),
    );
  }
}
