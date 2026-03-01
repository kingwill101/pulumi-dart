import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_attachment_args.dart';
import 'network_attachment_connection_endpoint.dart';
import 'network_attachment_state.dart';

/// A network attachment is a resource that lets a producer Virtual Private Cloud (VPC) network initiate connections to a consumer VPC network through a Private Service Connect interface.
///
///
/// To get more information about NetworkAttachment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/about-network-attachments)
///
/// ## Example Usage
///
/// ### Network Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "basic-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "basic-subnetwork",
///     region: "us-central1",
///     network: defaultNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const rejectedProducerProject = new gcp.organizations.Project("rejected_producer_project", {
///     projectId: "prj-rejected",
///     name: "prj-rejected",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const acceptedProducerProject = new gcp.organizations.Project("accepted_producer_project", {
///     projectId: "prj-accepted",
///     name: "prj-accepted",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const _default = new gcp.compute.NetworkAttachment("default", {
///     name: "basic-network-attachment",
///     region: "us-central1",
///     description: "basic network attachment description",
///     connectionPreference: "ACCEPT_MANUAL",
///     subnetworks: [defaultSubnetwork.selfLink],
///     producerAcceptLists: [acceptedProducerProject.projectId],
///     producerRejectLists: [rejectedProducerProject.projectId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default",
///     name="basic-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="basic-subnetwork",
///     region="us-central1",
///     network=default_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// rejected_producer_project = gcp.organizations.Project("rejected_producer_project",
///     project_id="prj-rejected",
///     name="prj-rejected",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// accepted_producer_project = gcp.organizations.Project("accepted_producer_project",
///     project_id="prj-accepted",
///     name="prj-accepted",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// default = gcp.compute.NetworkAttachment("default",
///     name="basic-network-attachment",
///     region="us-central1",
///     description="basic network attachment description",
///     connection_preference="ACCEPT_MANUAL",
///     subnetworks=[default_subnetwork.self_link],
///     producer_accept_lists=[accepted_producer_project.project_id],
///     producer_reject_lists=[rejected_producer_project.project_id])
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
///         Name = "basic-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "basic-subnetwork",
///         Region = "us-central1",
///         Network = defaultNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var rejectedProducerProject = new Gcp.Organizations.Project("rejected_producer_project", new()
///     {
///         ProjectId = "prj-rejected",
///         Name = "prj-rejected",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var acceptedProducerProject = new Gcp.Organizations.Project("accepted_producer_project", new()
///     {
///         ProjectId = "prj-accepted",
///         Name = "prj-accepted",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var @default = new Gcp.Compute.NetworkAttachment("default", new()
///     {
///         Name = "basic-network-attachment",
///         Region = "us-central1",
///         Description = "basic network attachment description",
///         ConnectionPreference = "ACCEPT_MANUAL",
///         Subnetworks = new[]
///         {
///             defaultSubnetwork.SelfLink,
///         },
///         ProducerAcceptLists = new[]
///         {
///             acceptedProducerProject.ProjectId,
///         },
///         ProducerRejectLists = new[]
///         {
///             rejectedProducerProject.ProjectId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("basic-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("basic-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rejectedProducerProject, err := organizations.NewProject(ctx, "rejected_producer_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("prj-rejected"),
/// 			Name:           pulumi.String("prj-rejected"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		acceptedProducerProject, err := organizations.NewProject(ctx, "accepted_producer_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("prj-accepted"),
/// 			Name:           pulumi.String("prj-accepted"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkAttachment(ctx, "default", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("basic-network-attachment"),
/// 			Region:               pulumi.String("us-central1"),
/// 			Description:          pulumi.String("basic network attachment description"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			Subnetworks: pulumi.StringArray{
/// 				defaultSubnetwork.SelfLink,
/// 			},
/// 			ProducerAcceptLists: pulumi.StringArray{
/// 				acceptedProducerProject.ProjectId,
/// 			},
/// 			ProducerRejectLists: pulumi.StringArray{
/// 				rejectedProducerProject.ProjectId,
/// 			},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("basic-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("basic-subnetwork")
///             .region("us-central1")
///             .network(defaultNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var rejectedProducerProject = new Project("rejectedProducerProject", ProjectArgs.builder()
///             .projectId("prj-rejected")
///             .name("prj-rejected")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var acceptedProducerProject = new Project("acceptedProducerProject", ProjectArgs.builder()
///             .projectId("prj-accepted")
///             .name("prj-accepted")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var default_ = new NetworkAttachment("default", NetworkAttachmentArgs.builder()
///             .name("basic-network-attachment")
///             .region("us-central1")
///             .description("basic network attachment description")
///             .connectionPreference("ACCEPT_MANUAL")
///             .subnetworks(defaultSubnetwork.selfLink())
///             .producerAcceptLists(acceptedProducerProject.projectId())
///             .producerRejectLists(rejectedProducerProject.projectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:NetworkAttachment
///     properties:
///       name: basic-network-attachment
///       region: us-central1
///       description: basic network attachment description
///       connectionPreference: ACCEPT_MANUAL
///       subnetworks:
///         - ${defaultSubnetwork.selfLink}
///       producerAcceptLists:
///         - ${acceptedProducerProject.projectId}
///       producerRejectLists:
///         - ${rejectedProducerProject.projectId}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: basic-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: basic-subnetwork
///       region: us-central1
///       network: ${defaultNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   rejectedProducerProject:
///     type: gcp:organizations:Project
///     name: rejected_producer_project
///     properties:
///       projectId: prj-rejected
///       name: prj-rejected
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   acceptedProducerProject:
///     type: gcp:organizations:Project
///     name: accepted_producer_project
///     properties:
///       projectId: prj-accepted
///       name: prj-accepted
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
/// ```
///
/// ### Network Attachment Instance Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "basic-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "basic-subnetwork",
///     region: "us-central1",
///     network: _default.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const defaultNetworkAttachment = new gcp.compute.NetworkAttachment("default", {
///     name: "basic-network-attachment",
///     region: "us-central1",
///     description: "my basic network attachment",
///     subnetworks: [defaultSubnetwork.id],
///     connectionPreference: "ACCEPT_AUTOMATIC",
/// });
/// const defaultInstance = new gcp.compute.Instance("default", {
///     name: "basic-instance",
///     zone: "us-central1-a",
///     machineType: "e2-micro",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     networkInterfaces: [
///         {
///             network: "default",
///         },
///         {
///             networkAttachment: defaultNetworkAttachment.selfLink,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="basic-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="basic-subnetwork",
///     region="us-central1",
///     network=default.id,
///     ip_cidr_range="10.0.0.0/16")
/// default_network_attachment = gcp.compute.NetworkAttachment("default",
///     name="basic-network-attachment",
///     region="us-central1",
///     description="my basic network attachment",
///     subnetworks=[default_subnetwork.id],
///     connection_preference="ACCEPT_AUTOMATIC")
/// default_instance = gcp.compute.Instance("default",
///     name="basic-instance",
///     zone="us-central1-a",
///     machine_type="e2-micro",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     network_interfaces=[
///         {
///             "network": "default",
///         },
///         {
///             "network_attachment": default_network_attachment.self_link,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "basic-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "basic-subnetwork",
///         Region = "us-central1",
///         Network = @default.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var defaultNetworkAttachment = new Gcp.Compute.NetworkAttachment("default", new()
///     {
///         Name = "basic-network-attachment",
///         Region = "us-central1",
///         Description = "my basic network attachment",
///         Subnetworks = new[]
///         {
///             defaultSubnetwork.Id,
///         },
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///     });
///
///     var defaultInstance = new Gcp.Compute.Instance("default", new()
///     {
///         Name = "basic-instance",
///         Zone = "us-central1-a",
///         MachineType = "e2-micro",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 NetworkAttachment = defaultNetworkAttachment.SelfLink,
///             },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("basic-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("basic-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetworkAttachment, err := compute.NewNetworkAttachment(ctx, "default", &compute.NetworkAttachmentArgs{
/// 			Name:        pulumi.String("basic-network-attachment"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Description: pulumi.String("my basic network attachment"),
/// 			Subnetworks: pulumi.StringArray{
/// 				defaultSubnetwork.ID(),
/// 			},
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// 			Name:        pulumi.String("basic-instance"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			MachineType: pulumi.String("e2-micro"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					NetworkAttachment: defaultNetworkAttachment.SelfLink,
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("basic-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("basic-subnetwork")
///             .region("us-central1")
///             .network(default_.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var defaultNetworkAttachment = new NetworkAttachment("defaultNetworkAttachment", NetworkAttachmentArgs.builder()
///             .name("basic-network-attachment")
///             .region("us-central1")
///             .description("my basic network attachment")
///             .subnetworks(defaultSubnetwork.id())
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name("basic-instance")
///             .zone("us-central1-a")
///             .machineType("e2-micro")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .networkInterfaces(
///                 InstanceNetworkInterfaceArgs.builder()
///                     .network("default")
///                     .build(),
///                 InstanceNetworkInterfaceArgs.builder()
///                     .networkAttachment(defaultNetworkAttachment.selfLink())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: basic-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: basic-subnetwork
///       region: us-central1
///       network: ${default.id}
///       ipCidrRange: 10.0.0.0/16
///   defaultNetworkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: default
///     properties:
///       name: basic-network-attachment
///       region: us-central1
///       description: my basic network attachment
///       subnetworks:
///         - ${defaultSubnetwork.id}
///       connectionPreference: ACCEPT_AUTOMATIC
///   defaultInstance:
///     type: gcp:compute:Instance
///     name: default
///     properties:
///       name: basic-instance
///       zone: us-central1-a
///       machineType: e2-micro
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       networkInterfaces:
///         - network: default
///         - networkAttachment: ${defaultNetworkAttachment.selfLink}
/// ```
///
///
/// ## Import
///
/// NetworkAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkAttachments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default projects/{{project}}/regions/{{region}}/networkAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkAttachment:NetworkAttachment default {{name}}
/// ```
class NetworkAttachment extends pulumi.CustomResource {
  /// An array of connections for all the producers connected to this network attachment.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkAttachmentConnectionEndpoint>> connectionEndpoints;
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// Possible values are: `ACCEPT_AUTOMATIC`, `ACCEPT_MANUAL`, `INVALID`.
  late final pulumi.Output<String> connectionPreference;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This
  /// field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  late final pulumi.Output<String> fingerprint;
  /// Type of the resource.
  late final pulumi.Output<String> kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated.
  /// Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  late final pulumi.Output<String> network;
  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  late final pulumi.Output<List<String>?> producerAcceptLists;
  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  late final pulumi.Output<List<String>?> producerRejectLists;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  late final pulumi.Output<String> region;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource's resource id.
  late final pulumi.Output<String> selfLinkWithId;
  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  late final pulumi.Output<List<String>> subnetworks;

  /// Creates a new [NetworkAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAttachment]. {@macro pulumi_compute_network_attachment_network_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAttachment(
    String name, {
    NetworkAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkAttachment:NetworkAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionEndpoints = registerOutput<List<NetworkAttachmentConnectionEndpoint>>('connectionEndpoints');
    this.connectionPreference = registerOutput<String>('connectionPreference');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.producerAcceptLists = registerOutput<List<String>?>('producerAcceptLists');
    this.producerRejectLists = registerOutput<List<String>?>('producerRejectLists');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.subnetworks = registerOutput<List<String>>('subnetworks');
  }

  /// Gets an existing [NetworkAttachment] resource's state with the given [name] and [id].
  static NetworkAttachment get(
    String name,
    pulumi.Input<String> id, {
    NetworkAttachmentState? state,
  }) {
    return NetworkAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkAttachment:NetworkAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionEndpoints = registerOutput<List<NetworkAttachmentConnectionEndpoint>>('connectionEndpoints');
    this.connectionPreference = registerOutput<String>('connectionPreference');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.producerAcceptLists = registerOutput<List<String>?>('producerAcceptLists');
    this.producerRejectLists = registerOutput<List<String>?>('producerRejectLists');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.subnetworks = registerOutput<List<String>>('subnetworks');
  }
}
