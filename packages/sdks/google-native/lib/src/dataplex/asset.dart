import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_args.dart';
import 'google_cloud_dataplex_v1_asset_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_discovery_status_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_status_response.dart';
import 'google_cloud_dataplex_v1_asset_security_status_response.dart';

/// Creates an asset resource.
/// Auto-naming is currently not supported for this resource.
class Asset extends pulumi.CustomResource {
  /// Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  late final pulumi.Output<String> assetId;

  /// The time when the asset was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the asset.
  late final pulumi.Output<String> description;

  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  late final pulumi.Output<GoogleCloudDataplexV1AssetDiscoverySpecResponse>
  discoverySpec;

  /// Status of the discovery feature applied to data referenced by this asset.
  late final pulumi.Output<GoogleCloudDataplexV1AssetDiscoveryStatusResponse>
  discoveryStatus;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// Optional. User defined labels for the asset.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;

  /// The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Specification of the resource that is referenced by this asset.
  late final pulumi.Output<GoogleCloudDataplexV1AssetResourceSpecResponse>
  resourceSpec;

  /// Status of the resource referenced by this asset.
  late final pulumi.Output<GoogleCloudDataplexV1AssetResourceStatusResponse>
  resourceStatus;

  /// Status of the security policy applied to resource referenced by this asset.
  late final pulumi.Output<GoogleCloudDataplexV1AssetSecurityStatusResponse>
  securityStatus;

  /// Current state of the asset.
  late final pulumi.Output<String> state;

  /// System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the asset was last updated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> zone;

  /// Creates a new [Asset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Asset]. {@macro pulumi_dataplex_v1_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Asset(String name, {AssetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dataplex/v1:Asset',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    assetId = registerOutput<String>('assetId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    discoverySpec =
        registerOutput<GoogleCloudDataplexV1AssetDiscoverySpecResponse>(
          'discoverySpec',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1AssetDiscoverySpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    discoveryStatus =
        registerOutput<GoogleCloudDataplexV1AssetDiscoveryStatusResponse>(
          'discoveryStatus',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1AssetDiscoveryStatusResponse.fromMap(
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
        registerOutput<GoogleCloudDataplexV1AssetResourceSpecResponse>(
          'resourceSpec',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1AssetResourceSpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    resourceStatus =
        registerOutput<GoogleCloudDataplexV1AssetResourceStatusResponse>(
          'resourceStatus',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1AssetResourceStatusResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    securityStatus =
        registerOutput<GoogleCloudDataplexV1AssetSecurityStatusResponse>(
          'securityStatus',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1AssetSecurityStatusResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    zone = registerOutput<String>('zone');
  }
}
