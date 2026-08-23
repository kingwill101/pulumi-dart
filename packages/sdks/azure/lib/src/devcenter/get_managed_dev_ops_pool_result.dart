// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_azure_devops_organization.dart';
import 'get_managed_dev_ops_pool_identity.dart';
import 'get_managed_dev_ops_pool_stateful_agent.dart';
import 'get_managed_dev_ops_pool_stateless_agent.dart';
import 'get_managed_dev_ops_pool_virtual_machine_scale_set_fabric.dart';

/// Result data returned by getManagedDevOpsPool.
class GetManagedDevOpsPoolResult {
  /// An `azureDevopsOrganization` block as defined below.
  final List<GetManagedDevOpsPoolAzureDevopsOrganization> azureDevopsOrganizations;
  /// The ID of the Dev Center project.
  final String devCenterProjectId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetManagedDevOpsPoolIdentity> identities;
  /// The Azure Region where the Managed DevOps Pool exists.
  final String location;
  /// The maximum number of agents that can be created.
  final int maximumConcurrency;
  final String name;
  final String resourceGroupName;
  /// A `statefulAgent` block as defined below.
  final List<GetManagedDevOpsPoolStatefulAgent> statefulAgents;
  /// A `statelessAgent` block as defined below.
  final List<GetManagedDevOpsPoolStatelessAgent> statelessAgents;
  /// A mapping of tags assigned to the Managed DevOps Pool.
  final Map<String, String> tags;
  /// A `virtualMachineScaleSetFabric` block as defined below.
  final List<GetManagedDevOpsPoolVirtualMachineScaleSetFabric> virtualMachineScaleSetFabrics;
  /// The work folder for every agent in the pool.
  final String workFolder;

  /// Creates a new [GetManagedDevOpsPoolResult].
  /// [azureDevopsOrganizations] An `azureDevopsOrganization` block as defined below.
  /// [devCenterProjectId] The ID of the Dev Center project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Managed DevOps Pool exists.
  /// [maximumConcurrency] The maximum number of agents that can be created.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [statefulAgents] A `statefulAgent` block as defined below.
  /// [statelessAgents] A `statelessAgent` block as defined below.
  /// [tags] A mapping of tags assigned to the Managed DevOps Pool.
  /// [virtualMachineScaleSetFabrics] A `virtualMachineScaleSetFabric` block as defined below.
  /// [workFolder] The work folder for every agent in the pool.
  const GetManagedDevOpsPoolResult({
    required this.azureDevopsOrganizations,
    required this.devCenterProjectId,
    required this.id,
    required this.identities,
    required this.location,
    required this.maximumConcurrency,
    required this.name,
    required this.resourceGroupName,
    required this.statefulAgents,
    required this.statelessAgents,
    required this.tags,
    required this.virtualMachineScaleSetFabrics,
    required this.workFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDevopsOrganizations': pulumi.Input.encodeList<GetManagedDevOpsPoolAzureDevopsOrganization, Map<String, dynamic>>(azureDevopsOrganizations, (value) => value.toMap()),
      'devCenterProjectId': devCenterProjectId,
      'id': id,
      'identities': pulumi.Input.encodeList<GetManagedDevOpsPoolIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'maximumConcurrency': maximumConcurrency,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'statefulAgents': pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgent, Map<String, dynamic>>(statefulAgents, (value) => value.toMap()),
      'statelessAgents': pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgent, Map<String, dynamic>>(statelessAgents, (value) => value.toMap()),
      'tags': tags,
      'virtualMachineScaleSetFabrics': pulumi.Input.encodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabric, Map<String, dynamic>>(virtualMachineScaleSetFabrics, (value) => value.toMap()),
      'workFolder': workFolder,
    };
  }

  factory GetManagedDevOpsPoolResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolResult(
      azureDevopsOrganizations: pulumi.Input.decodeList<GetManagedDevOpsPoolAzureDevopsOrganization>(map['azureDevopsOrganizations']!, (value) => GetManagedDevOpsPoolAzureDevopsOrganization.fromMap((value as Map).cast<String, dynamic>())),
      devCenterProjectId: map['devCenterProjectId'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetManagedDevOpsPoolIdentity>(map['identities']!, (value) => GetManagedDevOpsPoolIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      maximumConcurrency: map['maximumConcurrency'] as int,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      statefulAgents: pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgent>(map['statefulAgents']!, (value) => GetManagedDevOpsPoolStatefulAgent.fromMap((value as Map).cast<String, dynamic>())),
      statelessAgents: pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgent>(map['statelessAgents']!, (value) => GetManagedDevOpsPoolStatelessAgent.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualMachineScaleSetFabrics: pulumi.Input.decodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabric>(map['virtualMachineScaleSetFabrics']!, (value) => GetManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap((value as Map).cast<String, dynamic>())),
      workFolder: map['workFolder'] as String,
    );
  }
}
