import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_args.dart';
import 'endpoint_group_state.dart';

/// Manages a V2 Neutron Endpoint Group resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const group1 = new openstack.vpnaas.EndpointGroup("group_1", {
///     name: "Group 1",
///     type: "cidr",
///     endpoints: [
///         "10.2.0.0/24",
///         "10.3.0.0/24",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// group1 = openstack.vpnaas.EndpointGroup("group_1",
///     name="Group 1",
///     type="cidr",
///     endpoints=[
///         "10.2.0.0/24",
///         "10.3.0.0/24",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var group1 = new OpenStack.VPNaaS.EndpointGroup("group_1", new()
///     {
///         Name = "Group 1",
///         Type = "cidr",
///         Endpoints = new[]
///         {
///             "10.2.0.0/24",
///             "10.3.0.0/24",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/vpnaas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpnaas.NewEndpointGroup(ctx, "group_1", &vpnaas.EndpointGroupArgs{
/// 			Name: pulumi.String("Group 1"),
/// 			Type: pulumi.String("cidr"),
/// 			Endpoints: pulumi.StringArray{
/// 				pulumi.String("10.2.0.0/24"),
/// 				pulumi.String("10.3.0.0/24"),
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
/// import com.pulumi.openstack.vpnaas.EndpointGroup;
/// import com.pulumi.openstack.vpnaas.EndpointGroupArgs;
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
///         var group1 = new EndpointGroup("group1", EndpointGroupArgs.builder()
///             .name("Group 1")
///             .type("cidr")
///             .endpoints(
///                 "10.2.0.0/24",
///                 "10.3.0.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   group1:
///     type: openstack:vpnaas:EndpointGroup
///     name: group_1
///     properties:
///       name: Group 1
///       type: cidr
///       endpoints:
///         - 10.2.0.0/24
///         - 10.3.0.0/24
/// ```
///
///
/// ## Import
///
/// Groups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:vpnaas/endpointGroup:EndpointGroup group_1 832cb7f3-59fe-40cf-8f64-8350ffc03272
/// ```
class EndpointGroup extends pulumi.CustomResource {
  /// The human-readable description for the group.
  /// Changing this updates the description of the existing group.
  late final pulumi.Output<String?> description;
  /// List of endpoints of the same type, for the endpoint group. The values will depend on the type.
  /// Changing this creates a new group.
  late final pulumi.Output<List<String>?> endpoints;
  /// The name of the group. Changing this updates the name of
  /// the existing group.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an endpoint group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// group.
  late final pulumi.Output<String> region;
  /// The owner of the group. Required if admin wants to
  /// create an endpoint group for another project. Changing this creates a new group.
  late final pulumi.Output<String> tenantId;
  /// The type of the endpoints in the group. A valid value is subnet, cidr, network, router, or vlan.
  /// Changing this creates a new group.
  late final pulumi.Output<String> type;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [EndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointGroup]. {@macro pulumi_vpnaas_endpoint_group_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointGroup(
    String name, {
    EndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/endpointGroup:EndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    endpoints = registerOutput<List<String>?>('endpoints');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [EndpointGroup] resource's state with the given [name] and [id].
  static EndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    EndpointGroupState? state,
  }) {
    return EndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/endpointGroup:EndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    endpoints = registerOutput<List<String>?>('endpoints');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
