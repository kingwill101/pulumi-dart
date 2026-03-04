import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_deployment_group_args.dart';
import 'intercept_deployment_group_state.dart';

/// A deployment group aggregates many zonal intercept backends (deployments)
/// into a single global intercept service. Consumers can connect this service
/// using an endpoint group.
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Deployment Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "example-network",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networksecurity.InterceptDeploymentGroup("default", {
///     interceptDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
///     description: "some description",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="example-network",
///     auto_create_subnetworks=False)
/// default = gcp.networksecurity.InterceptDeploymentGroup("default",
///     intercept_deployment_group_id="example-dg",
///     location="global",
///     network=network.id,
///     description="some description",
///     labels={
///         "foo": "bar",
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "example-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkSecurity.InterceptDeploymentGroup("default", new()
///     {
///         InterceptDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///         Description = "some description",
///         Labels =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("example-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewInterceptDeploymentGroup(ctx, "default", &networksecurity.InterceptDeploymentGroupArgs{
/// 			InterceptDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID(),
/// 			Description:                pulumi.String("some description"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.InterceptDeploymentGroupArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("example-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new InterceptDeploymentGroup("default", InterceptDeploymentGroupArgs.builder()
///             .interceptDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .description("some description")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: example-network
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:networksecurity:InterceptDeploymentGroup
///     properties:
///       interceptDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// InterceptDeploymentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptDeploymentGroups/{{intercept_deployment_group_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_deployment_group_id}}`
///
/// * `{{location}}/{{intercept_deployment_group_id}}`
///
/// When using the `pulumi import` command, InterceptDeploymentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup default projects/{{project}}/locations/{{location}}/interceptDeploymentGroups/{{intercept_deployment_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup default {{project}}/{{location}}/{{intercept_deployment_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup default {{location}}/{{intercept_deployment_group_id}}
/// ```
class InterceptDeploymentGroup extends pulumi.CustomResource {
  /// The list of endpoint groups that are connected to this resource.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectedEndpointGroups;

  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  late final pulumi.Output<String> interceptDeploymentGroupId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The cloud location of the deployment group, currently restricted to `global`.
  late final pulumi.Output<String> location;

  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> locations;

  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> name;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new deployment to the group)
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final pulumi.Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [InterceptDeploymentGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterceptDeploymentGroup]. {@macro pulumi_networksecurity_intercept_deployment_group_intercept_deployment_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterceptDeploymentGroup(
    String name, {
    InterceptDeploymentGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectedEndpointGroups = registerOutput<List<Map<String, dynamic>>>(
      'connectedEndpointGroups',
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    interceptDeploymentGroupId = registerOutput<String>(
      'interceptDeploymentGroupId',
    );
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    locations = registerOutput<List<Map<String, dynamic>>>('locations');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [InterceptDeploymentGroup] resource's state with the given [name] and [id].
  static InterceptDeploymentGroup get(
    String name,
    pulumi.Input<String> id, {
    InterceptDeploymentGroupState? state,
  }) {
    return InterceptDeploymentGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InterceptDeploymentGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networksecurity/interceptDeploymentGroup:InterceptDeploymentGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectedEndpointGroups = registerOutput<List<Map<String, dynamic>>>(
      'connectedEndpointGroups',
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    interceptDeploymentGroupId = registerOutput<String>(
      'interceptDeploymentGroupId',
    );
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    locations = registerOutput<List<Map<String, dynamic>>>('locations');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
