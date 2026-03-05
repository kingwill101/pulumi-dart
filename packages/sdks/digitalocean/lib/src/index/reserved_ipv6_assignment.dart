import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ipv6_assignment_args.dart';
import 'reserved_ipv6_assignment_state.dart';

/// Provides a resource for assigning an existing DigitalOcean reserved IPv6 to a Droplet. This
/// makes it easy to provision reserved IPv6 addresses that are not tied to the lifecycle of your Droplet.
///
/// ## Import
///
/// Reserved IPv6 assignments can be imported using the reserved IPv6 itself and the `id` of
/// the Droplet joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/reservedIpv6Assignment:ReservedIpv6Assignment foobar 2409:40d0:fa:27dd:9b24:7074:7b85:eee6,123456
/// ```
class ReservedIpv6Assignment extends pulumi.CustomResource {
  /// The ID of Droplet that the reserved IPv6 will be assigned to.
  late final pulumi.Output<int> dropletId;
  /// The reserved IPv6 to assign to the Droplet.
  late final pulumi.Output<String> ip;

  /// Creates a new [ReservedIpv6Assignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedIpv6Assignment]. {@macro pulumi_index_reserved_ipv6_assignment_reserved_ipv6_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedIpv6Assignment(
    String name, {
    ReservedIpv6AssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/reservedIpv6Assignment:ReservedIpv6Assignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dropletId = registerOutput<int>('dropletId');
    ip = registerOutput<String>('ip');
  }

  /// Gets an existing [ReservedIpv6Assignment] resource's state with the given [name] and [id].
  static ReservedIpv6Assignment get(
    String name,
    pulumi.Input<String> id, {
    ReservedIpv6AssignmentState? state,
  }) {
    return ReservedIpv6Assignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReservedIpv6Assignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/reservedIpv6Assignment:ReservedIpv6Assignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dropletId = registerOutput<int>('dropletId');
    ip = registerOutput<String>('ip');
  }
}
