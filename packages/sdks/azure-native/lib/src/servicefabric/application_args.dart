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
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'managedIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationUserAssignedIdentity>,
            List<Map<String, dynamic>>
          >(
            managedIdentities,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationUserAssignedIdentity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'upgradePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationUpgradePolicy,
            Map<String, dynamic>
          >(upgradePolicy, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationName: (() {
        final guardedValue = map['applicationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedIdentities: (() {
        final guardedValue = map['managedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationUserAssignedIdentity>(
            guardedValue,
            (value) => ApplicationUserAssignedIdentity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      upgradePolicy: (() {
        final guardedValue = map['upgradePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationUpgradePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
