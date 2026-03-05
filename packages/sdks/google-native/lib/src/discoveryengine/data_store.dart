import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_args.dart';

/// Creates a DataStore. DataStore is for storing Documents. To serve these documents for Search, or Recommendation use case, an Engine needs to be created separately.
class DataStore extends pulumi.CustomResource {
  late final pulumi.Output<String> collectionId;
  /// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  late final pulumi.Output<String> contentConfig;
  /// A boolean flag indicating whether user want to directly create an advanced data store for site search. If the data store is not configured as site search (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be ignored.
  late final pulumi.Output<bool?> createAdvancedSiteSearch;
  /// Timestamp the DataStore was created at.
  late final pulumi.Output<String> createTime;
  /// Required. The ID to use for the DataStore, which will become the final component of the DataStore's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final pulumi.Output<String> dataStoreId;
  /// The id of the default Schema asscociated to this data store.
  late final pulumi.Output<String> defaultSchemaId;
  /// The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final pulumi.Output<String> displayName;
  /// Immutable. The industry vertical that the data store registers.
  late final pulumi.Output<String> industryVertical;
  late final pulumi.Output<String> location;
  /// Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  late final pulumi.Output<List<String>> solutionTypes;

  /// Creates a new [DataStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataStore]. {@macro pulumi_discoveryengine_v1alpha_data_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataStore(
    String name, {
    DataStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1alpha:DataStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    contentConfig = registerOutput<String>('contentConfig');
    createAdvancedSiteSearch = registerOutput<bool?>('createAdvancedSiteSearch');
    createTime = registerOutput<String>('createTime');
    dataStoreId = registerOutput<String>('dataStoreId');
    defaultSchemaId = registerOutput<String>('defaultSchemaId');
    displayName = registerOutput<String>('displayName');
    industryVertical = registerOutput<String>('industryVertical');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    solutionTypes = registerOutput<List<String>>('solutionTypes');
  }
}
