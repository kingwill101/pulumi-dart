import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_alert_args.dart';
import 'uptime_alert_state.dart';

/// Provides a [DigitalOcean Uptime Alerts](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Uptime/operation/uptime_create_alert)
/// resource. Uptime Alerts provide the ability to add alerts to your [DigitalOcean Uptime Checks](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Uptime) when your endpoints are slow, unavailable, or SSL certificates are expiring.
///
/// ## Import
///
/// Uptime alerts can be imported using both the ID of the alert's parent check and
/// its own separated by a comma in the format: `check_id,alert_id`. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/uptimeAlert:UptimeAlert target 94a7d216-d821-11ee-a327-33d3239ffc4b,5a4981aa-9653-4bd1-bef5-d6bff52042e4
/// ```
class UptimeAlert extends pulumi.CustomResource {
  /// A unique identifier for a check
  late final pulumi.Output<String> checkId;

  /// The comparison operator used against the alert's threshold. Must be one of `greater_than` or `less_than`.
  late final pulumi.Output<String?> comparison;

  /// A human-friendly display name.
  late final pulumi.Output<String> name;

  /// The notification settings for a trigger alert.
  late final pulumi.Output<List<Map<String, dynamic>>> notifications;

  /// Period of time the threshold must be exceeded to trigger the alert. Must be one of `2m`, `3m`, `5m`, `10m`, `15m`, `30m` or `1h`.
  late final pulumi.Output<String?> period;

  /// The threshold at which the alert will enter a trigger state. The specific threshold is dependent on the alert type.
  late final pulumi.Output<int?> threshold;

  /// The type of health check to perform. Must be one of `latency`, `down`, `down_global` or `ssl_expiry`.
  late final pulumi.Output<String> type;

  /// Creates a new [UptimeAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UptimeAlert]. {@macro pulumi_index_uptime_alert_uptime_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UptimeAlert(
    String name, {
    UptimeAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/uptimeAlert:UptimeAlert',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    checkId = registerOutput<String>('checkId');
    comparison = registerOutput<String?>('comparison');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>>('notifications');
    period = registerOutput<String?>('period');
    threshold = registerOutput<int?>('threshold');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [UptimeAlert] resource's state with the given [name] and [id].
  static UptimeAlert get(
    String name,
    pulumi.Input<String> id, {
    UptimeAlertState? state,
  }) {
    return UptimeAlert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UptimeAlert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/uptimeAlert:UptimeAlert',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    checkId = registerOutput<String>('checkId');
    comparison = registerOutput<String?>('comparison');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>>('notifications');
    period = registerOutput<String?>('period');
    threshold = registerOutput<int?>('threshold');
    type = registerOutput<String>('type');
  }
}
