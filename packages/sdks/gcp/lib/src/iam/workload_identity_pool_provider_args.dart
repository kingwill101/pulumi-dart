// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_provider_aws.dart';
import 'workload_identity_pool_provider_oidc.dart';
import 'workload_identity_pool_provider_saml.dart';
import 'workload_identity_pool_provider_x509.dart';

/// {@template pulumi_iam_workload_identity_pool_provider_workload_identity_pool_provider_args_doc}
/// The set of arguments for WorkloadIdentityPoolProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_workload_identity_pool_provider_workload_identity_pool_provider_args_doc}
class WorkloadIdentityPoolProviderArgs {
  /// [A Common Expression Language](https://opensource.google/projects/cel) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  final pulumi.Input<String>? attributeCondition;
  /// Maps attributes from authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as `subject` and `segment`.
  /// Each key must be a string specifying the Google Cloud IAM attribute to map to.
  /// The following keys are supported:
  /// * `google.subject`: The principal IAM is authenticating. You can reference this value
  /// in IAM bindings. This is also the subject that appears in Cloud Logging logs.
  /// Cannot exceed 127 characters.
  /// * `google.groups`: Groups the external identity belongs to. You can grant groups
  /// access to resources using an IAM `principalSet` binding; access applies to all
  /// members of the group.
  /// You can also provide custom attributes by specifying `attribute.{custom_attribute}`,
  /// where `{custom_attribute}` is the name of the custom attribute to be mapped. You can
  /// define a maximum of 50 custom attributes. The maximum length of a mapped attribute key
  /// is 100 characters, and the key may only contain the characters [a-z0-9_].
  /// You can reference these attributes in IAM policies to define fine-grained access for a
  /// workload to Google Cloud resources. For example:
  /// * `google.subject`:
  /// `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
  /// function that maps an identity provider credential to the normalized attribute specified
  /// by the corresponding map key.
  /// You can use the `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider.
  /// The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
  /// the total size of all mapped attributes must not exceed 8KB.
  /// For AWS providers, the following rules apply:
  /// - If no attribute mapping is defined, the following default mapping applies:
  /// ```
  /// {
  /// "google.subject":"assertion.arn",
  /// "attribute.aws_role":
  /// "assertion.arn.contains('assumed-role')"
  /// " ? assertion.arn.extract('{account_arn}assumed-role/')"
  /// "   + 'assumed-role/'"
  /// "   + assertion.arn.extract('assumed-role/{role_name}/')"
  /// " : assertion.arn",
  /// }
  /// ```
  /// - If any custom attribute mappings are defined, they must include a mapping to the
  /// `google.subject` attribute.
  /// For OIDC providers, the following rules apply:
  /// - Custom attribute mappings must be defined, and must include a mapping to the
  /// `google.subject` attribute. For example, the following maps the `sub` claim of the
  /// incoming credential to the `subject` attribute on a Google token.
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  final pulumi.Input<Map<String, String>>? attributeMapping;
  /// An Amazon Web Services identity provider. Not compatible with the property oidc or saml.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolProviderAws>? aws;
  /// A description for the provider. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  final pulumi.Input<bool>? disabled;
  /// A display name for the provider. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// An OpenId Connect 1.0 identity provider. Not compatible with the property aws or saml.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolProviderOidc>? oidc;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An SAML 2.0 identity provider. Not compatible with the property oidc or aws.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolProviderSaml>? saml;
  /// The ID used for the pool, which is the final component of the pool resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;
  /// The ID for the provider, which becomes the final component of the resource name. This
  /// value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolProviderId;
  /// An X.509-type identity provider represents a CA. It is trusted to assert a
  /// client identity if the client has a certificate that chains up to this CA.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolProviderX509>? x509;

  /// Creates a new [WorkloadIdentityPoolProviderArgs].
  /// [attributeCondition] [A Common Expression Language](https://opensource.google/projects/cel) expression, in
  /// [attributeMapping] Maps attributes from authentication credentials issued by an external identity provider
  /// [aws] An Amazon Web Services identity provider. Not compatible with the property oidc or saml.
  /// [description] A description for the provider. Cannot exceed 256 characters.
  /// [disabled] Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// [displayName] A display name for the provider. Cannot exceed 32 characters.
  /// [oidc] An OpenId Connect 1.0 identity provider. Not compatible with the property aws or saml.
  /// [project] The ID of the project in which the resource belongs.
  /// [saml] An SAML 2.0 identity provider. Not compatible with the property oidc or aws.
  /// [workloadIdentityPoolId] The ID used for the pool, which is the final component of the pool resource name. This
  /// [workloadIdentityPoolProviderId] The ID for the provider, which becomes the final component of the resource name. This
  /// [x509] An X.509-type identity provider represents a CA. It is trusted to assert a
  WorkloadIdentityPoolProviderArgs({
    this.attributeCondition,
    this.attributeMapping,
    this.aws,
    this.description,
    this.disabled,
    this.displayName,
    this.oidc,
    this.project,
    this.saml,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderId,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCondition': ?attributeCondition,
      'attributeMapping': ?attributeMapping,
      'aws': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityPoolProviderAws, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'oidc': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityPoolProviderOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'project': ?project,
      'saml': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityPoolProviderSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderId': workloadIdentityPoolProviderId,
      'x509': ?pulumi.Input.mapOptionalInputValue<WorkloadIdentityPoolProviderX509, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory WorkloadIdentityPoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderArgs(
      attributeCondition: map['attributeCondition'] == null ? null : (map['attributeCondition']! as String).input(),
      attributeMapping: map['attributeMapping'] == null ? null : ((map['attributeMapping']! as Map).cast<String, String>()).input(),
      aws: map['aws'] == null ? null : (WorkloadIdentityPoolProviderAws.fromMap((map['aws']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      oidc: map['oidc'] == null ? null : (WorkloadIdentityPoolProviderOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      saml: map['saml'] == null ? null : (WorkloadIdentityPoolProviderSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())).input(),
      workloadIdentityPoolId: (map['workloadIdentityPoolId'] as String).input(),
      workloadIdentityPoolProviderId: (map['workloadIdentityPoolProviderId'] as String).input(),
      x509: map['x509'] == null ? null : (WorkloadIdentityPoolProviderX509.fromMap((map['x509']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

