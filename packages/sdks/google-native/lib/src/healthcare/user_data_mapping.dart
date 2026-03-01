import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_response.dart';
import 'user_data_mapping_args.dart';

/// Creates a new User data mapping in the parent consent store.
class UserDataMapping extends pulumi.CustomResource {
  /// Indicates the time when this mapping was archived.
  late final pulumi.Output<String> archiveTime;
  /// Indicates whether this mapping is archived.
  late final pulumi.Output<bool> archived;
  late final pulumi.Output<String> consentStoreId;
  /// A unique identifier for the mapped resource.
  late final pulumi.Output<String> dataId;
  late final pulumi.Output<String> datasetId;
  late final pulumi.Output<String> location;
  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  late final pulumi.Output<List<AttributeResponse>> resourceAttributes;
  /// User's UUID provided by the client.
  late final pulumi.Output<String> userId;

  /// Creates a new [UserDataMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserDataMapping]. {@macro pulumi_healthcare_v1_user_data_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserDataMapping(
    String name, {
    UserDataMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:UserDataMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.archiveTime = registerOutput<String>('archiveTime');
    this.archived = registerOutput<bool>('archived');
    this.consentStoreId = registerOutput<String>('consentStoreId');
    this.dataId = registerOutput<String>('dataId');
    this.datasetId = registerOutput<String>('datasetId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceAttributes = registerOutput<List<AttributeResponse>>('resourceAttributes');
    this.userId = registerOutput<String>('userId');
  }
}
