import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_sec_group_associate_args.dart';
import 'port_sec_group_associate_state.dart';

/// ## Example Usage
///
/// ### Append a security group to an existing port
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const systemPort = openstack.networking.getPort({
///     fixedIp: "10.0.0.10",
/// });
/// const secgroup = openstack.networking.getSecGroup({
///     name: "secgroup",
/// });
/// const port1 = new openstack.networking.PortSecGroupAssociate("port_1", {
///     portId: systemPort.then(systemPort => systemPort.id),
///     securityGroupIds: [secgroup.then(secgroup => secgroup.id)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// system_port = openstack.networking.get_port(fixed_ip="10.0.0.10")
/// secgroup = openstack.networking.get_sec_group(name="secgroup")
/// port1 = openstack.networking.PortSecGroupAssociate("port_1",
///     port_id=system_port.id,
///     security_group_ids=[secgroup.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var systemPort = OpenStack.Networking.GetPort.Invoke(new()
///     {
///         FixedIp = "10.0.0.10",
///     });
///
///     var secgroup = OpenStack.Networking.GetSecGroup.Invoke(new()
///     {
///         Name = "secgroup",
///     });
///
///     var port1 = new OpenStack.Networking.PortSecGroupAssociate("port_1", new()
///     {
///         PortId = systemPort.Apply(getPortResult => getPortResult.Id),
///         SecurityGroupIds = new[]
///         {
///             secgroup.Apply(getSecGroupResult => getSecGroupResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		systemPort, err := networking.LookupPort(ctx, &networking.LookupPortArgs{
/// 			FixedIp: pulumi.StringRef("10.0.0.10"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secgroup, err := networking.LookupSecGroup(ctx, &networking.LookupSecGroupArgs{
/// 			Name: pulumi.StringRef("secgroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewPortSecGroupAssociate(ctx, "port_1", &networking.PortSecGroupAssociateArgs{
/// 			PortId: pulumi.String(systemPort.Id),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				pulumi.String(secgroup.Id),
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetPortArgs;
/// import com.pulumi.openstack.networking.inputs.GetSecGroupArgs;
/// import com.pulumi.openstack.networking.PortSecGroupAssociate;
/// import com.pulumi.openstack.networking.PortSecGroupAssociateArgs;
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
///         final var systemPort = NetworkingFunctions.getPort(GetPortArgs.builder()
///             .fixedIp("10.0.0.10")
///             .build());
///
///         final var secgroup = NetworkingFunctions.getSecGroup(GetSecGroupArgs.builder()
///             .name("secgroup")
///             .build());
///
///         var port1 = new PortSecGroupAssociate("port1", PortSecGroupAssociateArgs.builder()
///             .portId(systemPort.id())
///             .securityGroupIds(secgroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   port1:
///     type: openstack:networking:PortSecGroupAssociate
///     name: port_1
///     properties:
///       portId: ${systemPort.id}
///       securityGroupIds:
///         - ${secgroup.id}
/// variables:
///   systemPort:
///     fn::invoke:
///       function: openstack:networking:getPort
///       arguments:
///         fixedIp: 10.0.0.10
///   secgroup:
///     fn::invoke:
///       function: openstack:networking:getSecGroup
///       arguments:
///         name: secgroup
/// ```
///
///
/// ### Enforce a security group to an existing port
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const systemPort = openstack.networking.getPort({
///     fixedIp: "10.0.0.10",
/// });
/// const secgroup = openstack.networking.getSecGroup({
///     name: "secgroup",
/// });
/// const port1 = new openstack.networking.PortSecGroupAssociate("port_1", {
///     portId: systemPort.then(systemPort => systemPort.id),
///     enforce: true,
///     securityGroupIds: [secgroup.then(secgroup => secgroup.id)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// system_port = openstack.networking.get_port(fixed_ip="10.0.0.10")
/// secgroup = openstack.networking.get_sec_group(name="secgroup")
/// port1 = openstack.networking.PortSecGroupAssociate("port_1",
///     port_id=system_port.id,
///     enforce=True,
///     security_group_ids=[secgroup.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var systemPort = OpenStack.Networking.GetPort.Invoke(new()
///     {
///         FixedIp = "10.0.0.10",
///     });
///
///     var secgroup = OpenStack.Networking.GetSecGroup.Invoke(new()
///     {
///         Name = "secgroup",
///     });
///
///     var port1 = new OpenStack.Networking.PortSecGroupAssociate("port_1", new()
///     {
///         PortId = systemPort.Apply(getPortResult => getPortResult.Id),
///         Enforce = true,
///         SecurityGroupIds = new[]
///         {
///             secgroup.Apply(getSecGroupResult => getSecGroupResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		systemPort, err := networking.LookupPort(ctx, &networking.LookupPortArgs{
/// 			FixedIp: pulumi.StringRef("10.0.0.10"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secgroup, err := networking.LookupSecGroup(ctx, &networking.LookupSecGroupArgs{
/// 			Name: pulumi.StringRef("secgroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewPortSecGroupAssociate(ctx, "port_1", &networking.PortSecGroupAssociateArgs{
/// 			PortId:  pulumi.String(systemPort.Id),
/// 			Enforce: pulumi.Bool(true),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				pulumi.String(secgroup.Id),
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetPortArgs;
/// import com.pulumi.openstack.networking.inputs.GetSecGroupArgs;
/// import com.pulumi.openstack.networking.PortSecGroupAssociate;
/// import com.pulumi.openstack.networking.PortSecGroupAssociateArgs;
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
///         final var systemPort = NetworkingFunctions.getPort(GetPortArgs.builder()
///             .fixedIp("10.0.0.10")
///             .build());
///
///         final var secgroup = NetworkingFunctions.getSecGroup(GetSecGroupArgs.builder()
///             .name("secgroup")
///             .build());
///
///         var port1 = new PortSecGroupAssociate("port1", PortSecGroupAssociateArgs.builder()
///             .portId(systemPort.id())
///             .enforce(true)
///             .securityGroupIds(secgroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   port1:
///     type: openstack:networking:PortSecGroupAssociate
///     name: port_1
///     properties:
///       portId: ${systemPort.id}
///       enforce: 'true'
///       securityGroupIds:
///         - ${secgroup.id}
/// variables:
///   systemPort:
///     fn::invoke:
///       function: openstack:networking:getPort
///       arguments:
///         fixedIp: 10.0.0.10
///   secgroup:
///     fn::invoke:
///       function: openstack:networking:getSecGroup
///       arguments:
///         name: secgroup
/// ```
///
///
/// ### Remove all security groups from an existing port
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const systemPort = openstack.networking.getPort({
///     fixedIp: "10.0.0.10",
/// });
/// const port1 = new openstack.networking.PortSecGroupAssociate("port_1", {
///     portId: systemPort.then(systemPort => systemPort.id),
///     enforce: true,
///     securityGroupIds: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// system_port = openstack.networking.get_port(fixed_ip="10.0.0.10")
/// port1 = openstack.networking.PortSecGroupAssociate("port_1",
///     port_id=system_port.id,
///     enforce=True,
///     security_group_ids=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var systemPort = OpenStack.Networking.GetPort.Invoke(new()
///     {
///         FixedIp = "10.0.0.10",
///     });
///
///     var port1 = new OpenStack.Networking.PortSecGroupAssociate("port_1", new()
///     {
///         PortId = systemPort.Apply(getPortResult => getPortResult.Id),
///         Enforce = true,
///         SecurityGroupIds = new[] {},
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		systemPort, err := networking.LookupPort(ctx, &networking.LookupPortArgs{
/// 			FixedIp: pulumi.StringRef("10.0.0.10"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewPortSecGroupAssociate(ctx, "port_1", &networking.PortSecGroupAssociateArgs{
/// 			PortId:           pulumi.String(systemPort.Id),
/// 			Enforce:          pulumi.Bool(true),
/// 			SecurityGroupIds: pulumi.StringArray{},
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
/// import com.pulumi.openstack.networking.NetworkingFunctions;
/// import com.pulumi.openstack.networking.inputs.GetPortArgs;
/// import com.pulumi.openstack.networking.PortSecGroupAssociate;
/// import com.pulumi.openstack.networking.PortSecGroupAssociateArgs;
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
///         final var systemPort = NetworkingFunctions.getPort(GetPortArgs.builder()
///             .fixedIp("10.0.0.10")
///             .build());
///
///         var port1 = new PortSecGroupAssociate("port1", PortSecGroupAssociateArgs.builder()
///             .portId(systemPort.id())
///             .enforce(true)
///             .securityGroupIds()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   port1:
///     type: openstack:networking:PortSecGroupAssociate
///     name: port_1
///     properties:
///       portId: ${systemPort.id}
///       enforce: 'true'
///       securityGroupIds: []
/// variables:
///   systemPort:
///     fn::invoke:
///       function: openstack:networking:getPort
///       arguments:
///         fixedIp: 10.0.0.10
/// ```
///
///
/// ## Import
///
/// Port security group association can be imported using the `id` of the port, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/portSecGroupAssociate:PortSecGroupAssociate port_1 eae26a3e-1c33-4cc1-9c31-0cd729c438a1
/// ```
class PortSecGroupAssociate extends pulumi.CustomResource {
  /// The collection of Security Group IDs on the port
  /// which have been explicitly and implicitly added.
  late final pulumi.Output<List<String>> allSecurityGroupIds;

  /// Whether to replace or append the list of security
  /// groups, specified in the `security_group_ids`. Defaults to `false`.
  late final pulumi.Output<bool?> enforce;

  /// An UUID of the port to apply security groups to.
  late final pulumi.Output<String> portId;

  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to manage a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// resource.
  late final pulumi.Output<String> region;

  /// A list of security group IDs to apply to
  /// the port. The security groups must be specified by ID and not name (as
  /// opposed to how they are configured with the Compute Instance).
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Creates a new [PortSecGroupAssociate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PortSecGroupAssociate]. {@macro pulumi_networking_port_sec_group_associate_port_sec_group_associate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PortSecGroupAssociate(
    String name, {
    PortSecGroupAssociateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/portSecGroupAssociate:PortSecGroupAssociate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allSecurityGroupIds = registerOutput<List<String>>('allSecurityGroupIds');
    enforce = registerOutput<bool?>('enforce');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
  }

  /// Gets an existing [PortSecGroupAssociate] resource's state with the given [name] and [id].
  static PortSecGroupAssociate get(
    String name,
    pulumi.Input<String> id, {
    PortSecGroupAssociateState? state,
  }) {
    return PortSecGroupAssociate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PortSecGroupAssociate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/portSecGroupAssociate:PortSecGroupAssociate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allSecurityGroupIds = registerOutput<List<String>>('allSecurityGroupIds');
    enforce = registerOutput<bool?>('enforce');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
  }
}
