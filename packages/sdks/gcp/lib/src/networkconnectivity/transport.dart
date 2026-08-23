import 'package:pulumi/pulumi.dart' as pulumi;
import 'transport_args.dart';
import 'transport_state.dart';

/// The Transport resource is a top-level resource used by customers to control Partner Cross-Cloud Interconnect (CCI) connections.
///
///
/// To get more information about Transport, see:
///
/// * [API documentation](https://docs.cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.transports)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/sdk/gcloud/reference/network-connectivity/transports)
///
/// ## Example Usage
///
/// ### Network Connectivity Transport Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const primary_network = new gcp.compute.Network("primary-network", {
///     name: "tf-test-my-vpc-network_14939",
///     autoCreateSubnetworks: false,
/// });
/// const primary = new gcp.networkconnectivity.Transport("primary", {
///     name: "tf-test-basic-transport_59865",
///     region: "us-east4",
///     description: "A sample transport",
///     remoteProfile: project.then(project => `https://networkconnectivity.googleapis.com/v1/${project.id}/locations/us-east4/remoteTransportProfiles/aws-us-east-1`),
///     network: primary_network.name,
///     bandwidth: "BPS_1G",
///     remoteAccountId: "123",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// primary_network = gcp.compute.Network("primary-network",
///     name="tf-test-my-vpc-network_14939",
///     auto_create_subnetworks=False)
/// primary = gcp.networkconnectivity.Transport("primary",
///     name="tf-test-basic-transport_59865",
///     region="us-east4",
///     description="A sample transport",
///     remote_profile=f"https://networkconnectivity.googleapis.com/v1/{project.id}/locations/us-east4/remoteTransportProfiles/aws-us-east-1",
///     network=primary_network.name,
///     bandwidth="BPS_1G",
///     remote_account_id="123",
///     labels={
///         "label-one": "value-one",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var primary_network = new Gcp.Compute.Network("primary-network", new()
///     {
///         Name = "tf-test-my-vpc-network_14939",
///         AutoCreateSubnetworks = false,
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Transport("primary", new()
///     {
///         Name = "tf-test-basic-transport_59865",
///         Region = "us-east4",
///         Description = "A sample transport",
///         RemoteProfile = $"https://networkconnectivity.googleapis.com/v1/{project.Apply(getProjectResult => getProjectResult.Id)}/locations/us-east4/remoteTransportProfiles/aws-us-east-1",
///         Network = primary_network.Name,
///         Bandwidth = "BPS_1G",
///         RemoteAccountId = "123",
///         Labels =
///         {
///             { "label-one", "value-one" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary_network, err := compute.NewNetwork(ctx, "primary-network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("tf-test-my-vpc-network_14939"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewTransport(ctx, "primary", &networkconnectivity.TransportArgs{
/// 			Name:            pulumi.String("tf-test-basic-transport_59865"),
/// 			Region:          pulumi.String("us-east4"),
/// 			Description:     pulumi.String("A sample transport"),
/// 			RemoteProfile:   pulumi.Sprintf("https://networkconnectivity.googleapis.com/v1/%v/locations/us-east4/remoteTransportProfiles/aws-us-east-1", project.Id),
/// 			Network:         primary_network.Name,
/// 			Bandwidth:       pulumi.String("BPS_1G"),
/// 			RemoteAccountId: pulumi.String("123"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_network" "primary-network" {
///   name                    = "tf-test-my-vpc-network_14939"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networkconnectivity_transport" "primary" {
///   name              = "tf-test-basic-transport_59865"
///   region            = "us-east4"
///   description       = "A sample transport"
///   remote_profile    ="https://networkconnectivity.googleapis.com/v1/${data.gcp_organizations_getproject.project.id}/locations/us-east4/remoteTransportProfiles/aws-us-east-1"
///   network           = gcp_compute_network.primary-network.name
///   bandwidth         = "BPS_1G"
///   remote_account_id = "123"
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.Transport;
/// import com.pulumi.gcp.networkconnectivity.TransportArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var primary_network = new Network("primary-network", NetworkArgs.builder()
///             .name("tf-test-my-vpc-network_14939")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var primary = new Transport("primary", TransportArgs.builder()
///             .name("tf-test-basic-transport_59865")
///             .region("us-east4")
///             .description("A sample transport")
///             .remoteProfile(String.format("https://networkconnectivity.googleapis.com/v1/%s/locations/us-east4/remoteTransportProfiles/aws-us-east-1", project.id()))
///             .network(primary_network.name())
///             .bandwidth("BPS_1G")
///             .remoteAccountId("123")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary-network:
///     type: gcp:compute:Network
///     properties:
///       name: tf-test-my-vpc-network_14939
///       autoCreateSubnetworks: false
///   primary:
///     type: gcp:networkconnectivity:Transport
///     properties:
///       name: tf-test-basic-transport_59865
///       region: us-east4
///       description: A sample transport
///       remoteProfile: https://networkconnectivity.googleapis.com/v1/${project.id}/locations/us-east4/remoteTransportProfiles/aws-us-east-1
///       network: ${["primary-network"].name}
///       bandwidth: BPS_1G
///       remoteAccountId: '123'
///       labels:
///         label-one: value-one
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Transport can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/transports/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Transport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/transport:Transport default projects/{{project}}/locations/{{region}}/transports/{{name}}
/// $ pulumi import gcp:networkconnectivity/transport:Transport default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:networkconnectivity/transport:Transport default {{region}}/{{name}}
/// $ pulumi import gcp:networkconnectivity/transport:Transport default {{name}}
/// ```
class Transport extends pulumi.CustomResource {
  /// (Optional, Beta)
  /// Administrative state of the underlying connectivity. If set to true (default), connectivity should be available between your environments. If set to false, the connectivity over these links is disabled. Disabling your Transport does not affect billing, and retains the underlying network bandwidth associated with the connectivity.
  late final pulumi.Output<bool?> adminEnabled;
  /// List of IP Prefixes that will be advertised to the remote provider. Both IPv4 and IPv6 addresses are supported.
  late final pulumi.Output<List<String>?> advertisedRoutes;
  /// (Optional, Beta)
  /// Controls whether resources proposed by the Transport are automatically accepted on behalf of the user.
  late final pulumi.Output<bool?> autoAccept;
  /// Bandwidth of the Transport. This must be one of the supported bandwidths for the remote profile.
  late final pulumi.Output<String> bandwidth;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// [Output only] Google-generated activation key. This is only output if the selected profile supports an OUTPUT key flow. Inputting this to the provider is only valid while the resource is in a PENDING_KEY state. Once the provider has accepted the key, the resource will move to the CONFIGURING state.
  late final pulumi.Output<String> generatedActivationKey;
  /// (Optional, Beta)
  /// The NCC Hub that the Transport should attach to. The hub must be in the same project as the Transport.
  late final pulumi.Output<String?> hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// [Output only] The maximum transmission unit (MTU) of a packet that can be sent over this transport.
  late final pulumi.Output<int?> mtuLimit;
  /// Name of the resource, see google.aip.dev/122 for resource naming.
  late final pulumi.Output<String> name;
  /// Resource URL of the Network that will be peered with this Transport. This field must be provided during resource creation and cannot be changed.
  late final pulumi.Output<String?> network;
  /// VPC Network URI that was created for the VPC Peering connection to the provided `network`. If VPC Peering is disconnected, this can be used to re-establish.
  late final pulumi.Output<String> peeringNetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Key used for establishing a connection with the remote transport. This key can only be provided if the profile supports an INPUT key flow and the resource is in the PENDING_KEY state.
  late final pulumi.Output<String?> providedActivationKey;
  /// (Optional, Beta)
  /// Controls whether a Routing VPC Spoke should be created and attached to the NCC Hub.
  late final pulumi.Output<bool?> pscRoutingEnabled;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of this resource. This is required to construct the resource name, but is not sent to the API since the region is already contained in the parent field.
  late final pulumi.Output<String> region;
  /// The user supplied account id for the CSP associated with the remote profile.
  late final pulumi.Output<String?> remoteAccountId;
  /// Resource URL of the remoteTransportProfile that this Transport is
  /// connecting to.
  late final pulumi.Output<String> remoteProfile;
  /// IP version stack for the established connectivity.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  late final pulumi.Output<String> stackType;
  /// [Output Only] State of the underlying connectivity.
  late final pulumi.Output<String> state;

  /// Creates a new [Transport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Transport]. {@macro pulumi_networkconnectivity_transport_transport_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Transport(
    String name, {
    TransportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/transport:Transport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminEnabled = registerOutput<bool?>('adminEnabled');
    advertisedRoutes = registerOutput<List<String>?>('advertisedRoutes');
    autoAccept = registerOutput<bool?>('autoAccept');
    bandwidth = registerOutput<String>('bandwidth');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    generatedActivationKey = registerOutput<String>('generatedActivationKey');
    hub = registerOutput<String?>('hub');
    labels = registerOutput<Map<String, String>?>('labels');
    mtuLimit = registerOutput<int?>('mtuLimit');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    peeringNetwork = registerOutput<String>('peeringNetwork');
    project = registerOutput<String>('project');
    providedActivationKey = registerOutput<String?>('providedActivationKey');
    pscRoutingEnabled = registerOutput<bool?>('pscRoutingEnabled');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    remoteAccountId = registerOutput<String?>('remoteAccountId');
    remoteProfile = registerOutput<String>('remoteProfile');
    stackType = registerOutput<String>('stackType');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [Transport] resource's state with the given [name] and [id].
  static Transport get(
    String name,
    pulumi.Input<String> id, {
    TransportState? state,
  }) {
    return Transport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Transport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/transport:Transport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminEnabled = registerOutput<bool?>('adminEnabled');
    advertisedRoutes = registerOutput<List<String>?>('advertisedRoutes');
    autoAccept = registerOutput<bool?>('autoAccept');
    bandwidth = registerOutput<String>('bandwidth');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    generatedActivationKey = registerOutput<String>('generatedActivationKey');
    hub = registerOutput<String?>('hub');
    labels = registerOutput<Map<String, String>?>('labels');
    mtuLimit = registerOutput<int?>('mtuLimit');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    peeringNetwork = registerOutput<String>('peeringNetwork');
    project = registerOutput<String>('project');
    providedActivationKey = registerOutput<String?>('providedActivationKey');
    pscRoutingEnabled = registerOutput<bool?>('pscRoutingEnabled');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    remoteAccountId = registerOutput<String?>('remoteAccountId');
    remoteProfile = registerOutput<String>('remoteProfile');
    stackType = registerOutput<String>('stackType');
    this.state = registerOutput<String>('state');
  }
}
