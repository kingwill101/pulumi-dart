import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_args.dart';
import 'private_connection_psc_interface_config.dart';
import 'private_connection_state.dart';
import 'private_connection_vpc_peering_config.dart';

/// The PrivateConnection resource is used to establish private connectivity between Database Migration Service and a customer's network.
///
///
/// To get more information about PrivateConnection, see:
///
/// * [API documentation](https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.privateConnections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/database-migration/docs/oracle-to-postgresql/create-private-connectivity-configuration)
///
/// ## Example Usage
///
/// ### Database Migration Service Private Connection
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.databasemigrationservice.PrivateConnection("default", {
///     displayName: "dbms_pc",
///     location: "us-west1",
///     privateConnectionId: "my-connection",
///     labels: {
///         key: "value",
///     },
///     vpcPeeringConfig: {
///         vpcName: googleComputeNetwork["default"].id,
///         subnet: "10.0.0.0/29",
///     },
///     createWithoutValidation: false,
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.databasemigrationservice.PrivateConnection("default",
///     display_name="dbms_pc",
///     location="us-west1",
///     private_connection_id="my-connection",
///     labels={
///         "key": "value",
///     },
///     vpc_peering_config={
///         "vpc_name": google_compute_network["default"]["id"],
///         "subnet": "10.0.0.0/29",
///     },
///     create_without_validation=False)
/// default_network = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.DatabaseMigrationService.PrivateConnection("default", new()
///     {
///         DisplayName = "dbms_pc",
///         Location = "us-west1",
///         PrivateConnectionId = "my-connection",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         VpcPeeringConfig = new Gcp.DatabaseMigrationService.Inputs.PrivateConnectionVpcPeeringConfigArgs
///         {
///             VpcName = googleComputeNetwork.Default.Id,
///             Subnet = "10.0.0.0/29",
///         },
///         CreateWithoutValidation = false,
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databasemigrationservice.NewPrivateConnection(ctx, "default", &databasemigrationservice.PrivateConnectionArgs{
/// 			DisplayName:         pulumi.String("dbms_pc"),
/// 			Location:            pulumi.String("us-west1"),
/// 			PrivateConnectionId: pulumi.String("my-connection"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			VpcPeeringConfig: &databasemigrationservice.PrivateConnectionVpcPeeringConfigArgs{
/// 				VpcName: pulumi.Any(googleComputeNetwork.Default.Id),
/// 				Subnet:  pulumi.String("10.0.0.0/29"),
/// 			},
/// 			CreateWithoutValidation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
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
/// resource "gcp_databasemigrationservice_privateconnection" "default" {
///   display_name          = "dbms_pc"
///   location              = "us-west1"
///   private_connection_id = "my-connection"
///   labels = {
///     "key" = "value"
///   }
///   vpc_peering_config = {
///     vpc_name = googleComputeNetwork.default.id
///     subnet   = "10.0.0.0/29"
///   }
///   create_without_validation = false
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.databasemigrationservice.PrivateConnection;
/// import com.pulumi.gcp.databasemigrationservice.PrivateConnectionArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.PrivateConnectionVpcPeeringConfigArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
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
///         var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
///             .displayName("dbms_pc")
///             .location("us-west1")
///             .privateConnectionId("my-connection")
///             .labels(Map.of("key", "value"))
///             .vpcPeeringConfig(PrivateConnectionVpcPeeringConfigArgs.builder()
///                 .vpcName(googleComputeNetwork.get("default").get("id"))
///                 .subnet("10.0.0.0/29")
///                 .build())
///             .createWithoutValidation(false)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:databasemigrationservice:PrivateConnection
///     properties:
///       displayName: dbms_pc
///       location: us-west1
///       privateConnectionId: my-connection
///       labels:
///         key: value
///       vpcPeeringConfig:
///         vpcName: ${googleComputeNetwork.default.id}
///         subnet: 10.0.0.0/29
///       createWithoutValidation: false
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Database Migration Service Private Connection Psc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.databasemigrationservice.PrivateConnection("default", {
///     displayName: "dbms_pc",
///     location: "us-west1",
///     privateConnectionId: "my-connection",
///     labels: {
///         key: "value",
///     },
///     pscInterfaceConfig: {
///         networkAttachment: googleComputeNetworkAttachment["default"].id,
///     },
///     createWithoutValidation: false,
/// });
/// const defaultNetworkAttachment = new gcp.compute.NetworkAttachment("default", {
///     name: "my-attachment",
///     region: "us-west1",
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     subnetworks: [googleComputeSubnetwork["default"].id],
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-subnetwork",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-west1",
///     network: defaultNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.databasemigrationservice.PrivateConnection("default",
///     display_name="dbms_pc",
///     location="us-west1",
///     private_connection_id="my-connection",
///     labels={
///         "key": "value",
///     },
///     psc_interface_config={
///         "network_attachment": google_compute_network_attachment["default"]["id"],
///     },
///     create_without_validation=False)
/// default_network_attachment = gcp.compute.NetworkAttachment("default",
///     name="my-attachment",
///     region="us-west1",
///     connection_preference="ACCEPT_AUTOMATIC",
///     subnetworks=[google_compute_subnetwork["default"]["id"]])
/// default_network = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-subnetwork",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-west1",
///     network=default_network.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.DatabaseMigrationService.PrivateConnection("default", new()
///     {
///         DisplayName = "dbms_pc",
///         Location = "us-west1",
///         PrivateConnectionId = "my-connection",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         PscInterfaceConfig = new Gcp.DatabaseMigrationService.Inputs.PrivateConnectionPscInterfaceConfigArgs
///         {
///             NetworkAttachment = googleComputeNetworkAttachment.Default.Id,
///         },
///         CreateWithoutValidation = false,
///     });
///
///     var defaultNetworkAttachment = new Gcp.Compute.NetworkAttachment("default", new()
///     {
///         Name = "my-attachment",
///         Region = "us-west1",
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         Subnetworks = new[]
///         {
///             googleComputeSubnetwork.Default.Id,
///         },
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-subnetwork",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-west1",
///         Network = defaultNetwork.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databasemigrationservice.NewPrivateConnection(ctx, "default", &databasemigrationservice.PrivateConnectionArgs{
/// 			DisplayName:         pulumi.String("dbms_pc"),
/// 			Location:            pulumi.String("us-west1"),
/// 			PrivateConnectionId: pulumi.String("my-connection"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			PscInterfaceConfig: &databasemigrationservice.PrivateConnectionPscInterfaceConfigArgs{
/// 				NetworkAttachment: pulumi.Any(googleComputeNetworkAttachment.Default.Id),
/// 			},
/// 			CreateWithoutValidation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkAttachment(ctx, "default", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("my-attachment"),
/// 			Region:               pulumi.String("us-west1"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			Subnetworks: pulumi.StringArray{
/// 				googleComputeSubnetwork.Default.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-west1"),
/// 			Network:     defaultNetwork.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_databasemigrationservice_privateconnection" "default" {
///   display_name          = "dbms_pc"
///   location              = "us-west1"
///   private_connection_id = "my-connection"
///   labels = {
///     "key" = "value"
///   }
///   psc_interface_config = {
///     network_attachment = googleComputeNetworkAttachment.default.id
///   }
///   create_without_validation = false
/// }
/// resource "gcp_compute_networkattachment" "default" {
///   name                  = "my-attachment"
///   region                = "us-west1"
///   connection_preference = "ACCEPT_AUTOMATIC"
///   subnetworks           = [googleComputeSubnetwork.default.id]
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "my-subnetwork"
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "us-west1"
///   network       = gcp_compute_network.default.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.databasemigrationservice.PrivateConnection;
/// import com.pulumi.gcp.databasemigrationservice.PrivateConnectionArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.PrivateConnectionPscInterfaceConfigArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
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
///         var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
///             .displayName("dbms_pc")
///             .location("us-west1")
///             .privateConnectionId("my-connection")
///             .labels(Map.of("key", "value"))
///             .pscInterfaceConfig(PrivateConnectionPscInterfaceConfigArgs.builder()
///                 .networkAttachment(googleComputeNetworkAttachment.get("default").get("id"))
///                 .build())
///             .createWithoutValidation(false)
///             .build());
///
///         var defaultNetworkAttachment = new NetworkAttachment("defaultNetworkAttachment", NetworkAttachmentArgs.builder()
///             .name("my-attachment")
///             .region("us-west1")
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .subnetworks(googleComputeSubnetwork.get("default").get("id"))
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-west1")
///             .network(defaultNetwork.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:databasemigrationservice:PrivateConnection
///     properties:
///       displayName: dbms_pc
///       location: us-west1
///       privateConnectionId: my-connection
///       labels:
///         key: value
///       pscInterfaceConfig:
///         networkAttachment: ${googleComputeNetworkAttachment.default.id}
///       createWithoutValidation: false
///   defaultNetworkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: default
///     properties:
///       name: my-attachment
///       region: us-west1
///       connectionPreference: ACCEPT_AUTOMATIC
///       subnetworks:
///         - ${googleComputeSubnetwork.default.id}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: my-subnetwork
///       ipCidrRange: 10.0.0.0/16
///       region: us-west1
///       network: ${defaultNetwork.id}
/// ```
///
///
/// ## Import
///
/// PrivateConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}`
/// * `{{project}}/{{location}}/{{private_connection_id}}`
/// * `{{location}}/{{private_connection_id}}`
///
///
/// When using the `pulumi import` command, PrivateConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/privateConnection:PrivateConnection default projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}
/// $ pulumi import gcp:databasemigrationservice/privateConnection:PrivateConnection default {{project}}/{{location}}/{{private_connection_id}}
/// $ pulumi import gcp:databasemigrationservice/privateConnection:PrivateConnection default {{location}}/{{private_connection_id}}
/// ```
class PrivateConnection extends pulumi.CustomResource {
  /// If set to true, will skip validations.
  late final pulumi.Output<bool?> createWithoutValidation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Display name.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The PrivateConnection error in case of failure.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the location this private connection is located in.
  late final pulumi.Output<String> location;
  /// The resource's name.
  late final pulumi.Output<String> name;
  /// The private connectivity identifier.
  late final pulumi.Output<String> privateConnectionId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The PSC Interface configuration is used to create PSC Interface
  /// between DMS's internal VPC and the consumer's PSC.
  /// Structure is documented below.
  late final pulumi.Output<PrivateConnectionPscInterfaceConfig?> pscInterfaceConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// State of the PrivateConnection.
  late final pulumi.Output<String> state;
  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  late final pulumi.Output<PrivateConnectionVpcPeeringConfig?> vpcPeeringConfig;

  /// Creates a new [PrivateConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateConnection]. {@macro pulumi_databasemigrationservice_private_connection_private_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateConnection(
    String name, {
    PrivateConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/privateConnection:PrivateConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createWithoutValidation = registerOutput<bool?>('createWithoutValidation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateConnectionId = registerOutput<String>('privateConnectionId');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<PrivateConnectionPscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateConnectionPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    vpcPeeringConfig = registerOutput<PrivateConnectionVpcPeeringConfig?>('vpcPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateConnectionVpcPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [PrivateConnection] resource's state with the given [name] and [id].
  static PrivateConnection get(
    String name,
    pulumi.Input<String> id, {
    PrivateConnectionState? state,
  }) {
    return PrivateConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/privateConnection:PrivateConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createWithoutValidation = registerOutput<bool?>('createWithoutValidation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateConnectionId = registerOutput<String>('privateConnectionId');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<PrivateConnectionPscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateConnectionPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    vpcPeeringConfig = registerOutput<PrivateConnectionVpcPeeringConfig?>('vpcPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateConnectionVpcPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
