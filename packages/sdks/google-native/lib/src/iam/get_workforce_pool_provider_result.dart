// ignore_for_file: unused_element, unnecessary_cast

import 'google_iam_admin_v1_workforce_pool_provider_oidc_response.dart';
import 'google_iam_admin_v1_workforce_pool_provider_saml_response.dart';

/// Result data returned by getWorkforcePoolProvider.
class GetWorkforcePoolProviderResult {
  /// A [Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. `google.profile_photo` and `google.display_name` are not supported. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credentials will be accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  final String attributeCondition;
  /// Maps attributes from the authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. This is a required field and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. * `google.display_name`: The name of the authenticated user. This is an optional field and the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead. This attribute cannot be referenced in IAM bindings. * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo. This is an optional field. When set, the image will be visible as the user's profile picture. If not set, a generic user icon will be displayed instead. This attribute cannot be referenced in IAM bindings. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute} is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workforce pool to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 4KB. For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  final Map<String, String> attributeMapping;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final String description;
  /// Disables the workforce pool provider. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  final bool disabled;
  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  final String displayName;
  /// Time after which the workload pool provider will be permanently purged and cannot be recovered.
  final String expireTime;
  /// The resource name of the provider. Format: `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  final String name;
  /// An OpenId Connect 1.0 identity provider configuration.
  final GoogleIamAdminV1WorkforcePoolProviderOidcResponse oidc;
  /// A SAML identity provider configuration.
  final GoogleIamAdminV1WorkforcePoolProviderSamlResponse saml;
  /// The state of the provider.
  final String state;

  /// Creates a new [GetWorkforcePoolProviderResult].
  /// [attributeCondition] A [Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. `google.profile_photo` and `google.display_name` are not supported. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credentials will be accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  /// [attributeMapping] Maps attributes from the authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. This is a required field and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. * `google.display_name`: The name of the authenticated user. This is an optional field and the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead. This attribute cannot be referenced in IAM bindings. * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo. This is an optional field. When set, the image will be visible as the user's profile picture. If not set, a generic user icon will be displayed instead. This attribute cannot be referenced in IAM bindings. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute} is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workforce pool to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 4KB. For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  /// [description] A user-specified description of the provider. Cannot exceed 256 characters.
  /// [disabled] Disables the workforce pool provider. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  /// [displayName] A user-specified display name for the provider. Cannot exceed 32 characters.
  /// [expireTime] Time after which the workload pool provider will be permanently purged and cannot be recovered.
  /// [name] The resource name of the provider. Format: `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  /// [oidc] An OpenId Connect 1.0 identity provider configuration.
  /// [saml] A SAML identity provider configuration.
  /// [state] The state of the provider.
  const GetWorkforcePoolProviderResult({
    required this.attributeCondition,
    required this.attributeMapping,
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.expireTime,
    required this.name,
    required this.oidc,
    required this.saml,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCondition': attributeCondition,
      'attributeMapping': attributeMapping,
      'description': description,
      'disabled': disabled,
      'displayName': displayName,
      'expireTime': expireTime,
      'name': name,
      'oidc': oidc.toMap(),
      'saml': saml.toMap(),
      'state': state,
    };
  }

  factory GetWorkforcePoolProviderResult.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolProviderResult(
      attributeCondition: map['attributeCondition'] as String,
      attributeMapping: (map['attributeMapping'] as Map).cast<String, String>(),
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      oidc: GoogleIamAdminV1WorkforcePoolProviderOidcResponse.fromMap((map['oidc']! as Map).cast<String, dynamic>()),
      saml: GoogleIamAdminV1WorkforcePoolProviderSamlResponse.fromMap((map['saml']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}

