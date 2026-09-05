import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_args.dart';
import 'instance_attachment_state.dart';

/// An `Instance attachment` in Apigee.
///
///
/// To get more information about InstanceAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances.attachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ## Import
///
/// InstanceAttachment can be imported using any of these accepted formats:
///
/// * `{{instance_id}}/attachments/{{name}}`
/// * `{{instance_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, InstanceAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/instanceAttachment:InstanceAttachment default {{instance_id}}/attachments/{{name}}
/// $ pulumi import gcp:apigee/instanceAttachment:InstanceAttachment default {{instance_id}}/{{name}}
/// ```
class InstanceAttachment extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The resource ID of the environment.
  late final pulumi.Output<String> environment;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  late final pulumi.Output<String> instanceId;
  /// The name of the newly created  attachment (output parameter).
  late final pulumi.Output<String> name;

  /// Creates a new [InstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAttachment]. {@macro pulumi_apigee_instance_attachment_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/instanceAttachment:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [InstanceAttachment] resource's state with the given [name] and [id].
  static InstanceAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/instanceAttachment:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [InstanceAttachment] resource.
  InstanceAttachment.reference(String urn)
    : super(
        'gcp:apigee/instanceAttachment:InstanceAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    environment = registerOutput<String>('environment');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
  }
}
