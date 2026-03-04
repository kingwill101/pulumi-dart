import 'package:pulumi/pulumi.dart' as pulumi;
import 'envgroup_attachment_args.dart';

/// Creates a new attachment of an environment to an environment group.
class EnvgroupAttachment extends pulumi.CustomResource {
  /// The time at which the environment group attachment was created as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> envgroupId;

  /// ID of the attached environment.
  late final pulumi.Output<String> environment;

  /// ID of the environment group.
  late final pulumi.Output<String> environmentGroupId;

  /// ID of the environment group attachment.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Creates a new [EnvgroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvgroupAttachment]. {@macro pulumi_apigee_v1_envgroup_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvgroupAttachment(
    String name, {
    EnvgroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:EnvgroupAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    envgroupId = registerOutput<String>('envgroupId');
    environment = registerOutput<String>('environment');
    environmentGroupId = registerOutput<String>('environmentGroupId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
  }
}
