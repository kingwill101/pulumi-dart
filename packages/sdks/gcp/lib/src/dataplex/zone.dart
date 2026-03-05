import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_args.dart';
import 'zone_discovery_spec.dart';
import 'zone_resource_spec.dart';
import 'zone_state.dart';

/// The Dataplex Zone resource
///
/// ## Example Usage
///
/// ### Basic_zone
/// A basic example of a dataplex zone
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataplex.Lake("basic", {
///     location: "us-west1",
///     name: "lake",
///     description: "Lake for DCL",
///     displayName: "Lake for DCL",
///     project: "my-project-name",
///     labels: {
///         "my-lake": "exists",
///     },
/// });
/// const primary = new gcp.dataplex.Zone("primary", {
///     discoverySpec: {
///         enabled: false,
///     },
///     lake: basic.name,
///     location: "us-west1",
///     name: "zone",
///     resourceSpec: {
///         locationType: "MULTI_REGION",
///     },
///     type: "RAW",
///     description: "Zone for DCL",
///     displayName: "Zone for DCL",
///     project: "my-project-name",
///     labels: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataplex.Lake("basic",
///     location="us-west1",
///     name="lake",
///     description="Lake for DCL",
///     display_name="Lake for DCL",
///     project="my-project-name",
///     labels={
///         "my-lake": "exists",
///     })
/// primary = gcp.dataplex.Zone("primary",
///     discovery_spec={
///         "enabled": False,
///     },
///     lake=basic.name,
///     location="us-west1",
///     name="zone",
///     resource_spec={
///         "location_type": "MULTI_REGION",
///     },
///     type="RAW",
///     description="Zone for DCL",
///     display_name="Zone for DCL",
///     project="my-project-name",
///     labels={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DataPlex.Lake("basic", new()
///     {
///         Location = "us-west1",
///         Name = "lake",
///         Description = "Lake for DCL",
///         DisplayName = "Lake for DCL",
///         Project = "my-project-name",
///         Labels =
///         {
///             { "my-lake", "exists" },
///         },
///     });
///
///     var primary = new Gcp.DataPlex.Zone("primary", new()
///     {
///         DiscoverySpec = new Gcp.DataPlex.Inputs.ZoneDiscoverySpecArgs
///         {
///             Enabled = false,
///         },
///         Lake = basic.Name,
///         Location = "us-west1",
///         Name = "zone",
///         ResourceSpec = new Gcp.DataPlex.Inputs.ZoneResourceSpecArgs
///         {
///             LocationType = "MULTI_REGION",
///         },
///         Type = "RAW",
///         Description = "Zone for DCL",
///         DisplayName = "Zone for DCL",
///         Project = "my-project-name",
///         Labels = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := dataplex.NewLake(ctx, "basic", &dataplex.LakeArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("lake"),
/// 			Description: pulumi.String("Lake for DCL"),
/// 			DisplayName: pulumi.String("Lake for DCL"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Labels: pulumi.StringMap{
/// 				"my-lake": pulumi.String("exists"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewZone(ctx, "primary", &dataplex.ZoneArgs{
/// 			DiscoverySpec: &dataplex.ZoneDiscoverySpecArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 			Lake:     basic.Name,
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("zone"),
/// 			ResourceSpec: &dataplex.ZoneResourceSpecArgs{
/// 				LocationType: pulumi.String("MULTI_REGION"),
/// 			},
/// 			Type:        pulumi.String("RAW"),
/// 			Description: pulumi.String("Zone for DCL"),
/// 			DisplayName: pulumi.String("Zone for DCL"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Labels:      pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Lake;
/// import com.pulumi.gcp.dataplex.LakeArgs;
/// import com.pulumi.gcp.dataplex.Zone;
/// import com.pulumi.gcp.dataplex.ZoneArgs;
/// import com.pulumi.gcp.dataplex.inputs.ZoneDiscoverySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.ZoneResourceSpecArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var basic = new Lake("basic", LakeArgs.builder()
///             .location("us-west1")
///             .name("lake")
///             .description("Lake for DCL")
///             .displayName("Lake for DCL")
///             .project("my-project-name")
///             .labels(Map.of("my-lake", "exists"))
///             .build());
///
///         var primary = new Zone("primary", ZoneArgs.builder()
///             .discoverySpec(ZoneDiscoverySpecArgs.builder()
///                 .enabled(false)
///                 .build())
///             .lake(basic.name())
///             .location("us-west1")
///             .name("zone")
///             .resourceSpec(ZoneResourceSpecArgs.builder()
///                 .locationType("MULTI_REGION")
///                 .build())
///             .type("RAW")
///             .description("Zone for DCL")
///             .displayName("Zone for DCL")
///             .project("my-project-name")
///             .labels(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:dataplex:Zone
///     properties:
///       discoverySpec:
///         enabled: false
///       lake: ${basic.name}
///       location: us-west1
///       name: zone
///       resourceSpec:
///         locationType: MULTI_REGION
///       type: RAW
///       description: Zone for DCL
///       displayName: Zone for DCL
///       project: my-project-name
///       labels: {}
///   basic:
///     type: gcp:dataplex:Lake
///     properties:
///       location: us-west1
///       name: lake
///       description: Lake for DCL
///       displayName: Lake for DCL
///       project: my-project-name
///       labels:
///         my-lake: exists
/// ```
///
///
/// ## Import
///
/// Zone can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{name}}`
///
/// * `{{project}}/{{location}}/{{lake}}/{{name}}`
///
/// * `{{location}}/{{lake}}/{{name}}`
///
/// When using the `pulumi import` command, Zone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/zone:Zone default projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/zone:Zone default {{project}}/{{location}}/{{lake}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/zone:Zone default {{location}}/{{lake}}/{{name}}
/// ```
class Zone extends pulumi.CustomResource {
  /// Output only. Aggregated status of the underlying assets of the zone.
  late final pulumi.Output<List<Map<String, dynamic>>> assetStatuses;
  /// Output only. The time when the zone was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Description of the zone.
  late final pulumi.Output<String?> description;
  /// Required. Specification of the discovery feature applied to data in this zone.
  late final pulumi.Output<ZoneDiscoverySpec> discoverySpec;
  /// Optional. User friendly display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The lake for the resource
  late final pulumi.Output<String> lake;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The name of the zone.
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  late final pulumi.Output<ZoneResourceSpec> resourceSpec;
  /// Output only. Current state of the zone. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  late final pulumi.Output<String> state;
  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  late final pulumi.Output<String> type;
  /// Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the zone was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_dataplex_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetStatuses = registerOutput<List<Map<String, dynamic>>>('assetStatuses');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    discoverySpec = registerOutput<ZoneDiscoverySpec>('discoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resourceSpec = registerOutput<ZoneResourceSpec>('resourceSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Zone] resource's state with the given [name] and [id].
  static Zone get(
    String name,
    pulumi.Input<String> id, {
    ZoneState? state,
  }) {
    return Zone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Zone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/zone:Zone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetStatuses = registerOutput<List<Map<String, dynamic>>>('assetStatuses');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    discoverySpec = registerOutput<ZoneDiscoverySpec>('discoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    lake = registerOutput<String>('lake');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resourceSpec = registerOutput<ZoneResourceSpec>('resourceSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
