import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_args.dart';
import 'endpoint_attachment_state.dart';

/// Apigee Endpoint Attachment.
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.endpointAttachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `{{org_id}}/endpointAttachments/{{endpoint_attachment_id}}`
///
/// * `{{org_id}}/{{endpoint_attachment_id}}`
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/endpointAttachments/{{endpoint_attachment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/{{endpoint_attachment_id}}
/// ```
class EndpointAttachment extends pulumi.CustomResource {
  /// State of the endpoint attachment connection to the service attachment.
  late final pulumi.Output<String> connectionState;

  /// ID of the endpoint attachment.
  late final pulumi.Output<String> endpointAttachmentId;

  /// Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  late final pulumi.Output<String> host;

  /// Location of the endpoint attachment.
  late final pulumi.Output<String> location;

  /// Name of the Endpoint Attachment in the following format:
  /// organizations/{organization}/endpointAttachments/{endpointAttachment}.
  late final pulumi.Output<String> name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  /// Format: projects/*/regions/*/serviceAttachments/*
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
    endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }
}
