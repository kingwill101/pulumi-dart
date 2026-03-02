// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_upgrade_policy.dart';
import 'application_user_assigned_identity.dart';
import 'managed_identity.dart';

/// {@template pulumi_servicefabric_managed_cluster_application_args_doc}
/// The set of arguments for ManagedClusterApplication.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_application_args_doc}
class ManagedClusterApplicationArgs {
  /// The name of the application resource.
  final pulumi.Input<String>? applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Describes the managed identities for an Azure resource.
  final pulumi.Input<ManagedIdentity>? identity;
  /// Resource location depends on the parent resource.
  final pulumi.Input<String>? location;
  /// List of user assigned identities for the application, each mapped to a friendly name.
  final pulumi.Input<List<ApplicationUserAssignedIdentity>>? managedIdentities;
  /// List of application parameters with overridden values from their default values specified in the application manifest.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes the policy for a monitored application upgrade.
  final pulumi.Input<ApplicationUpgradePolicy>? upgradePolicy;
  /// The version of the application type as defined in the application manifest.
  /// This name must be the full Arm Resource ID for the referenced application type version.
  final pulumi.Input<String>? version;

  /// Creates a new [ManagedClusterApplicationArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [identity] Describes the managed identities for an Azure resource.
  /// [location] Resource location depends on the parent resource.
  /// [managedIdentities] List of user assigned identities for the application, each mapped to a friendly name.
  /// [parameters] List of application parameters with overridden values from their default values specified in the application manifest.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Azure resource tags.
  /// [upgradePolicy] Describes the policy for a monitored application upgrade.
  /// [version] The version of the application type as defined in the application manifest.
  ManagedClusterApplicationArgs({
    this.applicationName,
    required this.clusterName,
    this.identity,
    this.location,
    this.managedIdentities,
    this.parameters,
    required this.resourceGroupName,
    this.tags,
    this.upgradePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'clusterName': clusterName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedIdentities': ?pulumi.Input.mapOptionalInputValue<List<ApplicationUserAssignedIdentity>, List<Map<String, dynamic>>>(managedIdentities, (value) => pulumi.Input.encodeList<ApplicationUserAssignedIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ManagedClusterApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterApplicationArgs(
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedIdentities: map['managedIdentities'] == null ? null : (pulumi.Input.decodeList<ApplicationUserAssignedIdentity>(map['managedIdentities']!, (value) => ApplicationUserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      upgradePolicy: map['upgradePolicy'] == null ? null : (ApplicationUpgradePolicy.fromMap((map['upgradePolicy']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

