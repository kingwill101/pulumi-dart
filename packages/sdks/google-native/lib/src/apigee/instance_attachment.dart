import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_args.dart';

/// Creates a new attachment of an environment to an instance. **Note:** Not supported for Apigee hybrid.
/// Auto-naming is currently not supported for this resource.
class InstanceAttachment extends pulumi.CustomResource {
  /// Time the attachment was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// ID of the attached environment.
  late final pulumi.Output<String> environment;
  late final pulumi.Output<String> instanceId;
  /// ID of the attachment.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Creates a new [InstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAttachment]. {@macro pulumi_apigee_v1_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:InstanceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    environment = registerOutput<String>('environment');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
  }
}
