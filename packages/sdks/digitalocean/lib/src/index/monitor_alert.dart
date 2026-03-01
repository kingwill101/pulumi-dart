import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_alert_alerts.dart';
import 'monitor_alert_args.dart';
import 'monitor_alert_state.dart';

/// Provides a [DigitalOcean Monitoring](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Monitoring)
/// resource. Monitor alerts can be configured to alert about, e.g., disk or memory
/// usage exceeding a certain threshold or traffic at a certain limit. Notifications
/// can be sent to either an email address or a Slack channel.
///
/// ## Import
///
/// Monitor alerts can be imported using the monitor alert `uuid`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/monitorAlert:MonitorAlert cpu_alert b8ecd2ab-2267-4a5e-8692-cbf1d32583e3
/// ```
class MonitorAlert extends pulumi.CustomResource {
  /// How to send notifications about the alerts. This is a list with one element, .
  /// Note that for Slack, the DigitalOcean app needs to have permissions for your workspace. You can
  /// read more in [Slack's documentation](https://slack.com/intl/en-dk/help/articles/222386767-Manage-app-installation-settings-for-your-workspace)
  late final pulumi.Output<MonitorAlertAlerts> alerts;
  /// The comparison for `value`.
  /// This may be either `GreaterThan` or `LessThan`.
  late final pulumi.Output<String> compare;
  /// The description of the alert.
  late final pulumi.Output<String> description;
  /// The status of the alert.
  late final pulumi.Output<bool?> enabled;
  /// A list of IDs for the resources to which the alert policy applies.
  late final pulumi.Output<List<String>?> entities;
  /// A list of tags. When an included tag is added to a resource, the alert policy will apply to it.
  late final pulumi.Output<List<String>?> tags;
  /// The type of the alert.
  /// This may be one of `v1/insights/droplet/load_1`, `v1/insights/droplet/load_5`, `v1/insights/droplet/load_15`,
  /// `v1/insights/droplet/memory_utilization_percent`, `v1/insights/droplet/disk_utilization_percent`,
  /// `v1/insights/droplet/cpu`, `v1/insights/droplet/disk_read`, `v1/insights/droplet/disk_write`,
  /// `v1/insights/droplet/public_outbound_bandwidth`, `v1/insights/droplet/public_inbound_bandwidth`,
  /// `v1/insights/droplet/private_outbound_bandwidth`, `v1/insights/droplet/private_inbound_bandwidth`,
  /// `v1/insights/lbaas/avg_cpu_utilization_percent`, `v1/insights/lbaas/connection_utilization_percent`,
  /// `v1/insights/lbaas/droplet_health`, `v1/insights/lbaas/tls_connections_per_second_utilization_percent`,
  /// `v1/insights/lbaas/increase_in_http_error_rate_percentage_5xx`, `v1/insights/lbaas/increase_in_http_error_rate_percentage_4xx`,
  /// `v1/insights/lbaas/increase_in_http_error_rate_count_5xx`, `v1/insights/lbaas/increase_in_http_error_rate_count_4xx`,
  /// `v1/insights/lbaas/high_http_request_response_time`, `v1/insights/lbaas/high_http_request_response_time_50p`,
  /// `v1/insights/lbaas/high_http_request_response_time_95p`, `v1/insights/lbaas/high_http_request_response_time_99p`,
  /// `v1/dbaas/alerts/load_15_alerts`, `v1/dbaas/alerts/cpu_alerts`, `v1/dbaas/alerts/memory_utilization_alerts`, or
  /// `v1/dbaas/alerts/disk_utilization_alerts`.
  late final pulumi.Output<String> type;
  /// The uuid of the alert.
  late final pulumi.Output<String> uuid;
  /// The value to start alerting at, e.g., 90% or 85Mbps. This is a floating-point number.
  /// DigitalOcean will show the correct unit in the web panel.
  late final pulumi.Output<double> value;
  /// The time frame of the alert. Either `5m`, `10m`, `30m`, or `1h`.
  late final pulumi.Output<String> window;

  /// Creates a new [MonitorAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorAlert]. {@macro pulumi_index_monitor_alert_monitor_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorAlert(
    String name, {
    MonitorAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/monitorAlert:MonitorAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alerts = registerOutput<MonitorAlertAlerts>('alerts');
    this.compare = registerOutput<String>('compare');
    this.description = registerOutput<String>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.entities = registerOutput<List<String>?>('entities');
    this.tags = registerOutput<List<String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uuid = registerOutput<String>('uuid');
    this.value = registerOutput<double>('value');
    this.window = registerOutput<String>('window');
  }

  /// Gets an existing [MonitorAlert] resource's state with the given [name] and [id].
  static MonitorAlert get(
    String name,
    pulumi.Input<String> id, {
    MonitorAlertState? state,
  }) {
    return MonitorAlert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorAlert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/monitorAlert:MonitorAlert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alerts = registerOutput<MonitorAlertAlerts>('alerts');
    this.compare = registerOutput<String>('compare');
    this.description = registerOutput<String>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.entities = registerOutput<List<String>?>('entities');
    this.tags = registerOutput<List<String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uuid = registerOutput<String>('uuid');
    this.value = registerOutput<double>('value');
    this.window = registerOutput<String>('window');
  }
}
