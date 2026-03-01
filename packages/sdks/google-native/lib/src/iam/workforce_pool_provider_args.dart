// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_admin_v1_workforce_pool_provider_oidc.dart';
import 'google_iam_admin_v1_workforce_pool_provider_saml.dart';

/// {@template pulumi_iam_v1_workforce_pool_provider_args_doc}
/// The set of arguments for WorkforcePoolProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_workforce_pool_provider_args_doc}
class WorkforcePoolProviderArgs {
  /// A [Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. `google.profile_photo` and `google.display_name` are not supported. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credentials will be accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  final pulumi.Input<String>? attributeCondition;
  /// Maps attributes from the authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. This is a required field and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. * `google.display_name`: The name of the authenticated user. This is an optional field and the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead. This attribute cannot be referenced in IAM bindings. * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo. This is an optional field. When set, the image will be visible as the user's profile picture. If not set, a generic user icon will be displayed instead. This attribute cannot be referenced in IAM bindings. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute} is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workforce pool to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 4KB. For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  final pulumi.Input<Map<String, String>> attributeMapping;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Disables the workforce pool provider. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  final pulumi.Input<bool>? disabled;
  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// An OpenId Connect 1.0 identity provider configuration.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderOidc>? oidc;
  /// A SAML identity provider configuration.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderSaml>? saml;
  final pulumi.Input<String> workforcePoolId;
  /// Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workforcePoolProviderId;

  /// Creates a new [WorkforcePoolProviderArgs].
  /// [attributeCondition] A [Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. `google.profile_photo` and `google.display_name` are not supported. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credentials will be accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  /// [attributeMapping] Maps attributes from the authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. This is a required field and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. * `google.display_name`: The name of the authenticated user. This is an optional field and the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead. This attribute cannot be referenced in IAM bindings. * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo. This is an optional field. When set, the image will be visible as the user's profile picture. If not set, a generic user icon will be displayed instead. This attribute cannot be referenced in IAM bindings. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute} is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workforce pool to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 4KB. For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  /// [description] A user-specified description of the provider. Cannot exceed 256 characters.
  /// [disabled] Disables the workforce pool provider. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  /// [displayName] A user-specified display name for the provider. Cannot exceed 32 characters.
  /// [location] Optional.
  /// [oidc] An OpenId Connect 1.0 identity provider configuration.
  /// [saml] A SAML identity provider configuration.
  /// [workforcePoolId] Required.
  /// [workforcePoolProviderId] Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  WorkforcePoolProviderArgs({
    pulumi.Output<String>? attributeCondition,
    required pulumi.Output<Map<String, String>> attributeMapping,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<GoogleIamAdminV1WorkforcePoolProviderOidc>? oidc,
    pulumi.Output<GoogleIamAdminV1WorkforcePoolProviderSaml>? saml,
    required pulumi.Output<String> workforcePoolId,
    required pulumi.Output<String> workforcePoolProviderId,
  }) :
      attributeCondition = pulumi.Input.asOptionalInput<String>(attributeCondition),
      attributeMapping = pulumi.Input.asInput<Map<String, String>>(attributeMapping),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      oidc = pulumi.Input.asOptionalInput<GoogleIamAdminV1WorkforcePoolProviderOidc>(oidc),
      saml = pulumi.Input.asOptionalInput<GoogleIamAdminV1WorkforcePoolProviderSaml>(saml),
      workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId),
      workforcePoolProviderId = pulumi.Input.asInput<String>(workforcePoolProviderId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCondition': ?attributeCondition,
      'attributeMapping': attributeMapping,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': ?location,
      'oidc': ?pulumi.Input.mapOptionalInputValue<GoogleIamAdminV1WorkforcePoolProviderOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<GoogleIamAdminV1WorkforcePoolProviderSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'workforcePoolId': workforcePoolId,
      'workforcePoolProviderId': workforcePoolProviderId,
    };
  }

  factory WorkforcePoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderArgs(
      attributeCondition: map['attributeCondition'] == null ? null : pulumi.Output.create<String>(map['attributeCondition'] as String),
      attributeMapping: pulumi.Output.create<Map<String, String>>((map['attributeMapping'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      oidc: map['oidc'] == null ? null : pulumi.Output.create<GoogleIamAdminV1WorkforcePoolProviderOidc>(GoogleIamAdminV1WorkforcePoolProviderOidc.fromMap((map['oidc'] as Map).cast<String, dynamic>())),
      saml: map['saml'] == null ? null : pulumi.Output.create<GoogleIamAdminV1WorkforcePoolProviderSaml>(GoogleIamAdminV1WorkforcePoolProviderSaml.fromMap((map['saml'] as Map).cast<String, dynamic>())),
      workforcePoolId: pulumi.Output.create<String>(map['workforcePoolId'] as String),
      workforcePoolProviderId: pulumi.Output.create<String>(map['workforcePoolProviderId'] as String),
    );
  }
}

