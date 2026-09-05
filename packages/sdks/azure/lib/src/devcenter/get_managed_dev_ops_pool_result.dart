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
  final List<GetManagedDevOpsPoolAzureDevopsOrganization>? azureDevopsOrganizations;
  /// The ID of the Dev Center project.
  final String? devCenterProjectId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetManagedDevOpsPoolIdentity>? identities;
  /// The Azure Region where the Managed DevOps Pool exists.
  final String? location;
  /// The maximum number of agents that can be created.
  final int? maximumConcurrency;
  final String? name;
  final String? resourceGroupName;
  /// A `statefulAgent` block as defined below.
  final List<GetManagedDevOpsPoolStatefulAgent>? statefulAgents;
  /// A `statelessAgent` block as defined below.
  final List<GetManagedDevOpsPoolStatelessAgent>? statelessAgents;
  /// A mapping of tags assigned to the Managed DevOps Pool.
  final Map<String, String>? tags;
  /// A `virtualMachineScaleSetFabric` block as defined below.
  final List<GetManagedDevOpsPoolVirtualMachineScaleSetFabric>? virtualMachineScaleSetFabrics;
  /// The work folder for every agent in the pool.
  final String? workFolder;

  /// Creates a new [GetManagedDevOpsPoolResult].
  /// [azureDevopsOrganizations] An `azureDevopsOrganization` block as defined below.
  /// [devCenterProjectId] The ID of the Dev Center project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Managed DevOps Pool exists.
  /// [maximumConcurrency] The maximum number of agents that can be created.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [statefulAgents] A `statefulAgent` block as defined below.
  /// [statelessAgents] A `statelessAgent` block as defined below.
  /// [tags] A mapping of tags assigned to the Managed DevOps Pool.
  /// [virtualMachineScaleSetFabrics] A `virtualMachineScaleSetFabric` block as defined below.
  /// [workFolder] The work folder for every agent in the pool.
  const GetManagedDevOpsPoolResult({
    this.azureDevopsOrganizations,
    this.devCenterProjectId,
    this.id,
    this.identities,
    this.location,
    this.maximumConcurrency,
    this.name,
    this.resourceGroupName,
    this.statefulAgents,
    this.statelessAgents,
    this.tags,
    this.virtualMachineScaleSetFabrics,
    this.workFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDevopsOrganizations': ?(() { final guardedValue = azureDevopsOrganizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDevOpsPoolAzureDevopsOrganization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'devCenterProjectId': ?devCenterProjectId,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDevOpsPoolIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'maximumConcurrency': ?maximumConcurrency,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'statefulAgents': ?(() { final guardedValue = statefulAgents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statelessAgents': ?(() { final guardedValue = statelessAgents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'virtualMachineScaleSetFabrics': ?(() { final guardedValue = virtualMachineScaleSetFabrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabric, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workFolder': ?workFolder,
    };
  }

  factory GetManagedDevOpsPoolResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolResult(
      azureDevopsOrganizations: (() { final guardedValue = map['azureDevopsOrganizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDevOpsPoolAzureDevopsOrganization>(guardedValue, (value) => GetManagedDevOpsPoolAzureDevopsOrganization.fromMap((value as Map).cast<String, dynamic>())); })(),
      devCenterProjectId: (() { final guardedValue = map['devCenterProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDevOpsPoolIdentity>(guardedValue, (value) => GetManagedDevOpsPoolIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumConcurrency: (() { final guardedValue = map['maximumConcurrency']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statefulAgents: (() { final guardedValue = map['statefulAgents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgent>(guardedValue, (value) => GetManagedDevOpsPoolStatefulAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      statelessAgents: (() { final guardedValue = map['statelessAgents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgent>(guardedValue, (value) => GetManagedDevOpsPoolStatelessAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualMachineScaleSetFabrics: (() { final guardedValue = map['virtualMachineScaleSetFabrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDevOpsPoolVirtualMachineScaleSetFabric>(guardedValue, (value) => GetManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap((value as Map).cast<String, dynamic>())); })(),
      workFolder: (() { final guardedValue = map['workFolder']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
