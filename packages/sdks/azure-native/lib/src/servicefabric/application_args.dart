// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_upgrade_policy.dart';
import 'application_user_assigned_identity.dart';
import 'managed_identity.dart';

/// {@template pulumi_servicefabric_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_application_args_doc}
class ApplicationArgs {
  /// The name of the application resource.
  final pulumi.Input<String>? applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Describes the managed identities for an Azure resource.
  final pulumi.Input<ManagedIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// List of user assigned identities for the application, each mapped to a friendly name.
  final pulumi.Input<List<ApplicationUserAssignedIdentity>>? managedIdentities;
  /// List of application parameters with overridden values from their default values specified in the application manifest.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes the policy for a monitored application upgrade.
  final pulumi.Input<ApplicationUpgradePolicy>? upgradePolicy;
  /// The version of the application type as defined in the application manifest.
  /// This name must be the full Arm Resource ID for the referenced application type version.
  final pulumi.Input<String>? version;

  /// Creates a new [ApplicationArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [identity] Describes the managed identities for an Azure resource.
  /// [location] The geo-location where the resource lives
  /// [managedIdentities] List of user assigned identities for the application, each mapped to a friendly name.
  /// [parameters] List of application parameters with overridden values from their default values specified in the application manifest.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [upgradePolicy] Describes the policy for a monitored application upgrade.
  /// [version] The version of the application type as defined in the application manifest.
  ApplicationArgs({
    pulumi.Output<String>? applicationName,
    required pulumi.Output<String> clusterName,
    pulumi.Output<ManagedIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<List<ApplicationUserAssignedIdentity>>? managedIdentities,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ApplicationUpgradePolicy>? upgradePolicy,
    pulumi.Output<String>? version,
  }) :
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      identity = pulumi.Input.asOptionalInput<ManagedIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedIdentities = pulumi.Input.asOptionalInput<List<ApplicationUserAssignedIdentity>>(managedIdentities),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradePolicy = pulumi.Input.asOptionalInput<ApplicationUpgradePolicy>(upgradePolicy),
      version = pulumi.Input.asOptionalInput<String>(version);

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

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedIdentity>(ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedIdentities: map['managedIdentities'] == null ? null : pulumi.Output.create<List<ApplicationUserAssignedIdentity>>(pulumi.Input.decodeList<ApplicationUserAssignedIdentity>(map['managedIdentities'], (value) => ApplicationUserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>()))),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<ApplicationUpgradePolicy>(ApplicationUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

