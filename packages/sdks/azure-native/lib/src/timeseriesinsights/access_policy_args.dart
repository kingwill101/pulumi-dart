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
    pulumi.Output<String>? accessPolicyName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> environmentName,
    pulumi.Output<String>? principalObjectId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<String>>? roles,
  }) :
      accessPolicyName = pulumi.Input.asOptionalInput<String>(accessPolicyName),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      principalObjectId = pulumi.Input.asOptionalInput<String>(principalObjectId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roles = pulumi.Input.asOptionalInput<List<String>>(roles);

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
      accessPolicyName: map['accessPolicyName'] == null ? null : pulumi.Output.create<String>(map['accessPolicyName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      principalObjectId: map['principalObjectId'] == null ? null : pulumi.Output.create<String>(map['principalObjectId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<String>>((map['roles'] as List).cast<String>()),
    );
  }
}

