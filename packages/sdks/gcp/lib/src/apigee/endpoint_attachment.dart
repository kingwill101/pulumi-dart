import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_args.dart';
import 'endpoint_attachment_state.dart';

/// An `EndpointAttachment` in Apigee is a resource that facilitates private connectivity between Apigee and backend services using Private Service Connect (PSC).
///
/// For more information, see the [Apigee documentation](https://docs.cloud.google.com/apigee/docs/api-platform/architecture/southbound-networking-patterns-endpoints).
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.endpointAttachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `{{org_id}}/endpointAttachments/{{endpoint_attachment_id}}`
/// * `{{org_id}}/{{endpoint_attachment_id}}`
///
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/endpointAttachments/{{endpoint_attachment_id}}
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/{{endpoint_attachment_id}}
/// ```
class EndpointAttachment extends pulumi.CustomResource {
  /// State of the endpoint attachment connection to the service attachment.
  /// Possible values are: `CONNECTION_STATE_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`.
  late final pulumi.Output<String> connectionState;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// ID of the endpoint attachment.
  late final pulumi.Output<String> endpointAttachmentId;
  /// Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  late final pulumi.Output<String> host;
  /// The location of the endpoint attachment.
  late final pulumi.Output<String> location;
  /// Name of the Endpoint Attachment in the following format:
  /// organizations/{organization}/endpointAttachments/{endpointAttachment}.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// The resource URL of the service attachment in the format:
  /// `projects/*/regions/*/serviceAttachments/*`.
  late final pulumi.Output<String> serviceAttachment;

  /// Creates a new [EndpointAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAttachment]. {@macro pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionState = registerOutput<String>('connectionState');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }

  /// Gets an existing [EndpointAttachment] resource's state with the given [name] and [id].
  static EndpointAttachment get(
    String name,
    pulumi.Input<String> id, {
    EndpointAttachmentState? state,
  }) {
    return EndpointAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionState = registerOutput<String>('connectionState');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }
}
