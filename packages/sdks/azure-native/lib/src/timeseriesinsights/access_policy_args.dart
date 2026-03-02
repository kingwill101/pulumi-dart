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
      accessPolicyName: map['accessPolicyName'] == null ? null : (map['accessPolicyName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentName: (map['environmentName'] as String).input(),
      principalObjectId: map['principalObjectId'] == null ? null : (map['principalObjectId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      roles: map['roles'] == null ? null : ((map['roles']! as List).cast<String>()).input(),
    );
  }
}

