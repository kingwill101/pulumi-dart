import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_args.dart';
import 'uptime_check_state.dart';

/// Provides a [DigitalOcean Uptime Checks](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Uptime)
/// resource. Uptime Checks provide the ability to monitor your endpoints from around the world, and alert you when they're slow, unavailable, or SSL certificates are expiring.
///
/// ## Import
///
/// Uptime checks can be imported using the uptime check's `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/uptimeCheck:UptimeCheck target 5a4981aa-9653-4bd1-bef5-d6bff52042e4
/// ```
class UptimeCheck extends pulumi.CustomResource {
  /// A boolean value indicating whether the check is enabled/disabled.
  late final pulumi.Output<bool?> enabled;
  /// A human-friendly display name for the check.
  late final pulumi.Output<String> name;
  /// An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  late final pulumi.Output<List<String>?> regions;
  /// The endpoint to perform healthchecks on.
  late final pulumi.Output<String> target;
  /// The type of health check to perform: 'ping' 'http' 'https'.
  late final pulumi.Output<String?> type;

  /// Creates a new [UptimeCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UptimeCheck]. {@macro pulumi_index_uptime_check_uptime_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UptimeCheck(
    String name, {
    UptimeCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/uptimeCheck:UptimeCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    regions = registerOutput<List<String>?>('regions');
    target = registerOutput<String>('target');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [UptimeCheck] resource's state with the given [name] and [id].
  static UptimeCheck get(
    String name,
    pulumi.Input<String> id, {
    UptimeCheckState? state,
  }) {
    return UptimeCheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UptimeCheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/uptimeCheck:UptimeCheck',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    regions = registerOutput<List<String>?>('regions');
    target = registerOutput<String>('target');
    type = registerOutput<String?>('type');
  }
}
