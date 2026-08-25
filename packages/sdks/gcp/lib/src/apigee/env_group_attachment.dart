import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_group_attachment_args.dart';
import 'env_group_attachment_state.dart';

/// An `Environment Group attachment` in Apigee.
///
///
/// To get more information about EnvgroupAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.envgroups.attachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ## Import
///
/// EnvgroupAttachment can be imported using any of these accepted formats:
///
/// * `{{envgroup_id}}/attachments/{{name}}`
/// * `{{envgroup_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, EnvgroupAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envGroupAttachment:EnvGroupAttachment default {{envgroup_id}}/attachments/{{name}}
/// $ pulumi import gcp:apigee/envGroupAttachment:EnvGroupAttachment default {{envgroup_id}}/{{name}}
/// ```
class EnvGroupAttachment extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  late final pulumi.Output<String> envgroupId;
  /// The resource ID of the environment.
  late final pulumi.Output<String> environment;
  /// The name of the newly created  attachment (output parameter).
  late final pulumi.Output<String> name;

  /// Creates a new [EnvGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvGroupAttachment]. {@macro pulumi_apigee_env_group_attachment_env_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvGroupAttachment(
    String name, {
    EnvGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envGroupAttachment:EnvGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    envgroupId = registerOutput<String>('envgroupId');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [EnvGroupAttachment] resource's state with the given [name] and [id].
  static EnvGroupAttachment get(
    String name,
    pulumi.Input<String> id, {
    EnvGroupAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvGroupAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envGroupAttachment:EnvGroupAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    envgroupId = registerOutput<String>('envgroupId');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [EnvGroupAttachment] resource.
  EnvGroupAttachment.reference(String urn)
    : super(
        'gcp:apigee/envGroupAttachment:EnvGroupAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    envgroupId = registerOutput<String>('envgroupId');
    environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
  }
}
