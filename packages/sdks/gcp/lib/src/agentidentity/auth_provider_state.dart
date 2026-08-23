// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_auth_provider_type_params.dart';

/// Input properties used for looking up and filtering AuthProvider resources.
class AuthProviderState {
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
  final pulumi.Input<String>? authProviderId;
  /// AuthProvider type specific parameters.
  /// Required when creating an auth_provider.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParams>? authProviderTypeParams;
  /// List of scopes that are blocked from being requested for this
  /// auth_provider. If a scope appears in this list, it will not be requested,
  /// even if it also appears in `allowedScopes`. `blockedScopes` takes
  /// precedence over `allowedScopes`. The number of blocked scopes is limited
  /// to 200.
  final pulumi.Input<List<String>>? blockedScopes;
  /// [Output only] Create time stamp
  final pulumi.Input<String>? createTime;
  /// This is set to true if the authProvider is deleted.
  final pulumi.Input<bool>? deleted;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The time when the authProvider will expire.
  final pulumi.Input<String>? expireTime;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The full resource name of the auth_provider. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The state of the auth_provider.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String>? state;
  /// [Output only] Update time stamp
  final pulumi.Input<String>? updateTime;
  /// Input only. Represents the workload identity in IAM `principal://` format of the
  /// agent(s) that will use this AuthProvider. Example:
  /// `principal://agents.global.org-${ORG_ID}.system.id.goog/resources/aiplatform/projects/{PROJECT_ID}/locations/{LOCATIONS}/reasoningEngines/{ID}`
  final pulumi.Input<List<String>>? workloadIds;

  /// Creates a new [AuthProviderState].
  /// [allowedScopes] List of scopes that are allowed to be requested for this auth_provider.
  /// [authProviderId] The ID to use for the AuthProvider, which will become the final segment
  /// [authProviderTypeParams] AuthProvider type specific parameters.
  /// [blockedScopes] List of scopes that are blocked from being requested for this
  /// [createTime] [Output only] Create time stamp
  /// [deleted] This is set to true if the authProvider is deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [expireTime] The time when the authProvider will expire.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The full resource name of the auth_provider. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of the auth_provider.
  /// [updateTime] [Output only] Update time stamp
  /// [workloadIds] Input only. Represents the workload identity in IAM `principal://` format of the
  const AuthProviderState({
    this.allowedScopes,
    this.authProviderId,
    this.authProviderTypeParams,
    this.blockedScopes,
    this.createTime,
    this.deleted,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.expireTime,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.updateTime,
    this.workloadIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedScopes': ?allowedScopes,
      'authProviderId': ?authProviderId,
      'authProviderTypeParams': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParams, Map<String, dynamic>>(authProviderTypeParams, (value) => value.toMap()),
      'blockedScopes': ?blockedScopes,
      'createTime': ?createTime,
      'deleted': ?deleted,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
      'workloadIds': ?workloadIds,
    };
  }

  factory AuthProviderState.fromMap(Map<String, dynamic> map) {
    return AuthProviderState(
      allowedScopes: (() { final guardedValue = map['allowedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authProviderId: (() { final guardedValue = map['authProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authProviderTypeParams: (() { final guardedValue = map['authProviderTypeParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockedScopes: (() { final guardedValue = map['blockedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIds: (() { final guardedValue = map['workloadIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
