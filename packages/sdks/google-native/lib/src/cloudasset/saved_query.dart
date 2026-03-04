import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_content_response.dart';
import 'saved_query_args.dart';

/// Creates a saved query in a parent project/folder/organization.
/// Auto-naming is currently not supported for this resource.
class SavedQuery extends pulumi.CustomResource {
  /// The query content.
  late final pulumi.Output<QueryContentResponse> content;

  /// The create time of this saved query.
  late final pulumi.Output<String> createTime;

  /// The account's email address who has created this saved query.
  late final pulumi.Output<String> creator;

  /// The description of this saved query. This value should be fewer than 255 characters.
  late final pulumi.Output<String> description;

  /// Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  late final pulumi.Output<Map<String, String>> labels;

  /// The last update time of this saved query.
  late final pulumi.Output<String> lastUpdateTime;

  /// The account's email address who has updated this saved query most recently.
  late final pulumi.Output<String> lastUpdater;

  /// The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  late final pulumi.Output<String> name;

  /// Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.
  late final pulumi.Output<String> savedQueryId;
  late final pulumi.Output<String> v1Id;
  late final pulumi.Output<String> v1Id1;

  /// Creates a new [SavedQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SavedQuery]. {@macro pulumi_cloudasset_v1_saved_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SavedQuery(
    String name, {
    SavedQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudasset/v1:SavedQuery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    content = registerOutput<QueryContentResponse>('content');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    description = registerOutput<String>('description');
    labels = registerOutput<Map<String, String>>('labels');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    lastUpdater = registerOutput<String>('lastUpdater');
    this.name = registerOutput<String>('name');
    savedQueryId = registerOutput<String>('savedQueryId');
    v1Id = registerOutput<String>('v1Id');
    v1Id1 = registerOutput<String>('v1Id1');
  }
}
