// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_access_policy_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_access_policy_args_doc}
class AccessPolicyArgs {
  /// Name of the access policy.
  final pulumi.Input<String>? accessPolicyName;
  /// An description of the access policy.
  final pulumi.Input<String>? description;
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// The objectId of the principal in Azure Active Directory.
  final pulumi.Input<String>? principalObjectId;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The list of roles the principal is assigned on the environment.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [AccessPolicyArgs].
  /// [accessPolicyName] Name of the access policy.
  /// [description] An description of the access policy.
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [principalObjectId] The objectId of the principal in Azure Active Directory.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [roles] The list of roles the principal is assigned on the environment.
  AccessPolicyArgs({
    this.accessPolicyName,
    this.description,
    required this.environmentName,
    this.principalObjectId,
    required this.resourceGroupName,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'description': ?description,
      'environmentName': environmentName,
      'principalObjectId': ?principalObjectId,
      'resourceGroupName': resourceGroupName,
      'roles': ?roles,
    };
  }

  factory AccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs(
      accessPolicyName: (() { final guardedValue = map['accessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      principalObjectId: (() { final guardedValue = map['principalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

