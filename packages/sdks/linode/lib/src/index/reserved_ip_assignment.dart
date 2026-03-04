import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ip_assignment_args.dart';
import 'reserved_ip_assignment_state.dart';

class ReservedIpAssignment extends pulumi.CustomResource {
  /// The resulting IPv4 address.
  late final pulumi.Output<String> address;

  /// If true, the instance will be rebooted to update network interfaces. This functionality is not affected by the `skip_implicit_reboots` provider argument.
  late final pulumi.Output<bool> applyImmediately;

  /// The default gateway for this address
  late final pulumi.Output<String> gateway;

  /// The ID of the Linode to allocate an IPv4 address for.
  late final pulumi.Output<int> linodeId;

  /// The number of bits set in the subnet mask.
  late final pulumi.Output<int> prefix;

  /// Whether the IPv4 address is public or private.
  late final pulumi.Output<bool> public;

  /// The reverse DNS assigned to this address.
  late final pulumi.Output<String> rdns;

  /// The region this IP resides in.
  late final pulumi.Output<String> region;

  /// The reservation status of the IP address
  late final pulumi.Output<bool> reserved;

  /// The mask that separates host bits from network bits for this address.
  late final pulumi.Output<String> subnetMask;

  /// The type of IP address.
  late final pulumi.Output<String> type;

  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  late final pulumi.Output<List<Map<String, dynamic>>> vpcNat11s;

  /// Creates a new [ReservedIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedIpAssignment]. {@macro pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedIpAssignment(
    String name, {
    ReservedIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/reservedIpAssignment:ReservedIpAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    applyImmediately = registerOutput<bool>('applyImmediately');
    gateway = registerOutput<String>('gateway');
    linodeId = registerOutput<int>('linodeId');
    prefix = registerOutput<int>('prefix');
    public = registerOutput<bool>('public');
    rdns = registerOutput<String>('rdns');
    region = registerOutput<String>('region');
    reserved = registerOutput<bool>('reserved');
    subnetMask = registerOutput<String>('subnetMask');
    type = registerOutput<String>('type');
    vpcNat11s = registerOutput<List<Map<String, dynamic>>>('vpcNat11s');
  }

  /// Gets an existing [ReservedIpAssignment] resource's state with the given [name] and [id].
  static ReservedIpAssignment get(
    String name,
    pulumi.Input<String> id, {
    ReservedIpAssignmentState? state,
  }) {
    return ReservedIpAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReservedIpAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/reservedIpAssignment:ReservedIpAssignment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    applyImmediately = registerOutput<bool>('applyImmediately');
    gateway = registerOutput<String>('gateway');
    linodeId = registerOutput<int>('linodeId');
    prefix = registerOutput<int>('prefix');
    public = registerOutput<bool>('public');
    rdns = registerOutput<String>('rdns');
    region = registerOutput<String>('region');
    reserved = registerOutput<bool>('reserved');
    subnetMask = registerOutput<String>('subnetMask');
    type = registerOutput<String>('type');
    vpcNat11s = registerOutput<List<Map<String, dynamic>>>('vpcNat11s');
  }
}
