import 'package:pulumi/pulumi.dart' as pulumi;
import 'odb_subnet_args.dart';
import 'odb_subnet_state.dart';

/// An OdbSubnet resource which represents a subnet under an OdbNetwork.
///
///
/// To get more information about OdbSubnet, see:
/// * How-to Guides
/// * [OracleDatabase@Google Cloud](https://cloud.google.com/oracle/database/docs/overview')
///
/// ## Example Usage
///
/// ### Oracledatabase Odbsubnet
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_odbsubnet = new gcp.oracledatabase.OdbSubnet("my-odbsubnet", {
///     odbSubnetId: "my-odbsubnet",
///     location: "europe-west2",
///     project: "my-project",
///     odbnetwork: "my-odbnetwork",
///     cidrRange: "10.1.1.0/24",
///     purpose: "CLIENT_SUBNET",
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
/// my_odbsubnet = gcp.oracledatabase.OdbSubnet("my-odbsubnet",
///     odb_subnet_id="my-odbsubnet",
///     location="europe-west2",
///     project="my-project",
///     odbnetwork="my-odbnetwork",
///     cidr_range="10.1.1.0/24",
///     purpose="CLIENT_SUBNET",
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
///     var my_odbsubnet = new Gcp.OracleDatabase.OdbSubnet("my-odbsubnet", new()
///     {
///         OdbSubnetId = "my-odbsubnet",
///         Location = "europe-west2",
///         Project = "my-project",
///         Odbnetwork = "my-odbnetwork",
///         CidrRange = "10.1.1.0/24",
///         Purpose = "CLIENT_SUBNET",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewOdbSubnet(ctx, "my-odbsubnet", &oracledatabase.OdbSubnetArgs{
/// 			OdbSubnetId: pulumi.String("my-odbsubnet"),
/// 			Location:    pulumi.String("europe-west2"),
/// 			Project:     pulumi.String("my-project"),
/// 			Odbnetwork:  pulumi.String("my-odbnetwork"),
/// 			CidrRange:   pulumi.String("10.1.1.0/24"),
/// 			Purpose:     pulumi.String("CLIENT_SUBNET"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_oracledatabase_odbsubnet" "my-odbsubnet" {
///   odb_subnet_id = "my-odbsubnet"
///   location      = "europe-west2"
///   project       = "my-project"
///   odbnetwork    = "my-odbnetwork"
///   cidr_range    = "10.1.1.0/24"
///   purpose       = "CLIENT_SUBNET"
///   labels = {
///     "terraform_created" = "true"
///   }
///   deletion_protection = "true"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OdbSubnet;
/// import com.pulumi.gcp.oracledatabase.OdbSubnetArgs;
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
///         var my_odbsubnet = new OdbSubnet("my-odbsubnet", OdbSubnetArgs.builder()
///             .odbSubnetId("my-odbsubnet")
///             .location("europe-west2")
///             .project("my-project")
///             .odbnetwork("my-odbnetwork")
///             .cidrRange("10.1.1.0/24")
///             .purpose("CLIENT_SUBNET")
///             .labels(Map.of("terraform_created", "true"))
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-odbsubnet:
///     type: gcp:oracledatabase:OdbSubnet
///     properties:
///       odbSubnetId: my-odbsubnet
///       location: europe-west2
///       project: my-project
///       odbnetwork: my-odbnetwork
///       cidrRange: 10.1.1.0/24
///       purpose: CLIENT_SUBNET
///       labels:
///         terraform_created: 'true'
///       deletionProtection: 'true'
/// ```
///
///
/// ## Import
///
/// OdbSubnet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/odbNetworks/{{odbnetwork}}/odbSubnets/{{odb_subnet_id}}`
/// * `{{project}}/{{location}}/{{odbnetwork}}/{{odb_subnet_id}}`
/// * `{{location}}/{{odbnetwork}}/{{odb_subnet_id}}`
///
///
/// When using the `pulumi import` command, OdbSubnet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/odbSubnet:OdbSubnet default projects/{{project}}/locations/{{location}}/odbNetworks/{{odbnetwork}}/odbSubnets/{{odb_subnet_id}}
/// $ pulumi import gcp:oracledatabase/odbSubnet:OdbSubnet default {{project}}/{{location}}/{{odbnetwork}}/{{odb_subnet_id}}
/// $ pulumi import gcp:oracledatabase/odbSubnet:OdbSubnet default {{location}}/{{odbnetwork}}/{{odb_subnet_id}}
/// ```
class OdbSubnet extends pulumi.CustomResource {
  /// The CIDR range of the subnet.
  late final pulumi.Output<String> cidrRange;
  /// The date and time that the OdbNetwork was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the OdbSubnet resource in the following format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final pulumi.Output<String> name;
  /// The ID of the OdbSubnet to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final pulumi.Output<String> odbSubnetId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> odbnetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Purpose of the subnet.
  /// Possible values:
  /// CLIENT_SUBNET
  /// BACKUP_SUBNET
  late final pulumi.Output<String> purpose;
  /// State of the ODB Subnet.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// TERMINATING
  /// FAILED
  late final pulumi.Output<String> state;

  /// Creates a new [OdbSubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OdbSubnet]. {@macro pulumi_oracledatabase_odb_subnet_odb_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OdbSubnet(
    String name, {
    OdbSubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/odbSubnet:OdbSubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    cidrRange = registerOutput<String>('cidrRange');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    odbSubnetId = registerOutput<String>('odbSubnetId');
    odbnetwork = registerOutput<String>('odbnetwork');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purpose = registerOutput<String>('purpose');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [OdbSubnet] resource's state with the given [name] and [id].
  static OdbSubnet get(
    String name,
    pulumi.Input<String> id, {
    OdbSubnetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OdbSubnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OdbSubnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/odbSubnet:OdbSubnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidrRange = registerOutput<String>('cidrRange');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    odbSubnetId = registerOutput<String>('odbSubnetId');
    odbnetwork = registerOutput<String>('odbnetwork');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purpose = registerOutput<String>('purpose');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [OdbSubnet] resource.
  OdbSubnet.reference(String urn)
    : super(
        'gcp:oracledatabase/odbSubnet:OdbSubnet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    cidrRange = registerOutput<String>('cidrRange');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    odbSubnetId = registerOutput<String>('odbSubnetId');
    odbnetwork = registerOutput<String>('odbnetwork');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purpose = registerOutput<String>('purpose');
    state = registerOutput<String>('state');
  }
}
