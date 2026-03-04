import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_taxonomy_args.dart';

/// Create a DataTaxonomy resource.
/// Auto-naming is currently not supported for this resource.
class DataTaxonomy extends pulumi.CustomResource {
  /// The number of attributes in the DataTaxonomy.
  late final pulumi.Output<int> attributeCount;

  /// The number of classes in the DataTaxonomy.
  late final pulumi.Output<int> classCount;

  /// The time when the DataTaxonomy was created.
  late final pulumi.Output<String> createTime;

  /// Required. DataTaxonomy identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Project.
  late final pulumi.Output<String> dataTaxonomyId;

  /// Optional. Description of the DataTaxonomy.
  late final pulumi.Output<String> description;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. User-defined labels for the DataTaxonomy.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{data_taxonomy_id}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// System generated globally unique ID for the dataTaxonomy. This ID will be different if the DataTaxonomy is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the DataTaxonomy was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataTaxonomy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataTaxonomy]. {@macro pulumi_dataplex_v1_data_taxonomy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataTaxonomy(
    String name, {
    DataTaxonomyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataplex/v1:DataTaxonomy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attributeCount = registerOutput<int>('attributeCount');
    classCount = registerOutput<int>('classCount');
    createTime = registerOutput<String>('createTime');
    dataTaxonomyId = registerOutput<String>('dataTaxonomyId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
