import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_references_args.dart';
import 'env_references_state.dart';

/// An `Environment Reference` in Apigee.
///
///
/// To get more information about EnvReferences, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.references/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Import
///
/// EnvReferences can be imported using any of these accepted formats:
///
/// * `{{env_id}}/references/{{name}}`
/// * `{{env_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, EnvReferences can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envReferences:EnvReferences default {{env_id}}/references/{{name}}
/// $ pulumi import gcp:apigee/envReferences:EnvReferences default {{env_id}}/{{name}}
/// ```
class EnvReferences extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. A human-readable description of this reference.
  late final pulumi.Output<String?> description;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;
  /// Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  late final pulumi.Output<String> name;
  /// Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  late final pulumi.Output<String> refers;
  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  late final pulumi.Output<String> resourceType;

  /// Creates a new [EnvReferences].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvReferences]. {@macro pulumi_apigee_env_references_env_references_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvReferences(
    String name, {
    EnvReferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envReferences:EnvReferences',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
    refers = registerOutput<String>('refers');
    resourceType = registerOutput<String>('resourceType');
  }

  /// Gets an existing [EnvReferences] resource's state with the given [name] and [id].
  static EnvReferences get(
    String name,
    pulumi.Input<String> id, {
    EnvReferencesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvReferences._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvReferences._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envReferences:EnvReferences',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
    refers = registerOutput<String>('refers');
    resourceType = registerOutput<String>('resourceType');
  }

  /// Creates a typed reference to an existing [EnvReferences] resource.
  EnvReferences.reference(String urn)
    : super(
        'gcp:apigee/envReferences:EnvReferences',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
    refers = registerOutput<String>('refers');
    resourceType = registerOutput<String>('resourceType');
  }
}
