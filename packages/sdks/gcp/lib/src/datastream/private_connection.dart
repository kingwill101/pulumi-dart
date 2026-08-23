import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_args.dart';
import 'private_connection_psc_interface_config.dart';
import 'private_connection_state.dart';
import 'private_connection_vpc_peering_config.dart';

/// The PrivateConnection resource is used to establish private connectivity between Datastream and a customer's network.
///
///
/// To get more information about PrivateConnection, see:
///
/// * [API documentation](https://cloud.google.com/datastream/docs/reference/rest/v1/projects.locations.privateConnections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/datastream/docs/create-a-private-connectivity-configuration)
///
/// ## Example Usage
///
/// ### Datastream Private Connection Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "my-network"});
/// const _default = new gcp.datastream.PrivateConnection("default", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     privateConnectionId: "my-connection",
///     labels: {
///         key: "value",
///     },
///     vpcPeeringConfig: {
///         vpc: defaultNetwork.id,
///         subnet: "10.0.0.0/29",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="my-network")
/// default = gcp.datastream.PrivateConnection("default",
///     display_name="Connection profile",
///     location="us-central1",
///     private_connection_id="my-connection",
///     labels={
///         "key": "value",
///     },
///     vpc_peering_config={
///         "vpc": default_network.id,
///         "subnet": "10.0.0.0/29",
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///     });
///
///     var @default = new Gcp.Datastream.PrivateConnection("default", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         PrivateConnectionId = "my-connection",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         VpcPeeringConfig = new Gcp.Datastream.Inputs.PrivateConnectionVpcPeeringConfigArgs
///         {
///             Vpc = defaultNetwork.Id,
///             Subnet = "10.0.0.0/29",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewPrivateConnection(ctx, "default", &datastream.PrivateConnectionArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			PrivateConnectionId: pulumi.String("my-connection"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			VpcPeeringConfig: &datastream.PrivateConnectionVpcPeeringConfigArgs{
/// 				Vpc:    defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 				Subnet: pulumi.String("10.0.0.0/29"),
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
/// resource "gcp_datastream_privateconnection" "default" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   private_connection_id = "my-connection"
///   labels = {
///     "key" = "value"
///   }
///   vpc_peering_config = {
///     vpc    = gcp_compute_network.default.id
///     subnet = "10.0.0.0/29"
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name = "my-network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.datastream.PrivateConnection;
/// import com.pulumi.gcp.datastream.PrivateConnectionArgs;
/// import com.pulumi.gcp.datastream.inputs.PrivateConnectionVpcPeeringConfigArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .privateConnectionId("my-connection")
///             .labels(Map.of("key", "value"))
///             .vpcPeeringConfig(PrivateConnectionVpcPeeringConfigArgs.builder()
///                 .vpc(defaultNetwork.id())
///                 .subnet("10.0.0.0/29")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:datastream:PrivateConnection
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       privateConnectionId: my-connection
///       labels:
///         key: value
///       vpcPeeringConfig:
///         vpc: ${defaultNetwork.id}
///         subnet: 10.0.0.0/29
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
/// ```
///
/// ### Datastream Private Connection Force Delete
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "my-network"});
/// const _default = new gcp.datastream.PrivateConnection("default", {
///     displayName: "Connection profile",
///     location: "us-central1",
///     privateConnectionId: "my-connection",
///     deletionPolicy: "FORCE",
///     labels: {
///         key: "value",
///     },
///     vpcPeeringConfig: {
///         vpc: defaultNetwork.id,
///         subnet: "10.0.0.0/29",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="my-network")
/// default = gcp.datastream.PrivateConnection("default",
///     display_name="Connection profile",
///     location="us-central1",
///     private_connection_id="my-connection",
///     deletion_policy="FORCE",
///     labels={
///         "key": "value",
///     },
///     vpc_peering_config={
///         "vpc": default_network.id,
///         "subnet": "10.0.0.0/29",
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///     });
///
///     var @default = new Gcp.Datastream.PrivateConnection("default", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-central1",
///         PrivateConnectionId = "my-connection",
///         DeletionPolicy = "FORCE",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         VpcPeeringConfig = new Gcp.Datastream.Inputs.PrivateConnectionVpcPeeringConfigArgs
///         {
///             Vpc = defaultNetwork.Id,
///             Subnet = "10.0.0.0/29",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewPrivateConnection(ctx, "default", &datastream.PrivateConnectionArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-central1"),
/// 			PrivateConnectionId: pulumi.String("my-connection"),
/// 			DeletionPolicy:      pulumi.String("FORCE"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			VpcPeeringConfig: &datastream.PrivateConnectionVpcPeeringConfigArgs{
/// 				Vpc:    defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 				Subnet: pulumi.String("10.0.0.0/29"),
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
/// resource "gcp_datastream_privateconnection" "default" {
///   display_name          = "Connection profile"
///   location              = "us-central1"
///   private_connection_id = "my-connection"
///   deletion_policy       = "FORCE"
///   labels = {
///     "key" = "value"
///   }
///   vpc_peering_config = {
///     vpc    = gcp_compute_network.default.id
///     subnet = "10.0.0.0/29"
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name = "my-network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.datastream.PrivateConnection;
/// import com.pulumi.gcp.datastream.PrivateConnectionArgs;
/// import com.pulumi.gcp.datastream.inputs.PrivateConnectionVpcPeeringConfigArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
///             .displayName("Connection profile")
///             .location("us-central1")
///             .privateConnectionId("my-connection")
///             .deletionPolicy("FORCE")
///             .labels(Map.of("key", "value"))
///             .vpcPeeringConfig(PrivateConnectionVpcPeeringConfigArgs.builder()
///                 .vpc(defaultNetwork.id())
///                 .subnet("10.0.0.0/29")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:datastream:PrivateConnection
///     properties:
///       displayName: Connection profile
///       location: us-central1
///       privateConnectionId: my-connection
///       deletionPolicy: FORCE
///       labels:
///         key: value
///       vpcPeeringConfig:
///         vpc: ${defaultNetwork.id}
///         subnet: 10.0.0.0/29
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
/// ```
///
/// ### Datastream Private Connection Psc Interface
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-subnetwork",
///     region: "us-west1",
///     network: defaultNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const defaultNetworkAttachment = new gcp.compute.NetworkAttachment("default", {
///     name: "my-network-attachment",
///     region: "us-west1",
///     description: "basic network attachment description",
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     subnetworks: [defaultSubnetwork.selfLink],
/// });
/// const _default = new gcp.datastream.PrivateConnection("default", {
///     displayName: "Connection profile",
///     location: "us-west1",
///     privateConnectionId: "my-connection",
///     labels: {
///         key: "value",
///     },
///     pscInterfaceConfig: {
///         networkAttachment: defaultNetworkAttachment.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-subnetwork",
///     region="us-west1",
///     network=default_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// default_network_attachment = gcp.compute.NetworkAttachment("default",
///     name="my-network-attachment",
///     region="us-west1",
///     description="basic network attachment description",
///     connection_preference="ACCEPT_AUTOMATIC",
///     subnetworks=[default_subnetwork.self_link])
/// default = gcp.datastream.PrivateConnection("default",
///     display_name="Connection profile",
///     location="us-west1",
///     private_connection_id="my-connection",
///     labels={
///         "key": "value",
///     },
///     psc_interface_config={
///         "network_attachment": default_network_attachment.id,
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
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-subnetwork",
///         Region = "us-west1",
///         Network = defaultNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var defaultNetworkAttachment = new Gcp.Compute.NetworkAttachment("default", new()
///     {
///         Name = "my-network-attachment",
///         Region = "us-west1",
///         Description = "basic network attachment description",
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         Subnetworks = new[]
///         {
///             defaultSubnetwork.SelfLink,
///         },
///     });
///
///     var @default = new Gcp.Datastream.PrivateConnection("default", new()
///     {
///         DisplayName = "Connection profile",
///         Location = "us-west1",
///         PrivateConnectionId = "my-connection",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         PscInterfaceConfig = new Gcp.Datastream.Inputs.PrivateConnectionPscInterfaceConfigArgs
///         {
///             NetworkAttachment = defaultNetworkAttachment.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Region:      pulumi.String("us-west1"),
/// 			Network:     defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetworkAttachment, err := compute.NewNetworkAttachment(ctx, "default", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("my-network-attachment"),
/// 			Region:               pulumi.String("us-west1"),
/// 			Description:          pulumi.String("basic network attachment description"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			Subnetworks: pulumi.StringArray{
/// 				defaultSubnetwork.SelfLink,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datastream.NewPrivateConnection(ctx, "default", &datastream.PrivateConnectionArgs{
/// 			DisplayName:         pulumi.String("Connection profile"),
/// 			Location:            pulumi.String("us-west1"),
/// 			PrivateConnectionId: pulumi.String("my-connection"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			PscInterfaceConfig: &datastream.PrivateConnectionPscInterfaceConfigArgs{
/// 				NetworkAttachment: defaultNetworkAttachment.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_datastream_privateconnection" "default" {
///   display_name          = "Connection profile"
///   location              = "us-west1"
///   private_connection_id = "my-connection"
///   labels = {
///     "key" = "value"
///   }
///   psc_interface_config = {
///     network_attachment = gcp_compute_networkattachment.default.id
///   }
/// }
/// resource "gcp_compute_networkattachment" "default" {
///   name                  = "my-network-attachment"
///   region                = "us-west1"
///   description           = "basic network attachment description"
///   connection_preference = "ACCEPT_AUTOMATIC"
///   subnetworks           = [gcp_compute_subnetwork.default.self_link]
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "my-subnetwork"
///   region        = "us-west1"
///   network       = gcp_compute_network.default.id
///   ip_cidr_range = "10.0.0.0/16"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumi.gcp.datastream.PrivateConnection;
/// import com.pulumi.gcp.datastream.PrivateConnectionArgs;
/// import com.pulumi.gcp.datastream.inputs.PrivateConnectionPscInterfaceConfigArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .region("us-west1")
///             .network(defaultNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var defaultNetworkAttachment = new NetworkAttachment("defaultNetworkAttachment", NetworkAttachmentArgs.builder()
///             .name("my-network-attachment")
///             .region("us-west1")
///             .description("basic network attachment description")
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .subnetworks(defaultSubnetwork.selfLink())
///             .build());
///
///         var default_ = new PrivateConnection("default", PrivateConnectionArgs.builder()
///             .displayName("Connection profile")
///             .location("us-west1")
///             .privateConnectionId("my-connection")
///             .labels(Map.of("key", "value"))
///             .pscInterfaceConfig(PrivateConnectionPscInterfaceConfigArgs.builder()
///                 .networkAttachment(defaultNetworkAttachment.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:datastream:PrivateConnection
///     properties:
///       displayName: Connection profile
///       location: us-west1
///       privateConnectionId: my-connection
///       labels:
///         key: value
///       pscInterfaceConfig:
///         networkAttachment: ${defaultNetworkAttachment.id}
///   defaultNetworkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: default
///     properties:
///       name: my-network-attachment
///       region: us-west1
///       description: basic network attachment description
///       connectionPreference: ACCEPT_AUTOMATIC
///       subnetworks:
///         - ${defaultSubnetwork.selfLink}
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
///       region: us-west1
///       network: ${defaultNetwork.id}
///       ipCidrRange: 10.0.0.0/16
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
/// $ pulumi import gcp:datastream/privateConnection:PrivateConnection default projects/{{project}}/locations/{{location}}/privateConnections/{{private_connection_id}}
/// $ pulumi import gcp:datastream/privateConnection:PrivateConnection default {{project}}/{{location}}/{{private_connection_id}}
/// $ pulumi import gcp:datastream/privateConnection:PrivateConnection default {{location}}/{{private_connection_id}}
/// ```
class PrivateConnection extends pulumi.CustomResource {
  /// If set to true, will skip validations.
  late final pulumi.Output<bool?> createWithoutValidation;
  /// The deletion policy for the private connection. Setting `FORCE` will also delete any child
  /// routes that belong to this private connection. Setting `DEFAULT` will fail the delete if
  /// child routes exist. Defaults to `FORCE` for backwards compatibility.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
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
  /// between Datastream and the consumer's PSC.
  /// Structure is documented below.
  late final pulumi.Output<PrivateConnectionPscInterfaceConfig?> pscInterfaceConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// State of the PrivateConnection.
  late final pulumi.Output<String> state;
  /// The VPC Peering configuration is used to create VPC peering
  /// between Datastream and the consumer's VPC.
  /// Structure is documented below.
  late final pulumi.Output<PrivateConnectionVpcPeeringConfig?> vpcPeeringConfig;

  /// Creates a new [PrivateConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateConnection]. {@macro pulumi_datastream_private_connection_private_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateConnection(
    String name, {
    PrivateConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/privateConnection:PrivateConnection',
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
          'gcp:datastream/privateConnection:PrivateConnection',
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
