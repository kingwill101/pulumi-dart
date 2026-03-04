import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_args.dart';
import 'google_cloud_dataplex_v1_content_notebook_response.dart';
import 'google_cloud_dataplex_v1_content_sql_script_response.dart';

/// Create a content.
/// Auto-naming is currently not supported for this resource.
class Content extends pulumi.CustomResource {
  /// Content creation time.
  late final pulumi.Output<String> createTime;

  /// Content data in string format.
  late final pulumi.Output<String> dataText;

  /// Optional. Description of the content.
  late final pulumi.Output<String> description;

  /// Optional. User defined labels for the content.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;

  /// The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  late final pulumi.Output<String> name;

  /// Notebook related configurations.
  late final pulumi.Output<GoogleCloudDataplexV1ContentNotebookResponse>
  notebook;

  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  late final pulumi.Output<String> path;
  late final pulumi.Output<String> project;

  /// Sql Script related configurations.
  late final pulumi.Output<GoogleCloudDataplexV1ContentSqlScriptResponse>
  sqlScript;

  /// System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the content was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Content].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Content]. {@macro pulumi_dataplex_v1_content_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Content(
    String name, {
    ContentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataplex/v1:Content',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dataText = registerOutput<String>('dataText');
    description = registerOutput<String>('description');
    labels = registerOutput<Map<String, String>>('labels');
    lakeId = registerOutput<String>('lakeId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notebook = registerOutput<GoogleCloudDataplexV1ContentNotebookResponse>(
      'notebook',
    );
    path = registerOutput<String>('path');
    project = registerOutput<String>('project');
    sqlScript = registerOutput<GoogleCloudDataplexV1ContentSqlScriptResponse>(
      'sqlScript',
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
