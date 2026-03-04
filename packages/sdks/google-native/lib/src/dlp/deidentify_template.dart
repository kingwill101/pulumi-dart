import 'package:pulumi/pulumi.dart' as pulumi;
import 'deidentify_template_args.dart';
import 'google_privacy_dlp_v2_deidentify_config_response.dart';

/// Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.
/// Auto-naming is currently not supported for this resource.
class DeidentifyTemplate extends pulumi.CustomResource {
  /// The creation timestamp of an inspectTemplate.
  late final pulumi.Output<String> createTime;

  /// The core content of the template.
  late final pulumi.Output<GooglePrivacyDlpV2DeidentifyConfigResponse>
  deidentifyConfig;

  /// Short description (max 256 chars).
  late final pulumi.Output<String> description;

  /// Display name (max 256 chars).
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The last update timestamp of an inspectTemplate.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DeidentifyTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeidentifyTemplate]. {@macro pulumi_dlp_v2_deidentify_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeidentifyTemplate(
    String name, {
    DeidentifyTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dlp/v2:DeidentifyTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deidentifyConfig =
        registerOutput<GooglePrivacyDlpV2DeidentifyConfigResponse>(
          'deidentifyConfig',
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
