import 'package:pulumi/pulumi.dart' as pulumi;
import 'sip_trunk_args.dart';
import 'sip_trunk_state.dart';

/// SipTrunk is the resource that represents a SIP trunk to connect to the Google Telephony Platform SIP trunking service.
///
///
/// To get more information about SipTrunk, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.locations.sipTrunks)
///
/// ## Example Usage
///
/// ### Dialogflow Sip Trunk Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicTrunk = new gcp.diagflow.SipTrunk("basic_trunk", {
///     displayName: "basic-trunk",
///     location: "europe-west3",
///     expectedHostnames: ["basic-trunk.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_trunk = gcp.diagflow.SipTrunk("basic_trunk",
///     display_name="basic-trunk",
///     location="europe-west3",
///     expected_hostnames=["basic-trunk.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicTrunk = new Gcp.Diagflow.SipTrunk("basic_trunk", new()
///     {
///         DisplayName = "basic-trunk",
///         Location = "europe-west3",
///         ExpectedHostnames = new[]
///         {
///             "basic-trunk.example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewSipTrunk(ctx, "basic_trunk", &diagflow.SipTrunkArgs{
/// 			DisplayName: pulumi.String("basic-trunk"),
/// 			Location:    pulumi.String("europe-west3"),
/// 			ExpectedHostnames: pulumi.StringArray{
/// 				pulumi.String("basic-trunk.example.com"),
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
/// resource "gcp_diagflow_siptrunk" "basic_trunk" {
///   display_name       = "basic-trunk"
///   location           = "europe-west3"
///   expected_hostnames = ["basic-trunk.example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.SipTrunk;
/// import com.pulumi.gcp.diagflow.SipTrunkArgs;
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
///         var basicTrunk = new SipTrunk("basicTrunk", SipTrunkArgs.builder()
///             .displayName("basic-trunk")
///             .location("europe-west3")
///             .expectedHostnames("basic-trunk.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicTrunk:
///     type: gcp:diagflow:SipTrunk
///     name: basic_trunk
///     properties:
///       displayName: basic-trunk
///       location: europe-west3
///       expectedHostnames:
///         - basic-trunk.example.com
/// ```
///
///
/// ## Import
///
/// SipTrunk can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, SipTrunk can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/sipTrunk:SipTrunk default {{name}}
/// ```
class SipTrunk extends pulumi.CustomResource {
  /// Output only. The connections of the SIP trunk.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> connections;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Human-readable alias for this trunk.
  late final pulumi.Output<String?> displayName;
  /// Required. The expected hostnames in the peer certificate from the partner that is used for TLS authentication.
  late final pulumi.Output<List<String>> expectedHostnames;
  /// The location of the SIP trunk.
  late final pulumi.Output<String> location;
  /// Identifier. The unique identifier of the SIP trunk.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [SipTrunk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SipTrunk]. {@macro pulumi_diagflow_sip_trunk_sip_trunk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SipTrunk(
    String name, {
    SipTrunkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/sipTrunk:SipTrunk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connections = registerOutput<List<Map<String, dynamic>>>('connections');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    expectedHostnames = registerOutput<List<String>>('expectedHostnames');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [SipTrunk] resource's state with the given [name] and [id].
  static SipTrunk get(
    String name,
    pulumi.Input<String> id, {
    SipTrunkState? state,
  }) {
    return SipTrunk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SipTrunk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/sipTrunk:SipTrunk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connections = registerOutput<List<Map<String, dynamic>>>('connections');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    expectedHostnames = registerOutput<List<String>>('expectedHostnames');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
