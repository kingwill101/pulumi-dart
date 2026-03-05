import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_admin_v1_workforce_pool_provider_oidc_response.dart';
import 'google_iam_admin_v1_workforce_pool_provider_saml_response.dart';
import 'workforce_pool_provider_args.dart';

/// Creates a new WorkforcePoolProvider in a WorkforcePool. You cannot reuse the name of a deleted provider until 30 days after deletion.
/// Auto-naming is currently not supported for this resource.
class WorkforcePoolProvider extends pulumi.CustomResource {
  /// A [Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. `google.profile_photo` and `google.display_name` are not supported. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credentials will be accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  late final pulumi.Output<String> attributeCondition;
  /// Maps attributes from the authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. This is a required field and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. * `google.display_name`: The name of the authenticated user. This is an optional field and the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead. This attribute cannot be referenced in IAM bindings. * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo. This is an optional field. When set, the image will be visible as the user's profile picture. If not set, a generic user icon will be displayed instead. This attribute cannot be referenced in IAM bindings. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute} is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workforce pool to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 4KB. For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  late final pulumi.Output<Map<String, String>> attributeMapping;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  late final pulumi.Output<String> description;
  /// Disables the workforce pool provider. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  late final pulumi.Output<bool> disabled;
  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  late final pulumi.Output<String> displayName;
  /// Time after which the workload pool provider will be permanently purged and cannot be recovered.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;
  /// The resource name of the provider. Format: `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  late final pulumi.Output<String> name;
  /// An OpenId Connect 1.0 identity provider configuration.
  late final pulumi.Output<GoogleIamAdminV1WorkforcePoolProviderOidcResponse> oidc;
  /// A SAML identity provider configuration.
  late final pulumi.Output<GoogleIamAdminV1WorkforcePoolProviderSamlResponse> saml;
  /// The state of the provider.
  late final pulumi.Output<String> state;
  late final pulumi.Output<String> workforcePoolId;
  /// Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workforcePoolProviderId;

  /// Creates a new [WorkforcePoolProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolProvider]. {@macro pulumi_iam_v1_workforce_pool_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolProvider(
    String name, {
    WorkforcePoolProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:WorkforcePoolProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributeCondition = registerOutput<String>('attributeCondition');
    attributeMapping = registerOutput<Map<String, String>>('attributeMapping');
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    displayName = registerOutput<String>('displayName');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oidc = registerOutput<GoogleIamAdminV1WorkforcePoolProviderOidcResponse>('oidc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleIamAdminV1WorkforcePoolProviderOidcResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    saml = registerOutput<GoogleIamAdminV1WorkforcePoolProviderSamlResponse>('saml', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleIamAdminV1WorkforcePoolProviderSamlResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    workforcePoolId = registerOutput<String>('workforcePoolId');
    workforcePoolProviderId = registerOutput<String>('workforcePoolProviderId');
  }
}
