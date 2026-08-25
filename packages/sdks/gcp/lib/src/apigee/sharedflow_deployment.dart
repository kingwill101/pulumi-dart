import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharedflow_deployment_args.dart';
import 'sharedflow_deployment_state.dart';

/// Deploys a revision of a sharedflow.
///
///
/// To get more information about SharedflowDeployment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.sharedflows.revisions.deployments)
/// * How-to Guides
/// * [sharedflows.revisions.deployments](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.sharedflows.revisions.deployments)
///
/// ## Import
///
/// SharedflowDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/sharedflows/{{sharedflow_id}}/revisions/{{revision}}/deployments/{{name}}`
/// * `{{org_id}}/{{environment}}/{{sharedflow_id}}/{{revision}}/{{name}}`
///
///
/// When using the `pulumi import` command, SharedflowDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/sharedflowDeployment:SharedflowDeployment default organizations/{{org_id}}/environments/{{environment}}/sharedflows/{{sharedflow_id}}/revisions/{{revision}}/deployments/{{name}}
/// $ pulumi import gcp:apigee/sharedflowDeployment:SharedflowDeployment default {{org_id}}/{{environment}}/{{sharedflow_id}}/{{revision}}/{{name}}
/// ```
class SharedflowDeployment extends pulumi.CustomResource {
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  late final pulumi.Output<String> deletionPolicy;
  /// The resource ID of the environment.
  late final pulumi.Output<String> environment;
  /// The Apigee Organization associated with the Sharedflow
  late final pulumi.Output<String> orgId;
  /// Revision of the Sharedflow to be deployed.
  late final pulumi.Output<String> revision;
  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  late final pulumi.Output<String?> serviceAccount;
  /// Id of the Sharedflow to be deployed.
  late final pulumi.Output<String> sharedflowId;

  /// Creates a new [SharedflowDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedflowDeployment]. {@macro pulumi_apigee_sharedflow_deployment_sharedflow_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedflowDeployment(
    String name, {
    SharedflowDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/sharedflowDeployment:SharedflowDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    orgId = registerOutput<String>('orgId');
    revision = registerOutput<String>('revision');
    serviceAccount = registerOutput<String?>('serviceAccount');
    sharedflowId = registerOutput<String>('sharedflowId');
  }

  /// Gets an existing [SharedflowDeployment] resource's state with the given [name] and [id].
  static SharedflowDeployment get(
    String name,
    pulumi.Input<String> id, {
    SharedflowDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SharedflowDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SharedflowDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/sharedflowDeployment:SharedflowDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    orgId = registerOutput<String>('orgId');
    revision = registerOutput<String>('revision');
    serviceAccount = registerOutput<String?>('serviceAccount');
    sharedflowId = registerOutput<String>('sharedflowId');
  }

  /// Creates a typed reference to an existing [SharedflowDeployment] resource.
  SharedflowDeployment.reference(String urn)
    : super(
        'gcp:apigee/sharedflowDeployment:SharedflowDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    orgId = registerOutput<String>('orgId');
    revision = registerOutput<String>('revision');
    serviceAccount = registerOutput<String?>('serviceAccount');
    sharedflowId = registerOutput<String>('sharedflowId');
  }
}
