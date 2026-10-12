import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_args.dart';
import 'link_state.dart';

/// Link configuration for exposing observability dataset data.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// Link can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/buckets/{{bucket}}/datasets/{{dataset}}/links/{{link_id}}`
/// * `{{project}}/{{location}}/{{bucket}}/{{dataset}}/{{link_id}}`
/// * `{{location}}/{{bucket}}/{{dataset}}/{{link_id}}`
///
///
/// When using the `pulumi import` command, Link can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:observability/link:Link default projects/{{project}}/locations/{{location}}/buckets/{{bucket}}/datasets/{{dataset}}/links/{{link_id}}
/// $ pulumi import gcp:observability/link:Link default {{project}}/{{location}}/{{bucket}}/{{dataset}}/{{link_id}}
/// $ pulumi import gcp:observability/link:Link default {{location}}/{{bucket}}/{{dataset}}/{{link_id}}
/// ```
class Link extends pulumi.CustomResource {
  /// The bucket of the link.
  late final pulumi.Output<String> bucket;
  /// Output only. Create timestamp.
  late final pulumi.Output<String> createTime;
  /// The dataset of the link.
  late final pulumi.Output<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the link.
  late final pulumi.Output<String?> description;
  /// User friendly display name.
  late final pulumi.Output<String?> displayName;
  /// The client-assigned identifier for the link.
  late final pulumi.Output<String> linkId;
  /// The location of the link.
  late final pulumi.Output<String> location;
  /// Identifier. Name of the link. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]/links/[LINK_ID]
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Link].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Link]. {@macro pulumi_observability_link_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Link(
    String name, {
    LinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/link:Link',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    linkId = registerOutput<String>('linkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Link] resource's state with the given [name] and [id].
  static Link get(
    String name,
    pulumi.Input<String> id, {
    LinkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Link._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Link._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/link:Link',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    linkId = registerOutput<String>('linkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Link] resource.
  Link.reference(String urn)
    : super(
        'gcp:observability/link:Link',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    dataset = registerOutput<String>('dataset');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    linkId = registerOutput<String>('linkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
