// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_auth_provider_type_params.dart';

/// {@template pulumi_agentidentity_auth_provider_auth_provider_args_doc}
/// The set of arguments for AuthProvider.
/// {@endtemplate}
/// {@macro pulumi_agentidentity_auth_provider_auth_provider_args_doc}
class AuthProviderArgs {
  /// List of scopes that are allowed to be requested for this auth_provider.
  /// If this list is non-empty, only scopes within this list may be requested.
  /// If this list is empty, all scopes may be requested.
  /// Scopes appearing in `blockedScopes` are disallowed even if they appear in
  /// `allowedScopes`.
  /// The number of allowed scopes is limited to 200.
  final pulumi.Input<List<String>>? allowedScopes;
  /// The ID to use for the AuthProvider, which will become the final segment
  /// of the AuthProvider's resource name.
  /// This value should be 1-63 characters, and valid characters
  /// are /a-z-/. The first character must be a lowercase letter, and the
  /// last character must be a lowercase letter or a number.
  final pulumi.Input<String> authProviderId;
  /// AuthProvider type specific parameters.
  /// Required when creating an auth_provider.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParams> authProviderTypeParams;
  /// List of scopes that are blocked from being requested for this
  /// auth_provider. If a scope appears in this list, it will not be requested,
  /// even if it also appears in `allowedScopes`. `blockedScopes` takes
  /// precedence over `allowedScopes`. The number of blocked scopes is limited
  /// to 200.
  final pulumi.Input<List<String>>? blockedScopes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the resource.
  /// Must be less than 256 characters.
  final pulumi.Input<String>? description;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Input only. Represents the workload identity in IAM `principal://` format of the
  /// agent(s) that will use this AuthProvider. Example:
  /// `principal://agents.global.org-${ORG_ID}.system.id.goog/resources/aiplatform/projects/{PROJECT_ID}/locations/{LOCATIONS}/reasoningEngines/{ID}`
  final pulumi.Input<List<String>>? workloadIds;

  /// Creates a new [AuthProviderArgs].
  /// [allowedScopes] List of scopes that are allowed to be requested for this auth_provider.
  /// [authProviderId] The ID to use for the AuthProvider, which will become the final segment
  /// [authProviderTypeParams] AuthProvider type specific parameters.
  /// [blockedScopes] List of scopes that are blocked from being requested for this
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the resource.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadIds] Input only. Represents the workload identity in IAM `principal://` format of the
  const AuthProviderArgs({
    this.allowedScopes,
    required this.authProviderId,
    required this.authProviderTypeParams,
    this.blockedScopes,
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.project,
    this.workloadIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedScopes': ?allowedScopes,
      'authProviderId': authProviderId,
      'authProviderTypeParams': pulumi.Input.mapInputValue<AuthProviderAuthProviderTypeParams, Map<String, dynamic>>(authProviderTypeParams, (value) => value.toMap()),
      'blockedScopes': ?blockedScopes,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'workloadIds': ?workloadIds,
    };
  }

  factory AuthProviderArgs.fromMap(Map<String, dynamic> map) {
    return AuthProviderArgs(
      allowedScopes: (() { final guardedValue = map['allowedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authProviderId: pulumi.Input.fromValue(map['authProviderId'] as String),
      authProviderTypeParams: pulumi.Input.fromValue(AuthProviderAuthProviderTypeParams.fromMap((map['authProviderTypeParams']! as Map).cast<String, dynamic>())),
      blockedScopes: (() { final guardedValue = map['blockedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIds: (() { final guardedValue = map['workloadIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
