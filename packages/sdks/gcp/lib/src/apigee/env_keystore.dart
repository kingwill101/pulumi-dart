import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_keystore_args.dart';
import 'env_keystore_state.dart';

/// An `Environment KeyStore` in Apigee.
///
///
/// To get more information about EnvKeystore, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Import
///
/// EnvKeystore can be imported using any of these accepted formats:
///
/// * `{{env_id}}/keystores/{{name}}`
/// * `{{env_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, EnvKeystore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envKeystore:EnvKeystore default {{env_id}}/keystores/{{name}}
/// $ pulumi import gcp:apigee/envKeystore:EnvKeystore default {{env_id}}/{{name}}
/// ```
class EnvKeystore extends pulumi.CustomResource {
  /// Aliases in this keystore.
  late final pulumi.Output<List<String>> aliases;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;
  /// The name of the newly created keystore.
  late final pulumi.Output<String> name;

  /// Creates a new [EnvKeystore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvKeystore]. {@macro pulumi_apigee_env_keystore_env_keystore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvKeystore(
    String name, {
    EnvKeystoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envKeystore:EnvKeystore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliases = registerOutput<List<String>>('aliases');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [EnvKeystore] resource's state with the given [name] and [id].
  static EnvKeystore get(
    String name,
    pulumi.Input<String> id, {
    EnvKeystoreState? state,
  }) {
    return EnvKeystore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvKeystore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envKeystore:EnvKeystore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliases = registerOutput<List<String>>('aliases');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
  }
}
