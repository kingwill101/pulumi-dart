import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_args.dart';

/// Creates an endpoint attachment. **Note:** Not supported for Apigee hybrid.
/// Auto-naming is currently not supported for this resource.
class EndpointAttachment extends pulumi.CustomResource {
  /// State of the endpoint attachment connection to the service attachment.
  late final pulumi.Output<String> connectionState;

  /// ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. The minimum length is 2.
  late final pulumi.Output<String?> endpointAttachmentId;

  /// Host that can be used in either the HTTP target endpoint directly or as the host in target server.
  late final pulumi.Output<String> host;

  /// Location of the endpoint attachment.
  late final pulumi.Output<String> location;

  /// Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Format: projects/*/regions/*/serviceAttachments/*
  late final pulumi.Output<String> serviceAttachment;

  /// State of the endpoint attachment. Values other than `ACTIVE` mean the resource is not ready to use.
  late final pulumi.Output<String> state;

  /// Creates a new [EndpointAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAttachment]. {@macro pulumi_apigee_v1_endpoint_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:EndpointAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionState = registerOutput<String>('connectionState');
    endpointAttachmentId = registerOutput<String?>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
    state = registerOutput<String>('state');
  }
}
