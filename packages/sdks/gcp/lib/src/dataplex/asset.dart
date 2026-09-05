import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_args.dart';
import 'asset_discovery_spec.dart';
import 'asset_discovery_status.dart';
import 'asset_resource_spec.dart';
import 'asset_resource_status.dart';
import 'asset_security_status.dart';
import 'asset_state.dart';

/// The Dataplex Asset resource
///
/// ## Example Usage
///
/// ### Basic_asset
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicBucket = new gcp.storage.Bucket("basic_bucket", {
///     name: "bucket",
///     location: "us-west1",
///     uniformBucketLevelAccess: true,
///     project: "my-project-name",
/// });
/// const basicLake = new gcp.dataplex.Lake("basic_lake", {
///     name: "lake",
///     location: "us-west1",
///     project: "my-project-name",
/// });
/// const basicZone = new gcp.dataplex.Zone("basic_zone", {
///     name: "zone",
///     location: "us-west1",
///     lake: basicLake.name,
///     type: "RAW",
///     discoverySpec: {
///         enabled: false,
///     },
///     resourceSpec: {
///         locationType: "SINGLE_REGION",
///     },
///     project: "my-project-name",
/// });
/// const primary = new gcp.dataplex.Asset("primary", {
///     name: "asset",
///     location: "us-west1",
///     lake: basicLake.name,
///     dataplexZone: basicZone.name,
///     discoverySpec: {
///         enabled: false,
///     },
///     resourceSpec: {
///         name: "projects/my-project-name/buckets/bucket",
///         type: "STORAGE_BUCKET",
///     },
///     labels: {
///         env: "foo",
///         "my-asset": "exists",
///     },
///     project: "my-project-name",
/// }, {
///     dependsOn: [basicBucket],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_bucket = gcp.storage.Bucket("basic_bucket",
///     name="bucket",
///     location="us-west1",
///     uniform_bucket_level_access=True,
///     project="my-project-name")
/// basic_lake = gcp.dataplex.Lake("basic_lake",
///     name="lake",
///     location="us-west1",
///     project="my-project-name")
/// basic_zone = gcp.dataplex.Zone("basic_zone",
///     name="zone",
///     location="us-west1",
///     lake=basic_lake.name,
///     type="RAW",
///     discovery_spec={
///         "enabled": False,
///     },
///     resource_spec={
///         "location_type": "SINGLE_REGION",
///     },
///     project="my-project-name")
/// primary = gcp.dataplex.Asset("primary",
///     name="asset",
///     location="us-west1",
///     lake=basic_lake.name,
///     dataplex_zone=basic_zone.name,
///     discovery_spec={
///         "enabled": False,
///     },
///     resource_spec={
///         "name": "projects/my-project-name/buckets/bucket",
///         "type": "STORAGE_BUCKET",
///     },
///     labels={
///         "env": "foo",
///         "my-asset": "exists",
///     },
///     project="my-project-name",
///     opts = pulumi.ResourceOptions(depends_on=[basic_bucket]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicBucket = new Gcp.Storage.Bucket("basic_bucket", new()
///     {
///         Name = "bucket",
///         Location = "us-west1",
///         UniformBucketLevelAccess = true,
///         Project = "my-project-name",
///     });
///
///     var basicLake = new Gcp.DataPlex.Lake("basic_lake", new()
///     {
///         Name = "lake",
///         Location = "us-west1",
///         Project = "my-project-name",
///     });
///
///     var basicZone = new Gcp.DataPlex.Zone("basic_zone", new()
///     {
///         Name = "zone",
///         Location = "us-west1",
///         Lake = basicLake.Name,
///         Type = "RAW",
///         DiscoverySpec = new Gcp.DataPlex.Inputs.ZoneDiscoverySpecArgs
///         {
///             Enabled = false,
///         },
///         ResourceSpec = new Gcp.DataPlex.Inputs.ZoneResourceSpecArgs
///         {
///             LocationType = "SINGLE_REGION",
///         },
///         Project = "my-project-name",
///     });
///
///     var primary = new Gcp.DataPlex.Asset("primary", new()
///     {
///         Name = "asset",
///         Location = "us-west1",
///         Lake = basicLake.Name,
///         DataplexZone = basicZone.Name,
///         DiscoverySpec = new Gcp.DataPlex.Inputs.AssetDiscoverySpecArgs
///         {
///             Enabled = false,
///         },
///         ResourceSpec = new Gcp.DataPlex.Inputs.AssetResourceSpecArgs
///         {
///             Name = "projects/my-project-name/buckets/bucket",
///             Type = "STORAGE_BUCKET",
///         },
///         Labels =
///         {
///             { "env", "foo" },
///             { "my-asset", "exists" },
///         },
///         Project = "my-project-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             basicBucket,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicBucket, err := storage.NewBucket(ctx, "basic_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("bucket"),
/// 			Location:                 pulumi.String("us-west1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			Project:                  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicLake, err := dataplex.NewLake(ctx, "basic_lake", &dataplex.LakeArgs{
/// 			Name:     pulumi.String("lake"),
/// 			Location: pulumi.String("us-west1"),
/// 			Project:  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicZone, err := dataplex.NewZone(ctx, "basic_zone", &dataplex.ZoneArgs{
/// 			Name:     pulumi.String("zone"),
/// 			Location: pulumi.String("us-west1"),
/// 			Lake:     basicLake.Name,
/// 			Type:     pulumi.String("RAW"),
/// 			DiscoverySpec: &dataplex.ZoneDiscoverySpecArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 			ResourceSpec: &dataplex.ZoneResourceSpecArgs{
/// 				LocationType: pulumi.String("SINGLE_REGION"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewAsset(ctx, "primary", &dataplex.AssetArgs{
/// 			Name:         pulumi.String("asset"),
/// 			Location:     pulumi.String("us-west1"),
/// 			Lake:         basicLake.Name,
/// 			DataplexZone: basicZone.Name,
/// 			DiscoverySpec: &dataplex.AssetDiscoverySpecArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 			ResourceSpec: &dataplex.AssetResourceSpecArgs{
/// 				Name: pulumi.String("projects/my-project-name/buckets/bucket"),
/// 				Type: pulumi.String("STORAGE_BUCKET"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env":      pulumi.String("foo"),
/// 				"my-asset": pulumi.String("exists"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			basicBucket,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "basic_bucket" {
///   name                        = "bucket"
///   location                    = "us-west1"
///   uniform_bucket_level_access = true
///   project                     = "my-project-name"
/// }
/// resource "gcp_dataplex_lake" "basic_lake" {
///   name     = "lake"
///   location = "us-west1"
///   project  = "my-project-name"
/// }
/// resource "gcp_dataplex_zone" "basic_zone" {
///   name     = "zone"
///   location = "us-west1"
///   lake     = gcp_dataplex_lake.basic_lake.name
///   type     = "RAW"
///   discovery_spec = {
///     enabled = false
///   }
///   resource_spec = {
///     location_type = "SINGLE_REGION"
///   }
///   project = "my-project-name"
/// }
/// resource "gcp_dataplex_asset" "primary" {
///   depends_on    = [gcp_storage_bucket.basic_bucket]
///   name          = "asset"
///   location      = "us-west1"
///   lake          = gcp_dataplex_lake.basic_lake.name
///   dataplex_zone = gcp_dataplex_zone.basic_zone.name
///   discovery_spec = {
///     enabled = false
///   }
///   resource_spec = {
///     name = "projects/my-project-name/buckets/bucket"
///     type = "STORAGE_BUCKET"
///   }
///   labels = {
///     "env"      = "foo"
///     "my-asset" = "exists"
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.dataplex.Lake;
/// import com.pulumi.gcp.dataplex.LakeArgs;
/// import com.pulumi.gcp.dataplex.Zone;
/// import com.pulumi.gcp.dataplex.ZoneArgs;
/// import com.pulumi.gcp.dataplex.inputs.ZoneDiscoverySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.ZoneResourceSpecArgs;
/// import com.pulumi.gcp.dataplex.Asset;
/// import com.pulumi.gcp.dataplex.AssetArgs;
/// import com.pulumi.gcp.dataplex.inputs.AssetDiscoverySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.AssetResourceSpecArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var basicBucket = new Bucket("basicBucket", BucketArgs.builder()
///             .name("bucket")
///             .location("us-west1")
///             .uniformBucketLevelAccess(true)
///             .project("my-project-name")
///             .build());
///
///         var basicLake = new Lake("basicLake", LakeArgs.builder()
///             .name("lake")
///             .location("us-west1")
///             .project("my-project-name")
///             .build());
///
///         var basicZone = new Zone("basicZone", ZoneArgs.builder()
///             .name("zone")
///             .location("us-west1")
///             .lake(basicLake.name())
///             .type("RAW")
///             .discoverySpec(ZoneDiscoverySpecArgs.builder()
///                 .enabled(false)
///                 .build())
///             .resourceSpec(ZoneResourceSpecArgs.builder()
///                 .locationType("SINGLE_REGION")
///                 .build())
///             .project("my-project-name")
///             .build());
///
///         var primary = new Asset("primary", AssetArgs.builder()
///             .name("asset")
///             .location("us-west1")
///             .lake(basicLake.name())
///             .dataplexZone(basicZone.name())
///             .discoverySpec(AssetDiscoverySpecArgs.builder()
///                 .enabled(false)
///                 .build())
///             .resourceSpec(AssetResourceSpecArgs.builder()
///                 .name("projects/my-project-name/buckets/bucket")
///                 .type("STORAGE_BUCKET")
///                 .build())
///             .labels(Map.ofEntries(
///                 Map.entry("env", "foo"),
///                 Map.entry("my-asset", "exists")
///             ))
///             .project("my-project-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(basicBucket)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicBucket:
///     type: gcp:storage:Bucket
///     name: basic_bucket
///     properties:
///       name: bucket
///       location: us-west1
///       uniformBucketLevelAccess: true
///       project: my-project-name
///   basicLake:
///     type: gcp:dataplex:Lake
///     name: basic_lake
///     properties:
///       name: lake
///       location: us-west1
///       project: my-project-name
///   basicZone:
///     type: gcp:dataplex:Zone
///     name: basic_zone
///     properties:
///       name: zone
///       location: us-west1
///       lake: ${basicLake.name}
///       type: RAW
///       discoverySpec:
///         enabled: false
///       resourceSpec:
///         locationType: SINGLE_REGION
///       project: my-project-name
///   primary:
///     type: gcp:dataplex:Asset
///     properties:
///       name: asset
///       location: us-west1
///       lake: ${basicLake.name}
///       dataplexZone: ${basicZone.name}
///       discoverySpec:
///         enabled: false
///       resourceSpec:
///         name: projects/my-project-name/buckets/bucket
///         type: STORAGE_BUCKET
///       labels:
///         env: foo
///         my-asset: exists
///       project: my-project-name
///     options:
///       dependsOn:
///         - ${basicBucket}
/// ```
///
///
/// ## Import
///
/// Asset can be imported using any of these accepted formats:
/// * `projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}`
/// * `{{project}}/{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}`
/// * `{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}`
///
///
/// When using the `pulumi import` command, Asset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/asset:Asset default projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}
/// $ pulumi import gcp:dataplex/asset:Asset default {{project}}/{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
/// $ pulumi import gcp:dataplex/asset:Asset default {{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
/// ```
class Asset extends pulumi.CustomResource {
  /// Output only. The time when the asset was created.
  late final pulumi.Output<String> createTime;
  /// The zone for the resource
  late final pulumi.Output<String> dataplexZone;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Description of the asset.
  late final pulumi.Output<String?> description;
  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  late final pulumi.Output<AssetDiscoverySpec> discoverySpec;
  /// Output only. Status of the discovery feature applied to data referenced by this asset.
  late final pulumi.Output<List<AssetDiscoveryStatus>> discoveryStatuses;
  /// Optional. User friendly display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The lake for the resource
  late final pulumi.Output<String> lake;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The name of the asset.
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  late final pulumi.Output<AssetResourceSpec> resourceSpec;
  /// Output only. Status of the resource referenced by this asset.
  late final pulumi.Output<List<AssetResourceStatus>> resourceStatuses;
  /// Output only. Status of the security policy applied to resource referenced by this asset.
  late final pulumi.Output<List<AssetSecurityStatus>> securityStatuses;
  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  late final pulumi.Output<String> state;
  /// Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the asset was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Asset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Asset]. {@macro pulumi_dataplex_asset_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Asset(
    String name, {
    AssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/asset:Asset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    dataplexZone = registerOutput<String>('dataplexZone');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoverySpec = registerOutput<AssetDiscoverySpec>('discoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discoveryStatuses = registerOutput<List<AssetDiscoveryStatus>>('discoveryStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetDiscoveryStatus>(guardedValue, (value) => AssetDiscoveryStatus.fromMap((value as Map).cast<String, dynamic>())); });
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourceSpec = registerOutput<AssetResourceSpec>('resourceSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceStatuses = registerOutput<List<AssetResourceStatus>>('resourceStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetResourceStatus>(guardedValue, (value) => AssetResourceStatus.fromMap((value as Map).cast<String, dynamic>())); });
    securityStatuses = registerOutput<List<AssetSecurityStatus>>('securityStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetSecurityStatus>(guardedValue, (value) => AssetSecurityStatus.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Asset] resource's state with the given [name] and [id].
  static Asset get(
    String name,
    pulumi.Input<String> id, {
    AssetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Asset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Asset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/asset:Asset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataplexZone = registerOutput<String>('dataplexZone');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoverySpec = registerOutput<AssetDiscoverySpec>('discoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discoveryStatuses = registerOutput<List<AssetDiscoveryStatus>>('discoveryStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetDiscoveryStatus>(guardedValue, (value) => AssetDiscoveryStatus.fromMap((value as Map).cast<String, dynamic>())); });
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourceSpec = registerOutput<AssetResourceSpec>('resourceSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceStatuses = registerOutput<List<AssetResourceStatus>>('resourceStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetResourceStatus>(guardedValue, (value) => AssetResourceStatus.fromMap((value as Map).cast<String, dynamic>())); });
    securityStatuses = registerOutput<List<AssetSecurityStatus>>('securityStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetSecurityStatus>(guardedValue, (value) => AssetSecurityStatus.fromMap((value as Map).cast<String, dynamic>())); });
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Asset] resource.
  Asset.reference(String urn)
    : super(
        'gcp:dataplex/asset:Asset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dataplexZone = registerOutput<String>('dataplexZone');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoverySpec = registerOutput<AssetDiscoverySpec>('discoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discoveryStatuses = registerOutput<List<AssetDiscoveryStatus>>('discoveryStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetDiscoveryStatus>(guardedValue, (value) => AssetDiscoveryStatus.fromMap((value as Map).cast<String, dynamic>())); });
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourceSpec = registerOutput<AssetResourceSpec>('resourceSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceStatuses = registerOutput<List<AssetResourceStatus>>('resourceStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetResourceStatus>(guardedValue, (value) => AssetResourceStatus.fromMap((value as Map).cast<String, dynamic>())); });
    securityStatuses = registerOutput<List<AssetSecurityStatus>>('securityStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetSecurityStatus>(guardedValue, (value) => AssetSecurityStatus.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
