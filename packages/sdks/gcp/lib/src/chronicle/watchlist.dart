import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_args.dart';
import 'watchlist_entity_count.dart';
import 'watchlist_entity_population_mechanism.dart';
import 'watchlist_state.dart';
import 'watchlist_watchlist_user_preferences.dart';

/// A watchlist is a list of entities that allows for bulk operations over the included entities.
///
///
/// To get more information about Watchlist, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.watchlists)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Watchlist Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Watchlist("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     watchlistId: "watchlist-id",
///     description: "watchlist-description",
///     displayName: "watchlist_name",
///     multiplyingFactor: 1,
///     entityPopulationMechanism: {
///         manual: {},
///     },
///     watchlistUserPreferences: {
///         pinned: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Watchlist("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     watchlist_id="watchlist-id",
///     description="watchlist-description",
///     display_name="watchlist_name",
///     multiplying_factor=float(1),
///     entity_population_mechanism={
///         "manual": {},
///     },
///     watchlist_user_preferences={
///         "pinned": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.Watchlist("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         WatchlistId = "watchlist-id",
///         Description = "watchlist-description",
///         DisplayName = "watchlist_name",
///         MultiplyingFactor = 1.0,
///         EntityPopulationMechanism = new Gcp.Chronicle.Inputs.WatchlistEntityPopulationMechanismArgs
///         {
///             Manual = null,
///         },
///         WatchlistUserPreferences = new Gcp.Chronicle.Inputs.WatchlistWatchlistUserPreferencesArgs
///         {
///             Pinned = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewWatchlist(ctx, "example", &chronicle.WatchlistArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			WatchlistId:       pulumi.String("watchlist-id"),
/// 			Description:       pulumi.String("watchlist-description"),
/// 			DisplayName:       pulumi.String("watchlist_name"),
/// 			MultiplyingFactor: pulumi.Float64(1),
/// 			EntityPopulationMechanism: &chronicle.WatchlistEntityPopulationMechanismArgs{
/// 				Manual: &chronicle.WatchlistEntityPopulationMechanismManualArgs{},
/// 			},
/// 			WatchlistUserPreferences: &chronicle.WatchlistWatchlistUserPreferencesArgs{
/// 				Pinned: pulumi.Bool(true),
/// 			},
/// 		})
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
/// resource "gcp_chronicle_watchlist" "example" {
///   location           = "us"
///   instance           = "00000000-0000-0000-0000-000000000000"
///   watchlist_id       = "watchlist-id"
///   description        = "watchlist-description"
///   display_name       = "watchlist_name"
///   multiplying_factor = 1
///   entity_population_mechanism = {
///     manual = {}
///   }
///   watchlist_user_preferences = {
///     pinned = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.Watchlist;
/// import com.pulumi.gcp.chronicle.WatchlistArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismManualArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistWatchlistUserPreferencesArgs;
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
///         var example = new Watchlist("example", WatchlistArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .watchlistId("watchlist-id")
///             .description("watchlist-description")
///             .displayName("watchlist_name")
///             .multiplyingFactor(1.0)
///             .entityPopulationMechanism(WatchlistEntityPopulationMechanismArgs.builder()
///                 .manual(WatchlistEntityPopulationMechanismManualArgs.builder()
///                     .build())
///                 .build())
///             .watchlistUserPreferences(WatchlistWatchlistUserPreferencesArgs.builder()
///                 .pinned(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:Watchlist
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       watchlistId: watchlist-id
///       description: watchlist-description
///       displayName: watchlist_name
///       multiplyingFactor: 1
///       entityPopulationMechanism:
///         manual: {}
///       watchlistUserPreferences:
///         pinned: true
/// ```
///
/// ### Chronicle Watchlist Without Id
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Watchlist("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     description: "watchlist-description",
///     displayName: "watchlist-name",
///     multiplyingFactor: 1,
///     entityPopulationMechanism: {
///         manual: {},
///     },
///     watchlistUserPreferences: {
///         pinned: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Watchlist("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     description="watchlist-description",
///     display_name="watchlist-name",
///     multiplying_factor=float(1),
///     entity_population_mechanism={
///         "manual": {},
///     },
///     watchlist_user_preferences={
///         "pinned": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.Watchlist("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         Description = "watchlist-description",
///         DisplayName = "watchlist-name",
///         MultiplyingFactor = 1.0,
///         EntityPopulationMechanism = new Gcp.Chronicle.Inputs.WatchlistEntityPopulationMechanismArgs
///         {
///             Manual = null,
///         },
///         WatchlistUserPreferences = new Gcp.Chronicle.Inputs.WatchlistWatchlistUserPreferencesArgs
///         {
///             Pinned = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewWatchlist(ctx, "example", &chronicle.WatchlistArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Description:       pulumi.String("watchlist-description"),
/// 			DisplayName:       pulumi.String("watchlist-name"),
/// 			MultiplyingFactor: pulumi.Float64(1),
/// 			EntityPopulationMechanism: &chronicle.WatchlistEntityPopulationMechanismArgs{
/// 				Manual: &chronicle.WatchlistEntityPopulationMechanismManualArgs{},
/// 			},
/// 			WatchlistUserPreferences: &chronicle.WatchlistWatchlistUserPreferencesArgs{
/// 				Pinned: pulumi.Bool(true),
/// 			},
/// 		})
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
/// resource "gcp_chronicle_watchlist" "example" {
///   location           = "us"
///   instance           = "00000000-0000-0000-0000-000000000000"
///   description        = "watchlist-description"
///   display_name       = "watchlist-name"
///   multiplying_factor = 1
///   entity_population_mechanism = {
///     manual = {}
///   }
///   watchlist_user_preferences = {
///     pinned = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.Watchlist;
/// import com.pulumi.gcp.chronicle.WatchlistArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistEntityPopulationMechanismManualArgs;
/// import com.pulumi.gcp.chronicle.inputs.WatchlistWatchlistUserPreferencesArgs;
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
///         var example = new Watchlist("example", WatchlistArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .description("watchlist-description")
///             .displayName("watchlist-name")
///             .multiplyingFactor(1.0)
///             .entityPopulationMechanism(WatchlistEntityPopulationMechanismArgs.builder()
///                 .manual(WatchlistEntityPopulationMechanismManualArgs.builder()
///                     .build())
///                 .build())
///             .watchlistUserPreferences(WatchlistWatchlistUserPreferencesArgs.builder()
///                 .pinned(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:Watchlist
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       description: watchlist-description
///       displayName: watchlist-name
///       multiplyingFactor: 1
///       entityPopulationMechanism:
///         manual: {}
///       watchlistUserPreferences:
///         pinned: true
/// ```
///
///
/// ## Import
///
/// Watchlist can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/watchlists/{{watchlist_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{watchlist_id}}`
/// * `{{location}}/{{instance}}/{{watchlist_id}}`
///
///
/// When using the `pulumi import` command, Watchlist can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/watchlist:Watchlist default projects/{{project}}/locations/{{location}}/instances/{{instance}}/watchlists/{{watchlist_id}}
/// $ pulumi import gcp:chronicle/watchlist:Watchlist default {{project}}/{{location}}/{{instance}}/{{watchlist_id}}
/// $ pulumi import gcp:chronicle/watchlist:Watchlist default {{location}}/{{instance}}/{{watchlist_id}}
/// ```
class Watchlist extends pulumi.CustomResource {
  /// Output only. Time the watchlist was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Description of the watchlist.
  late final pulumi.Output<String?> description;
  /// Required. Display name of the watchlist.
  /// Note that it must be at least one character and less than 63 characters
  /// (https://google.aip.dev/148).
  late final pulumi.Output<String> displayName;
  /// Count of different types of entities in the watchlist.
  /// Structure is documented below.
  late final pulumi.Output<List<WatchlistEntityCount>> entityCounts;
  /// Mechanism to populate entities in the watchlist.
  /// Structure is documented below.
  late final pulumi.Output<WatchlistEntityPopulationMechanism> entityPopulationMechanism;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final pulumi.Output<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final pulumi.Output<String> location;
  /// Optional. Weight applied to the risk score for entities
  /// in this watchlist.
  /// The default is 1.0 if it is not specified.
  late final pulumi.Output<double?> multiplyingFactor;
  /// Identifier. Resource name of the watchlist. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/watchlists/{watchlist}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. Time the watchlist was last updated.
  late final pulumi.Output<String> updateTime;
  /// Optional. The ID to use for the watchlist,
  /// which will become the final component of the watchlist's resource name.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z-/.
  late final pulumi.Output<String> watchlistId;
  /// A collection of user preferences for watchlist UI configuration.
  /// Structure is documented below.
  late final pulumi.Output<WatchlistWatchlistUserPreferences> watchlistUserPreferences;

  /// Creates a new [Watchlist].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Watchlist]. {@macro pulumi_chronicle_watchlist_watchlist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Watchlist(
    String name, {
    WatchlistArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/watchlist:Watchlist',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entityCounts = registerOutput<List<WatchlistEntityCount>>('entityCounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WatchlistEntityCount>(guardedValue, (value) => WatchlistEntityCount.fromMap((value as Map).cast<String, dynamic>())); });
    entityPopulationMechanism = registerOutput<WatchlistEntityPopulationMechanism>('entityPopulationMechanism', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistEntityPopulationMechanism.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    multiplyingFactor = registerOutput<double?>('multiplyingFactor');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    watchlistId = registerOutput<String>('watchlistId');
    watchlistUserPreferences = registerOutput<WatchlistWatchlistUserPreferences>('watchlistUserPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistWatchlistUserPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Watchlist] resource's state with the given [name] and [id].
  static Watchlist get(
    String name,
    pulumi.Input<String> id, {
    WatchlistState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Watchlist._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Watchlist._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/watchlist:Watchlist',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entityCounts = registerOutput<List<WatchlistEntityCount>>('entityCounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WatchlistEntityCount>(guardedValue, (value) => WatchlistEntityCount.fromMap((value as Map).cast<String, dynamic>())); });
    entityPopulationMechanism = registerOutput<WatchlistEntityPopulationMechanism>('entityPopulationMechanism', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistEntityPopulationMechanism.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    multiplyingFactor = registerOutput<double?>('multiplyingFactor');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    watchlistId = registerOutput<String>('watchlistId');
    watchlistUserPreferences = registerOutput<WatchlistWatchlistUserPreferences>('watchlistUserPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistWatchlistUserPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Watchlist] resource.
  Watchlist.reference(String urn)
    : super(
        'gcp:chronicle/watchlist:Watchlist',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entityCounts = registerOutput<List<WatchlistEntityCount>>('entityCounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WatchlistEntityCount>(guardedValue, (value) => WatchlistEntityCount.fromMap((value as Map).cast<String, dynamic>())); });
    entityPopulationMechanism = registerOutput<WatchlistEntityPopulationMechanism>('entityPopulationMechanism', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistEntityPopulationMechanism.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    multiplyingFactor = registerOutput<double?>('multiplyingFactor');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    watchlistId = registerOutput<String>('watchlistId');
    watchlistUserPreferences = registerOutput<WatchlistWatchlistUserPreferences>('watchlistUserPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistWatchlistUserPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
