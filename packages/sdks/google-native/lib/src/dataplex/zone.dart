import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_status_response.dart';
import 'google_cloud_dataplex_v1_zone_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec_response.dart';
import 'zone_args.dart';

/// Creates a zone resource within a lake.
/// Auto-naming is currently not supported for this resource.
class Zone extends pulumi.CustomResource {
  /// Aggregated status of the underlying assets of the zone.
  late final pulumi.Output<GoogleCloudDataplexV1AssetStatusResponse>
  assetStatus;

  /// The time when the zone was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the zone.
  late final pulumi.Output<String> description;

  /// Optional. Specification of the discovery feature applied to data in this zone.
  late final pulumi.Output<GoogleCloudDataplexV1ZoneDiscoverySpecResponse>
  discoverySpec;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// Optional. User defined labels for the zone.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;

  /// The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Specification of the resources that are referenced by the assets within this zone.
  late final pulumi.Output<GoogleCloudDataplexV1ZoneResourceSpecResponse>
  resourceSpec;

  /// Current state of the zone.
  late final pulumi.Output<String> state;

  /// Immutable. The type of the zone.
  late final pulumi.Output<String> type;

  /// System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the zone was last updated.
  late final pulumi.Output<String> updateTime;

  /// Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique across all lakes from all locations in a project. * Must not be one of the reserved IDs (i.e. "default", "global-temp")
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_dataplex_v1_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(String name, {ZoneArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dataplex/v1:Zone',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    assetStatus = registerOutput<GoogleCloudDataplexV1AssetStatusResponse>(
      'assetStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudDataplexV1AssetStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    discoverySpec =
        registerOutput<GoogleCloudDataplexV1ZoneDiscoverySpecResponse>(
          'discoverySpec',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1ZoneDiscoverySpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    displayName = registerOutput<String>('displayName');
    labels = registerOutput<Map<String, String>>('labels');
    lakeId = registerOutput<String>('lakeId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resourceSpec =
        registerOutput<GoogleCloudDataplexV1ZoneResourceSpecResponse>(
          'resourceSpec',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1ZoneResourceSpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    zoneId = registerOutput<String>('zoneId');
  }
}
