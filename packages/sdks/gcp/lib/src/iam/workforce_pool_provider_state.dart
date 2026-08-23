// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_extended_attributes_oauth2_client.dart';
import 'workforce_pool_provider_extra_attributes_oauth2_client.dart';
import 'workforce_pool_provider_oidc.dart';
import 'workforce_pool_provider_saml.dart';

/// Input properties used for looking up and filtering WorkforcePoolProvider resources.
class WorkforcePoolProviderState {
  /// A [Common Expression Language](https://github.com/google/cel-spec) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  final pulumi.Input<String>? attributeCondition;
  /// Maps attributes from the authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as `subject` and `segment`.
  /// Each key must be a string specifying the Google Cloud IAM attribute to map to.
  /// The following keys are supported:
  /// * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings.
  /// This is also the subject that appears in Cloud Logging logs. This is a required field and
  /// the mapped subject cannot exceed 127 bytes.
  /// * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to
  /// resources using an IAM `principalSet` binding; access applies to all members of the group.
  /// * `google.display_name`: The name of the authenticated user. This is an optional field and
  /// the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead.
  /// This attribute cannot be referenced in IAM bindings.
  /// * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo.
  /// This is an optional field. When set, the image will be visible as the user's profile picture.
  /// If not set, a generic user icon will be displayed instead.
  /// This attribute cannot be referenced in IAM bindings.
  /// You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute}
  /// is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.
  /// The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].
  /// You can reference these attributes in IAM policies to define fine-grained access for a workforce pool
  /// to Google Cloud resources. For example:
  /// * `google.subject`:
  /// `principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a [Common Expression Language](https://github.com/google/cel-spec)
  /// function that maps an identity provider credential to the normalized attribute specified
  /// by the corresponding map key.
  /// You can use the `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider.
  /// The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
  /// the total size of all mapped attributes must not exceed 8KB.
  /// For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute.
  /// For example, the following maps the sub claim of the incoming credential to the `subject` attribute
  /// on a Google token:
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  /// An object containing a list of `"key": value` pairs.
  /// Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? attributeMapping;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// If true, populates additional debug information in Cloud Audit Logs for this provider. Logged attribute mappings and values can be found in `sts.googleapis.com` data access logs. Default value is false.
  final pulumi.Input<bool>? detailedAuditLogging;
  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  final pulumi.Input<bool>? disabled;
  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// (Optional, Deprecated)
  /// The configuration for OAuth 2.0 client used to get the extended group
  /// memberships for user identities. Only the `AZURE_AD_GROUPS_ID` attribute
  /// type is supported. Extended groups supports a subset of Google Cloud
  /// services. When the user accesses these services, extended group memberships
  /// override the mapped `google.groups` attribute. Extended group memberships
  /// cannot be used in attribute mapping or attribute condition expressions.
  /// To keep extended group memberships up to date, extended groups are
  /// retrieved when the user signs in and at regular intervals during the user's
  /// active session. Each user identity in the workforce identity pool must map
  /// to a unique Microsoft Entra ID user.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `extendedAttributesOauth2Client` is deprecated. Use SCIM instead.
  final pulumi.Input<WorkforcePoolProviderExtendedAttributesOauth2Client>? extendedAttributesOauth2Client;
  /// The configuration for OAuth 2.0 client used to get the additional user
  /// attributes. This should be used when users can't get the desired claims
  /// in authentication credentials. Currently this configuration is only
  /// supported with SAML and OIDC protocol.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderExtraAttributesOauth2Client>? extraAttributesOauth2Client;
  /// The location for the resource.
  final pulumi.Input<String>? location;
  /// Output only. The resource name of the provider.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}`
  final pulumi.Input<String>? name;
  /// Represents an OpenId Connect 1.0 identity provider.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderOidc>? oidc;
  /// The ID for the provider, which becomes the final component of the resource name.
  /// This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? providerId;
  /// Represents a SAML identity provider.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderSaml>? saml;
  /// Agentspace only. Specifies whether the workforce identity pool
  /// provider uses SCIM-managed groups instead of the `google.groups`
  /// attribute mapping for authorization checks.
  /// The `scimUsage` and `extendedAttributesOauth2Client` fields are
  /// mutually exclusive. A request that enables both fields on the same
  /// workforce identity pool provider will produce an error.
  /// * SCIM_USAGE_UNSPECIFIED: Default behaviour
  /// * ENABLED_FOR_GROUPS: Use SCIM-managed groups instead of the `google.groups`
  /// attribute mapping for authorization checks
  /// Possible values are: `SCIM_USAGE_UNSPECIFIED`, `ENABLED_FOR_GROUPS`.
  final pulumi.Input<String>? scimUsage;
  /// The current state of the provider.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The provider is active and may be used to validate authentication credentials.
  /// * DELETED: The provider is soft-deleted. Soft-deleted providers are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted provider using
  /// [providers.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePoolProvider).
  final pulumi.Input<String>? state;
  /// The ID to use for the pool, which becomes the final component of the resource name.
  /// The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.
  /// It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? workforcePoolId;

  /// Creates a new [WorkforcePoolProviderState].
  /// [attributeCondition] A [Common Expression Language](https://github.com/google/cel-spec) expression, in
  /// [attributeMapping] Maps attributes from the authentication credentials issued by an external identity provider
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A user-specified description of the provider. Cannot exceed 256 characters.
  /// [detailedAuditLogging] If true, populates additional debug information in Cloud Audit Logs for this provider. Logged attribute mappings and values can be found in `sts.googleapis.com` data access logs. Default value is false.
  /// [disabled] Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// [displayName] A user-specified display name for the provider. Cannot exceed 32 characters.
  /// [extendedAttributesOauth2Client] (Optional, Deprecated)
  /// [extraAttributesOauth2Client] The configuration for OAuth 2.0 client used to get the additional user
  /// [location] The location for the resource.
  /// [name] Output only. The resource name of the provider.
  /// [oidc] Represents an OpenId Connect 1.0 identity provider.
  /// [providerId] The ID for the provider, which becomes the final component of the resource name.
  /// [saml] Represents a SAML identity provider.
  /// [scimUsage] Agentspace only. Specifies whether the workforce identity pool
  /// [state] The current state of the provider.
  /// [workforcePoolId] The ID to use for the pool, which becomes the final component of the resource name.
  const WorkforcePoolProviderState({
    this.attributeCondition,
    this.attributeMapping,
    this.deletionPolicy,
    this.description,
    this.detailedAuditLogging,
    this.disabled,
    this.displayName,
    this.extendedAttributesOauth2Client,
    this.extraAttributesOauth2Client,
    this.location,
    this.name,
    this.oidc,
    this.providerId,
    this.saml,
    this.scimUsage,
    this.state,
    this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCondition': ?attributeCondition,
      'attributeMapping': ?attributeMapping,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'detailedAuditLogging': ?detailedAuditLogging,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'extendedAttributesOauth2Client': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderExtendedAttributesOauth2Client, Map<String, dynamic>>(extendedAttributesOauth2Client, (value) => value.toMap()),
      'extraAttributesOauth2Client': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderExtraAttributesOauth2Client, Map<String, dynamic>>(extraAttributesOauth2Client, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'oidc': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'providerId': ?providerId,
      'saml': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'scimUsage': ?scimUsage,
      'state': ?state,
      'workforcePoolId': ?workforcePoolId,
    };
  }

  factory WorkforcePoolProviderState.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderState(
      attributeCondition: (() { final guardedValue = map['attributeCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeMapping: (() { final guardedValue = map['attributeMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detailedAuditLogging: (() { final guardedValue = map['detailedAuditLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedAttributesOauth2Client: (() { final guardedValue = map['extendedAttributesOauth2Client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderExtendedAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extraAttributesOauth2Client: (() { final guardedValue = map['extraAttributesOauth2Client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderExtraAttributesOauth2Client.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerId: (() { final guardedValue = map['providerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scimUsage: (() { final guardedValue = map['scimUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: (() { final guardedValue = map['workforcePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
