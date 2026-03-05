// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_solutions_list_application_tokens_args_doc}
/// Arguments for listApplicationTokens.
/// {@endtemplate}
/// {@macro pulumi_solutions_list_application_tokens_args_doc}
class ListApplicationTokensArgs {
  /// The name of the managed application.
  final pulumi.Input<String> applicationName;
  /// The authorization audience.
  final pulumi.Input<String>? authorizationAudience;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The user assigned identities.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ListApplicationTokensArgs].
  /// [applicationName] The name of the managed application.
  /// [authorizationAudience] The authorization audience.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userAssignedIdentities] The user assigned identities.
  ListApplicationTokensArgs({
    required this.applicationName,
    this.authorizationAudience,
    required this.resourceGroupName,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'authorizationAudience': ?authorizationAudience,
      'resourceGroupName': resourceGroupName,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ListApplicationTokensArgs.fromMap(Map<String, dynamic> map) {
    return ListApplicationTokensArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      authorizationAudience: (() { final guardedValue = map['authorizationAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

