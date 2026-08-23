// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_azure_devops_organization.dart';
import 'managed_dev_ops_pool_identity.dart';
import 'managed_dev_ops_pool_stateful_agent.dart';
import 'managed_dev_ops_pool_stateless_agent.dart';
import 'managed_dev_ops_pool_virtual_machine_scale_set_fabric.dart';

/// Input properties used for looking up and filtering ManagedDevOpsPool resources.
class ManagedDevOpsPoolState {
  /// An `azureDevopsOrganization` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolAzureDevopsOrganization>? azureDevopsOrganization;
  /// The ID of the Dev Center project.
  final pulumi.Input<String>? devCenterProjectId;
  /// An `identity` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolIdentity>? identity;
  /// The Azure Region where the Managed DevOps Pool should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Defines how many resources can there be created at any given time. Possible values range between `1` and `10000`.
  final pulumi.Input<int>? maximumConcurrency;
  /// The name which should be used for this Managed DevOps Pool. The name must be between 3 and 44 characters, can only include alphanumeric characters, periods (`.`) and hyphens (`-`), must start with an alphanumeric character and cannot end with a period (`.`). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Managed DevOps Pool should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `statefulAgent` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolStatefulAgent>? statefulAgent;
  /// A `statelessAgent` block as defined below.
  ///
  /// &gt; **Note:** Exactly one of `statefulAgent` or `statelessAgent` must be specified.
  final pulumi.Input<ManagedDevOpsPoolStatelessAgent>? statelessAgent;
  /// A mapping of tags which should be assigned to the Managed DevOps Pool.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `virtualMachineScaleSetFabric` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolVirtualMachineScaleSetFabric>? virtualMachineScaleSetFabric;
  /// Specifies the work folder for every agent in the pool.
  final pulumi.Input<String>? workFolder;

  /// Creates a new [ManagedDevOpsPoolState].
  /// [azureDevopsOrganization] An `azureDevopsOrganization` block as defined below.
  /// [devCenterProjectId] The ID of the Dev Center project.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Managed DevOps Pool should exist. Changing this forces a new resource to be created.
  /// [maximumConcurrency] Defines how many resources can there be created at any given time. Possible values range between `1` and `10000`.
  /// [name] The name which should be used for this Managed DevOps Pool. The name must be between 3 and 44 characters, can only include alphanumeric characters, periods (`.`) and hyphens (`-`), must start with an alphanumeric character and cannot end with a period (`.`). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Managed DevOps Pool should exist. Changing this forces a new resource to be created.
  /// [statefulAgent] A `statefulAgent` block as defined below.
  /// [statelessAgent] A `statelessAgent` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Managed DevOps Pool.
  /// [virtualMachineScaleSetFabric] A `virtualMachineScaleSetFabric` block as defined below.
  /// [workFolder] Specifies the work folder for every agent in the pool.
  const ManagedDevOpsPoolState({
    this.azureDevopsOrganization,
    this.devCenterProjectId,
    this.identity,
    this.location,
    this.maximumConcurrency,
    this.name,
    this.resourceGroupName,
    this.statefulAgent,
    this.statelessAgent,
    this.tags,
    this.virtualMachineScaleSetFabric,
    this.workFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDevopsOrganization': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolAzureDevopsOrganization, Map<String, dynamic>>(azureDevopsOrganization, (value) => value.toMap()),
      'devCenterProjectId': ?devCenterProjectId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maximumConcurrency': ?maximumConcurrency,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'statefulAgent': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolStatefulAgent, Map<String, dynamic>>(statefulAgent, (value) => value.toMap()),
      'statelessAgent': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolStatelessAgent, Map<String, dynamic>>(statelessAgent, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineScaleSetFabric': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolVirtualMachineScaleSetFabric, Map<String, dynamic>>(virtualMachineScaleSetFabric, (value) => value.toMap()),
      'workFolder': ?workFolder,
    };
  }

  factory ManagedDevOpsPoolState.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolState(
      azureDevopsOrganization: (() { final guardedValue = map['azureDevopsOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolAzureDevopsOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devCenterProjectId: (() { final guardedValue = map['devCenterProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumConcurrency: (() { final guardedValue = map['maximumConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statefulAgent: (() { final guardedValue = map['statefulAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolStatefulAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statelessAgent: (() { final guardedValue = map['statelessAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolStatelessAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualMachineScaleSetFabric: (() { final guardedValue = map['virtualMachineScaleSetFabric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workFolder: (() { final guardedValue = map['workFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
