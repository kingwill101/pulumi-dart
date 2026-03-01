import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_availability_group_listener_args.dart';
import 'virtual_machine_availability_group_listener_load_balancer_configuration.dart';
import 'virtual_machine_availability_group_listener_multi_subnet_ip_configuration.dart';
import 'virtual_machine_availability_group_listener_replica.dart';
import 'virtual_machine_availability_group_listener_state.dart';

/// Manages a Microsoft SQL Virtual Machine Availability Group Listener.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getSubnet({
///     name: "examplesubnet",
///     virtualNetworkName: "examplevnet",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetLB = azure.lb.getLB({
///     name: "example-lb",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetVirtualMachine = (new Array(2)).map((_, i) => i).map(__index => (azure.compute.getVirtualMachine({
///     name: "example-vm",
///     resourceGroupName: "example-resources",
/// })));
/// const exampleVirtualMachineGroup = new azure.mssql.VirtualMachineGroup("example", {
///     name: "examplegroup",
///     resourceGroupName: "example-resources",
///     location: "West Europe",
///     sqlImageOffer: "SQL2017-WS2016",
///     sqlImageSku: "Developer",
///     wsfcDomainProfile: {
///         fqdn: "testdomain.com",
///         clusterSubnetType: "SingleSubnet",
///     },
/// });
/// const exampleVirtualMachine: azure.mssql.VirtualMachine[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleVirtualMachine.push(new azure.mssql.VirtualMachine(`example-${range.value}`, {
///         virtualMachineId: exampleGetVirtualMachine[range.value].then(exampleGetVirtualMachine => exampleGetVirtualMachine.id),
///         sqlLicenseType: "PAYG",
///         sqlVirtualMachineGroupId: exampleVirtualMachineGroup.id,
///         wsfcDomainCredential: {
///             clusterBootstrapAccountPassword: "P@ssw0rd1234!",
///             clusterOperatorAccountPassword: "P@ssw0rd1234!",
///             sqlServiceAccountPassword: "P@ssw0rd1234!",
///         },
///     }));
/// }
/// const exampleVirtualMachineAvailabilityGroupListener = new azure.mssql.VirtualMachineAvailabilityGroupListener("example", {
///     name: "listener1",
///     availabilityGroupName: "availabilitygroup1",
///     port: 1433,
///     sqlVirtualMachineGroupId: exampleVirtualMachineGroup.id,
///     loadBalancerConfiguration: {
///         loadBalancerId: exampleGetLB.then(exampleGetLB => exampleGetLB.id),
///         privateIpAddress: "10.0.2.11",
///         probePort: 51572,
///         subnetId: example.then(example => example.id),
///         sqlVirtualMachineIds: [
///             exampleVirtualMachine[0].id,
///             exampleVirtualMachine[1].id,
///         ],
///     },
///     replicas: [
///         {
///             sqlVirtualMachineId: exampleVirtualMachine[0].id,
///             role: "Primary",
///             commit: "Synchronous_Commit",
///             failover: "Automatic",
///             readableSecondary: "All",
///         },
///         {
///             sqlVirtualMachineId: exampleVirtualMachine[1].id,
///             role: "Secondary",
///             commit: "Asynchronous_Commit",
///             failover: "Manual",
///             readableSecondary: "No",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_subnet(name="examplesubnet",
///     virtual_network_name="examplevnet",
///     resource_group_name="example-resources")
/// example_get_lb = azure.lb.get_lb(name="example-lb",
///     resource_group_name="example-resources")
/// example_get_virtual_machine = [azure.compute.get_virtual_machine(name="example-vm",
///     resource_group_name="example-resources") for __index in range(2)]
/// example_virtual_machine_group = azure.mssql.VirtualMachineGroup("example",
///     name="examplegroup",
///     resource_group_name="example-resources",
///     location="West Europe",
///     sql_image_offer="SQL2017-WS2016",
///     sql_image_sku="Developer",
///     wsfc_domain_profile={
///         "fqdn": "testdomain.com",
///         "cluster_subnet_type": "SingleSubnet",
///     })
/// example_virtual_machine = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_virtual_machine.append(azure.mssql.VirtualMachine(f"example-{range['value']}",
///         virtual_machine_id=example_get_virtual_machine[range["value"]].id,
///         sql_license_type="PAYG",
///         sql_virtual_machine_group_id=example_virtual_machine_group.id,
///         wsfc_domain_credential={
///             "cluster_bootstrap_account_password": "P@ssw0rd1234!",
///             "cluster_operator_account_password": "P@ssw0rd1234!",
///             "sql_service_account_password": "P@ssw0rd1234!",
///         }))
/// example_virtual_machine_availability_group_listener = azure.mssql.VirtualMachineAvailabilityGroupListener("example",
///     name="listener1",
///     availability_group_name="availabilitygroup1",
///     port=1433,
///     sql_virtual_machine_group_id=example_virtual_machine_group.id,
///     load_balancer_configuration={
///         "load_balancer_id": example_get_lb.id,
///         "private_ip_address": "10.0.2.11",
///         "probe_port": 51572,
///         "subnet_id": example.id,
///         "sql_virtual_machine_ids": [
///             example_virtual_machine[0].id,
///             example_virtual_machine[1].id,
///         ],
///     },
///     replicas=[
///         {
///             "sql_virtual_machine_id": example_virtual_machine[0].id,
///             "role": "Primary",
///             "commit": "Synchronous_Commit",
///             "failover": "Automatic",
///             "readable_secondary": "All",
///         },
///         {
///             "sql_virtual_machine_id": example_virtual_machine[1].id,
///             "role": "Secondary",
///             "commit": "Asynchronous_Commit",
///             "failover": "Manual",
///             "readable_secondary": "No",
///         },
///     ])
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SqlVirtualMachine` - 2023-10-01
///
/// ## Import
///
/// Microsoft SQL Virtual Machine Availability Group Listeners can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/virtualMachineAvailabilityGroupListener:VirtualMachineAvailabilityGroupListener example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/vmgroup1/availabilityGroupListeners/listener1
/// ```
class VirtualMachineAvailabilityGroupListener extends pulumi.CustomResource {
  /// The name of the Availability Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> availabilityGroupName;
  /// A `load_balancer_configuration` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Either one of `load_balancer_configuration` or `multi_subnet_ip_configuration` must be specified.
  late final pulumi.Output<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration?> loadBalancerConfiguration;
  /// One or more `multi_subnet_ip_configuration` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>?> multiSubnetIpConfigurations;
  /// The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The port of the listener. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> port;
  /// One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<VirtualMachineAvailabilityGroupListenerReplica>> replicas;
  /// The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sqlVirtualMachineGroupId;

  /// Creates a new [VirtualMachineAvailabilityGroupListener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineAvailabilityGroupListener]. {@macro pulumi_mssql_virtual_machine_availability_group_listener_virtual_machine_availability_group_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineAvailabilityGroupListener(
    String name, {
    VirtualMachineAvailabilityGroupListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/virtualMachineAvailabilityGroupListener:VirtualMachineAvailabilityGroupListener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityGroupName = registerOutput<String?>('availabilityGroupName');
    this.loadBalancerConfiguration = registerOutput<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration?>('loadBalancerConfiguration');
    this.multiSubnetIpConfigurations = registerOutput<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>?>('multiSubnetIpConfigurations');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.replicas = registerOutput<List<VirtualMachineAvailabilityGroupListenerReplica>>('replicas');
    this.sqlVirtualMachineGroupId = registerOutput<String>('sqlVirtualMachineGroupId');
  }

  /// Gets an existing [VirtualMachineAvailabilityGroupListener] resource's state with the given [name] and [id].
  static VirtualMachineAvailabilityGroupListener get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineAvailabilityGroupListenerState? state,
  }) {
    return VirtualMachineAvailabilityGroupListener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineAvailabilityGroupListener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/virtualMachineAvailabilityGroupListener:VirtualMachineAvailabilityGroupListener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityGroupName = registerOutput<String?>('availabilityGroupName');
    this.loadBalancerConfiguration = registerOutput<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration?>('loadBalancerConfiguration');
    this.multiSubnetIpConfigurations = registerOutput<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>?>('multiSubnetIpConfigurations');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.replicas = registerOutput<List<VirtualMachineAvailabilityGroupListenerReplica>>('replicas');
    this.sqlVirtualMachineGroupId = registerOutput<String>('sqlVirtualMachineGroupId');
  }
}
