// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_monitoring_config_backends_item_gkehub_v1beta.dart';

/// MonitoringConfig specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class PolicyControllerMonitoringConfigGkehubV1beta {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final pulumi.Input<
    List<PolicyControllerMonitoringConfigBackendsItemGkehubV1beta>
  >?
  backends;

  /// Creates a new [PolicyControllerMonitoringConfigGkehubV1beta].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  PolicyControllerMonitoringConfigGkehubV1beta({this.backends});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends':
          ?pulumi.Input.mapOptionalInputValue<
            List<PolicyControllerMonitoringConfigBackendsItemGkehubV1beta>,
            List<String>
          >(
            backends,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyControllerMonitoringConfigBackendsItemGkehubV1beta,
                  String
                >(value, (value) => value.wireValue),
          ),
    };
  }

  factory PolicyControllerMonitoringConfigGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyControllerMonitoringConfigGkehubV1beta(
      backends: (() {
        final guardedValue = map['backends'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PolicyControllerMonitoringConfigBackendsItemGkehubV1beta
          >(
            guardedValue,
            (value) =>
                PolicyControllerMonitoringConfigBackendsItemGkehubV1beta.fromValue(
                  value as String,
                ),
          ),
        );
      })(),
    );
  }
}
