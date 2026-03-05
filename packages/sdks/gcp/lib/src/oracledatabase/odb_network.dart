import 'package:pulumi/pulumi.dart' as pulumi;
import 'odb_network_args.dart';
import 'odb_network_state.dart';

/// An OdbNetwork resource which represents a private network providing connectivity between OracleDatabase resources and Google Cloud VPC network.
///
///
/// To get more information about OdbNetwork, see:
/// * How-to Guides
/// * [OracleDatabase@Google Cloud](https://cloud.google.com/oracle/database/docs/overview')
///
/// ## Example Usage
///
/// ### Oracledatabase Odbnetwork Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "new",
///     project: "my-project",
/// });
/// const my_odbnetwork = new gcp.oracledatabase.OdbNetwork("my-odbnetwork", {
///     odbNetworkId: "my-odbnetwork",
///     location: "us-west3",
///     project: "my-project",
///     network: _default.then(_default => _default.id),
///     labels: {
///         terraform_created: "true",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="new",
///     project="my-project")
/// my_odbnetwork = gcp.oracledatabase.OdbNetwork("my-odbnetwork",
///     odb_network_id="my-odbnetwork",
///     location="us-west3",
///     project="my-project",
///     network=default.id,
///     labels={
///         "terraform_created": "true",
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "new",
///         Project = "my-project",
///     });
///
///     var my_odbnetwork = new Gcp.OracleDatabase.OdbNetwork("my-odbnetwork", new()
///     {
///         OdbNetworkId = "my-odbnetwork",
///         Location = "us-west3",
///         Project = "my-project",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///         Labels =
///         {
///             { "terraform_created", "true" },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name:    "new",
/// 			Project: pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewOdbNetwork(ctx, "my-odbnetwork", &oracledatabase.OdbNetworkArgs{
/// 			OdbNetworkId: pulumi.String("my-odbnetwork"),
/// 			Location:     pulumi.String("us-west3"),
/// 			Project:      pulumi.String("my-project"),
/// 			Network:      pulumi.String(_default.Id),
/// 			Labels: pulumi.StringMap{
/// 				"terraform_created": pulumi.String("true"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.oracledatabase.OdbNetwork;
/// import com.pulumi.gcp.oracledatabase.OdbNetworkArgs;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("new")
///             .project("my-project")
///             .build());
///
///         var my_odbnetwork = new OdbNetwork("my-odbnetwork", OdbNetworkArgs.builder()
///             .odbNetworkId("my-odbnetwork")
///             .location("us-west3")
///             .project("my-project")
///             .network(default_.id())
///             .labels(Map.of("terraform_created", "true"))
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-odbnetwork:
///     type: gcp:oracledatabase:OdbNetwork
///     properties:
///       odbNetworkId: my-odbnetwork
///       location: us-west3
///       project: my-project
///       network: ${default.id}
///       labels:
///         terraform_created: 'true'
///       deletionProtection: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: new
///         project: my-project
/// ```
///
/// ### Oracledatabase Odbnetwork Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "new",
///     project: "my-project",
/// });
/// const my_odbnetwork = new gcp.oracledatabase.OdbNetwork("my-odbnetwork", {
///     odbNetworkId: "my-odbnetwork",
///     location: "us-west3",
///     project: "my-project",
///     network: _default.then(_default => _default.id),
///     gcpOracleZone: "us-west3-a-r1",
///     labels: {
///         terraform_created: "true",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="new",
///     project="my-project")
/// my_odbnetwork = gcp.oracledatabase.OdbNetwork("my-odbnetwork",
///     odb_network_id="my-odbnetwork",
///     location="us-west3",
///     project="my-project",
///     network=default.id,
///     gcp_oracle_zone="us-west3-a-r1",
///     labels={
///         "terraform_created": "true",
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "new",
///         Project = "my-project",
///     });
///
///     var my_odbnetwork = new Gcp.OracleDatabase.OdbNetwork("my-odbnetwork", new()
///     {
///         OdbNetworkId = "my-odbnetwork",
///         Location = "us-west3",
///         Project = "my-project",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///         GcpOracleZone = "us-west3-a-r1",
///         Labels =
///         {
///             { "terraform_created", "true" },
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name:    "new",
/// 			Project: pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewOdbNetwork(ctx, "my-odbnetwork", &oracledatabase.OdbNetworkArgs{
/// 			OdbNetworkId:  pulumi.String("my-odbnetwork"),
/// 			Location:      pulumi.String("us-west3"),
/// 			Project:       pulumi.String("my-project"),
/// 			Network:       pulumi.String(_default.Id),
/// 			GcpOracleZone: pulumi.String("us-west3-a-r1"),
/// 			Labels: pulumi.StringMap{
/// 				"terraform_created": pulumi.String("true"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.oracledatabase.OdbNetwork;
/// import com.pulumi.gcp.oracledatabase.OdbNetworkArgs;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("new")
///             .project("my-project")
///             .build());
///
///         var my_odbnetwork = new OdbNetwork("my-odbnetwork", OdbNetworkArgs.builder()
///             .odbNetworkId("my-odbnetwork")
///             .location("us-west3")
///             .project("my-project")
///             .network(default_.id())
///             .gcpOracleZone("us-west3-a-r1")
///             .labels(Map.of("terraform_created", "true"))
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-odbnetwork:
///     type: gcp:oracledatabase:OdbNetwork
///     properties:
///       odbNetworkId: my-odbnetwork
///       location: us-west3
///       project: my-project
///       network: ${default.id}
///       gcpOracleZone: us-west3-a-r1
///       labels:
///         terraform_created: 'true'
///       deletionProtection: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: new
///         project: my-project
/// ```
///
///
/// ## Import
///
/// OdbNetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/odbNetworks/{{odb_network_id}}`
///
/// * `{{project}}/{{location}}/{{odb_network_id}}`
///
/// * `{{location}}/{{odb_network_id}}`
///
/// When using the `pulumi import` command, OdbNetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbNetwork:OdbNetwork default projects/{{project}}/locations/{{location}}/odbNetworks/{{odb_network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbNetwork:OdbNetwork default {{project}}/{{location}}/{{odb_network_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbNetwork:OdbNetwork default {{location}}/{{odb_network_id}}
/// ```
class OdbNetwork extends pulumi.CustomResource {
  /// The date and time that the OdbNetwork was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The ID of the subscription entitlement associated with the OdbNetwork.
  late final pulumi.Output<String> entitlementId;
  /// The GCP Oracle zone where OdbNetwork is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final pulumi.Output<String> gcpOracleZone;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the OdbNetwork resource in the following format:
  /// projects/{project}/locations/{region}/odbNetworks/{odb_network}
  late final pulumi.Output<String> name;
  /// The name of the VPC network in the following format:
  /// projects/{project}/global/networks/{network}
  late final pulumi.Output<String> network;
  /// The ID of the OdbNetwork to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final pulumi.Output<String> odbNetworkId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// State of the ODB Network.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// TERMINATING
  /// FAILED
  late final pulumi.Output<String> state;

  /// Creates a new [OdbNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OdbNetwork]. {@macro pulumi_oracledatabase_odb_network_odb_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OdbNetwork(
    String name, {
    OdbNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/odbNetwork:OdbNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [OdbNetwork] resource's state with the given [name] and [id].
  static OdbNetwork get(
    String name,
    pulumi.Input<String> id, {
    OdbNetworkState? state,
  }) {
    return OdbNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OdbNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/odbNetwork:OdbNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    entitlementId = registerOutput<String>('entitlementId');
    gcpOracleZone = registerOutput<String>('gcpOracleZone');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
