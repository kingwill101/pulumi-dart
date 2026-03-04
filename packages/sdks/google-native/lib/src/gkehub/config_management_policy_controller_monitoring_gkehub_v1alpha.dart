// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_policy_controller_monitoring_backends_item_gkehub_v1alpha.dart';

/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoringGkehubV1alpha {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final pulumi.Input<
    List<ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha>
  >?
  backends;

  /// Creates a new [ConfigManagementPolicyControllerMonitoringGkehubV1alpha].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  ConfigManagementPolicyControllerMonitoringGkehubV1alpha({this.backends});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha
            >,
            List<String>
          >(
            backends,
            (value) =>
                pulumi.Input.encodeList<
                  ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha,
                  String
                >(value, (value) => value.wireValue),
          ),
    };
  }

  factory ConfigManagementPolicyControllerMonitoringGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigManagementPolicyControllerMonitoringGkehubV1alpha(
      backends: (() {
        final guardedValue = map['backends'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha
          >(
            guardedValue,
            (value) =>
                ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha.fromValue(
                  value as String,
                ),
          ),
        );
      })(),
    );
  }
}
