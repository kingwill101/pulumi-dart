import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1beta1_taxonomy_service_response.dart';
import 'taxonomy_datacatalog_v1beta1_args.dart';

/// Creates a taxonomy in the specified project.
/// Auto-naming is currently not supported for this resource.
class TaxonomyDatacatalogV1beta1 extends pulumi.CustomResource {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  late final pulumi.Output<List<String>> activatedPolicyTypes;

  /// Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  late final pulumi.Output<String> description;

  /// User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// Resource name of this taxonomy, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{id}".
  late final pulumi.Output<String> name;

  /// Number of policy tags contained in this taxonomy.
  late final pulumi.Output<int> policyTagCount;
  late final pulumi.Output<String> project;

  /// Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse>
  service;

  /// Timestamps about this taxonomy. Only create_time and update_time are used.
  late final pulumi.Output<
    GoogleCloudDatacatalogV1beta1SystemTimestampsResponse
  >
  taxonomyTimestamps;

  /// Creates a new [TaxonomyDatacatalogV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaxonomyDatacatalogV1beta1]. {@macro pulumi_datacatalog_v1beta1_taxonomy_datacatalog_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaxonomyDatacatalogV1beta1(
    String name, {
    TaxonomyDatacatalogV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datacatalog/v1beta1:Taxonomy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activatedPolicyTypes = registerOutput<List<String>>('activatedPolicyTypes');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyTagCount = registerOutput<int>('policyTagCount');
    project = registerOutput<String>('project');
    service =
        registerOutput<GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse>(
          'service',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    taxonomyTimestamps =
        registerOutput<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>(
          'taxonomyTimestamps',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
