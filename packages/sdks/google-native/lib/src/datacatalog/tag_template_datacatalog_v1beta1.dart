import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_template_datacatalog_v1beta1_args.dart';

/// Creates a tag template. The user should enable the Data Catalog API in the project identified by the `parent` parameter (see [Data Catalog Resource Project](https://cloud.google.com/data-catalog/docs/concepts/resource-project) for more information).
class TagTemplateDatacatalogV1beta1 extends pulumi.CustomResource {
  /// The display name for this template. Defaults to an empty string.
  late final pulumi.Output<String> displayName;
  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  late final pulumi.Output<Map<String, String>> fields;
  late final pulumi.Output<String> location;
  /// The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Required. The id of the tag template to create.
  late final pulumi.Output<String> tagTemplateId;

  /// Creates a new [TagTemplateDatacatalogV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagTemplateDatacatalogV1beta1]. {@macro pulumi_datacatalog_v1beta1_tag_template_datacatalog_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagTemplateDatacatalogV1beta1(
    String name, {
    TagTemplateDatacatalogV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1beta1:TagTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    fields = registerOutput<Map<String, String>>('fields');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tagTemplateId = registerOutput<String>('tagTemplateId');
  }
}
