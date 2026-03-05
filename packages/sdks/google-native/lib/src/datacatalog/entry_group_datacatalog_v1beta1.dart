import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_group_datacatalog_v1beta1_args.dart';
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';

/// A maximum of 10,000 entry groups may be created per organization across all locations. Users should enable the Data Catalog API in the project identified by the `parent` parameter (see [Data Catalog Resource Project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project) for more information).
class EntryGroupDatacatalogV1beta1 extends pulumi.CustomResource {
  /// Timestamps about this EntryGroup. Default value is empty timestamps.
  late final pulumi.Output<
    GoogleCloudDatacatalogV1beta1SystemTimestampsResponse
  >
  dataCatalogTimestamps;

  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  late final pulumi.Output<String> description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  late final pulumi.Output<String> displayName;

  /// Required. The id of the entry group to create. The id must begin with a letter or underscore, contain only English letters, numbers and underscores, and be at most 64 characters.
  late final pulumi.Output<String> entryGroupId;
  late final pulumi.Output<String> location;

  /// The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [EntryGroupDatacatalogV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryGroupDatacatalogV1beta1]. {@macro pulumi_datacatalog_v1beta1_entry_group_datacatalog_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryGroupDatacatalogV1beta1(
    String name, {
    EntryGroupDatacatalogV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datacatalog/v1beta1:EntryGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dataCatalogTimestamps =
        registerOutput<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>(
          'dataCatalogTimestamps',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    entryGroupId = registerOutput<String>('entryGroupId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
