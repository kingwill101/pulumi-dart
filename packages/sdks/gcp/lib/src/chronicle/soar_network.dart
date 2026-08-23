import 'package:pulumi/pulumi.dart' as pulumi;
import 'soar_network_args.dart';
import 'soar_network_state.dart';

/// Manage networks in the platform using the Classless Inter-Domain Routing (CIDR) format. The system identifies network subnets to help Google Security Operations recognize internal assets and consider network sensitivity during playbook execution.
///
///
/// To get more information about SoarNetwork, see:
///
/// * [API documentation](https://docs.cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.soarNetworks)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Soarnetwork Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = new gcp.chronicle.SoarNetwork("sample", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "Internal",
///     address: "192.168.1.0/24",
///     environmentsJson: JSON.stringify(["*"]),
///     priority: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// sample = gcp.chronicle.SoarNetwork("sample",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="Internal",
///     address="192.168.1.0/24",
///     environments_json=json.dumps(["*"]),
///     priority=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = new Gcp.Chronicle.SoarNetwork("sample", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "Internal",
///         Address = "192.168.1.0/24",
///         EnvironmentsJson = JsonSerializer.Serialize(new[]
///         {
///             "*",
///         }),
///         Priority = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]string{
/// 			"*",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = chronicle.NewSoarNetwork(ctx, "sample", &chronicle.SoarNetworkArgs{
/// 			Location:         pulumi.String("us"),
/// 			Instance:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName:      pulumi.String("Internal"),
/// 			Address:          pulumi.String("192.168.1.0/24"),
/// 			EnvironmentsJson: pulumi.String(json0),
/// 			Priority:         pulumi.Int(1),
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
/// resource "gcp_chronicle_soarnetwork" "sample" {
///   location          = "us"
///   instance          = "00000000-0000-0000-0000-000000000000"
///   display_name      = "Internal"
///   address           = "192.168.1.0/24"
///   environments_json = jsonencode(["*"])
///   priority          = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.SoarNetwork;
/// import com.pulumi.gcp.chronicle.SoarNetworkArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var sample = new SoarNetwork("sample", SoarNetworkArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("Internal")
///             .address("192.168.1.0/24")
///             .environmentsJson(serializeJson(
///                 jsonArray("*")))
///             .priority(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: gcp:chronicle:SoarNetwork
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: Internal
///       address: 192.168.1.0/24
///       environmentsJson:
///         fn::toJSON:
///           - '*'
///       priority: 1
/// ```
///
///
/// ## Import
///
/// SoarNetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/soarNetworks/{{soar_network_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{soar_network_id}}`
/// * `{{location}}/{{instance}}/{{soar_network_id}}`
///
///
/// When using the `pulumi import` command, SoarNetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/soarNetwork:SoarNetwork default projects/{{project}}/locations/{{location}}/instances/{{instance}}/soarNetworks/{{soar_network_id}}
/// $ pulumi import gcp:chronicle/soarNetwork:SoarNetwork default {{project}}/{{location}}/{{instance}}/{{soar_network_id}}
/// $ pulumi import gcp:chronicle/soarNetwork:SoarNetwork default {{location}}/{{instance}}/{{soar_network_id}}
/// ```
class SoarNetwork extends pulumi.CustomResource {
  /// Subnet in CIDR format.
  late final pulumi.Output<String> address;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// SoarNetwork name, limited to 4096 characters.
  late final pulumi.Output<String> displayName;
  /// SoarNetwork associated logical environments.
  late final pulumi.Output<String> environmentsJson;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the SoarNetwork.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/soarNetworks/{soar_network}
  late final pulumi.Output<String> name;
  /// SoarNetwork priority.
  late final pulumi.Output<int?> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Id of the soarNetwork record.
  late final pulumi.Output<String> soarNetworkId;

  /// Creates a new [SoarNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SoarNetwork]. {@macro pulumi_chronicle_soar_network_soar_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SoarNetwork(
    String name, {
    SoarNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/soarNetwork:SoarNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    environmentsJson = registerOutput<String>('environmentsJson');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    soarNetworkId = registerOutput<String>('soarNetworkId');
  }

  /// Gets an existing [SoarNetwork] resource's state with the given [name] and [id].
  static SoarNetwork get(
    String name,
    pulumi.Input<String> id, {
    SoarNetworkState? state,
  }) {
    return SoarNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SoarNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/soarNetwork:SoarNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    environmentsJson = registerOutput<String>('environmentsJson');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    soarNetworkId = registerOutput<String>('soarNetworkId');
  }
}
