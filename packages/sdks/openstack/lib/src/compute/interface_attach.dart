import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_attach_args.dart';
import 'interface_attach_state.dart';

/// Attaches a Network Interface (a Port) to an Instance using the OpenStack
/// Compute (Nova) v2 API.
///
/// ## Example Usage
///
/// ### Basic Attachment
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const ai1 = new openstack.compute.InterfaceAttach("ai_1", {
///     instanceId: instance1.id,
///     networkId: network1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// ai1 = openstack.compute.InterfaceAttach("ai_1",
///     instance_id=instance1.id,
///     network_id=network1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var ai1 = new OpenStack.Compute.InterfaceAttach("ai_1", new()
///     {
///         InstanceId = instance1.Id,
///         NetworkId = network1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInterfaceAttach(ctx, "ai_1", &compute.InterfaceAttachArgs{
/// 			InstanceId: instance1.ID(),
/// 			NetworkId:  network1.ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.InterfaceAttach;
/// import com.pulumi.openstack.compute.InterfaceAttachArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var ai1 = new InterfaceAttach("ai1", InterfaceAttachArgs.builder()
///             .instanceId(instance1.id())
///             .networkId(network1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - default
///   ai1:
///     type: openstack:compute:InterfaceAttach
///     name: ai_1
///     properties:
///       instanceId: ${instance1.id}
///       networkId: ${network1.id}
/// ```
///
///
/// ### Attachment Specifying a Fixed IP
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const ai1 = new openstack.compute.InterfaceAttach("ai_1", {
///     instanceId: instance1.id,
///     networkId: network1OpenstackNetworkingPortV2.id,
///     fixedIp: "10.0.10.10",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// ai1 = openstack.compute.InterfaceAttach("ai_1",
///     instance_id=instance1.id,
///     network_id=network1_openstack_networking_port_v2["id"],
///     fixed_ip="10.0.10.10")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var ai1 = new OpenStack.Compute.InterfaceAttach("ai_1", new()
///     {
///         InstanceId = instance1.Id,
///         NetworkId = network1OpenstackNetworkingPortV2.Id,
///         FixedIp = "10.0.10.10",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInterfaceAttach(ctx, "ai_1", &compute.InterfaceAttachArgs{
/// 			InstanceId: instance1.ID(),
/// 			NetworkId:  pulumi.Any(network1OpenstackNetworkingPortV2.Id),
/// 			FixedIp:    pulumi.String("10.0.10.10"),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.InterfaceAttach;
/// import com.pulumi.openstack.compute.InterfaceAttachArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var ai1 = new InterfaceAttach("ai1", InterfaceAttachArgs.builder()
///             .instanceId(instance1.id())
///             .networkId(network1OpenstackNetworkingPortV2.id())
///             .fixedIp("10.0.10.10")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - default
///   ai1:
///     type: openstack:compute:InterfaceAttach
///     name: ai_1
///     properties:
///       instanceId: ${instance1.id}
///       networkId: ${network1OpenstackNetworkingPortV2.id}
///       fixedIp: 10.0.10.10
/// ```
///
///
///
/// ### Attachment Using an Existing Port
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const port1 = new openstack.networking.Port("port_1", {
///     name: "port_1",
///     networkId: network1.id,
///     adminStateUp: true,
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const ai1 = new openstack.compute.InterfaceAttach("ai_1", {
///     instanceId: instance1.id,
///     portId: port1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// port1 = openstack.networking.Port("port_1",
///     name="port_1",
///     network_id=network1.id,
///     admin_state_up=True)
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// ai1 = openstack.compute.InterfaceAttach("ai_1",
///     instance_id=instance1.id,
///     port_id=port1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var port1 = new OpenStack.Networking.Port("port_1", new()
///     {
///         Name = "port_1",
///         NetworkId = network1.Id,
///         AdminStateUp = true,
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var ai1 = new OpenStack.Compute.InterfaceAttach("ai_1", new()
///     {
///         InstanceId = instance1.Id,
///         PortId = port1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		port1, err := networking.NewPort(ctx, "port_1", &networking.PortArgs{
/// 			Name:         pulumi.String("port_1"),
/// 			NetworkId:    network1.ID(),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInterfaceAttach(ctx, "ai_1", &compute.InterfaceAttachArgs{
/// 			InstanceId: instance1.ID(),
/// 			PortId:     port1.ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.InterfaceAttach;
/// import com.pulumi.openstack.compute.InterfaceAttachArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var port1 = new Port("port1", PortArgs.builder()
///             .name("port_1")
///             .networkId(network1.id())
///             .adminStateUp(true)
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var ai1 = new InterfaceAttach("ai1", InterfaceAttachArgs.builder()
///             .instanceId(instance1.id())
///             .portId(port1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   port1:
///     type: openstack:networking:Port
///     name: port_1
///     properties:
///       name: port_1
///       networkId: ${network1.id}
///       adminStateUp: 'true'
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - default
///   ai1:
///     type: openstack:compute:InterfaceAttach
///     name: ai_1
///     properties:
///       instanceId: ${instance1.id}
///       portId: ${port1.id}
/// ```
///
///
/// ### Attaching Multiple Interfaces
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const ports: openstack.networking.Port[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     ports.push(new openstack.networking.Port(`ports-${range.value}`, {
///         name: std.format({
///             input: "port-%02d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         networkId: network1.id,
///         adminStateUp: true,
///     }));
/// }
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const attachments: openstack.compute.InterfaceAttach[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     attachments.push(new openstack.compute.InterfaceAttach(`attachments-${range.value}`, {
///         portId: ports[range.value].id,
///         instanceId: instance1.id,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// ports = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     ports.append(openstack.networking.Port(f"ports-{range['value']}",
///         name=std.format(input="port-%02d",
///             args=[range["value"] + 1]).result,
///         network_id=network1.id,
///         admin_state_up=True))
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// attachments = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     attachments.append(openstack.compute.InterfaceAttach(f"attachments-{range['value']}",
///         port_id=ports[range["value"]].id,
///         instance_id=instance1.id))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var ports = new List<OpenStack.Networking.Port>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         ports.Add(new OpenStack.Networking.Port($"ports-{range.Value}", new()
///         {
///             Name = Std.Format.Invoke(new()
///             {
///                 Input = "port-%02d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             NetworkId = network1.Id,
///             AdminStateUp = true,
///         }));
///     }
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var attachments = new List<OpenStack.Compute.InterfaceAttach>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         attachments.Add(new OpenStack.Compute.InterfaceAttach($"attachments-{range.Value}", new()
///         {
///             PortId = ports[range.Value].Id,
///             InstanceId = instance1.Id,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "port-%02d",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var ports []*networking.Port
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := networking.NewPort(ctx, fmt.Sprintf("ports-%v", key0), &networking.PortArgs{
/// 				Name:         pulumi.String(invokeFormat.Result),
/// 				NetworkId:    network1.ID(),
/// 				AdminStateUp: pulumi.Bool(true),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			ports = append(ports, __res)
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var attachments []*compute.InterfaceAttach
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := compute.NewInterfaceAttach(ctx, fmt.Sprintf("attachments-%v", key0), &compute.InterfaceAttachArgs{
/// 				PortId:     ports[val0].ID(),
/// 				InstanceId: instance1.ID(),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			attachments = append(attachments, __res)
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.InterfaceAttach;
/// import com.pulumi.openstack.compute.InterfaceAttachArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Port("ports-" + i, PortArgs.builder()
///                 .name(StdFunctions.format(FormatArgs.builder()
///                     .input("port-%02d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .networkId(network1.id())
///                 .adminStateUp(true)
///                 .build());
///
///
/// }
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new InterfaceAttach("attachments-" + i, InterfaceAttachArgs.builder()
///                 .portId(ports[range.value()].id())
///                 .instanceId(instance1.id())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
///
///
/// Note that the above example will not guarantee that the ports are attached in
/// a deterministic manner. The ports will be attached in a seemingly random
/// order.
///
/// If you want to ensure that the ports are attached in a given order, create
/// explicit dependencies between the ports, such as:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const ports: openstack.networking.Port[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     ports.push(new openstack.networking.Port(`ports-${range.value}`, {
///         name: std.format({
///             input: "port-%02d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         networkId: network1.id,
///         adminStateUp: true,
///     }));
/// }
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const ai1 = new openstack.compute.InterfaceAttach("ai_1", {
///     instanceId: instance1.id,
///     portId: ports[0].id,
/// });
/// const ai2 = new openstack.compute.InterfaceAttach("ai_2", {
///     instanceId: instance1.id,
///     portId: ports[1].id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// ports = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     ports.append(openstack.networking.Port(f"ports-{range['value']}",
///         name=std.format(input="port-%02d",
///             args=[range["value"] + 1]).result,
///         network_id=network1.id,
///         admin_state_up=True))
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// ai1 = openstack.compute.InterfaceAttach("ai_1",
///     instance_id=instance1.id,
///     port_id=ports[0].id)
/// ai2 = openstack.compute.InterfaceAttach("ai_2",
///     instance_id=instance1.id,
///     port_id=ports[1].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var ports = new List<OpenStack.Networking.Port>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         ports.Add(new OpenStack.Networking.Port($"ports-{range.Value}", new()
///         {
///             Name = Std.Format.Invoke(new()
///             {
///                 Input = "port-%02d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             NetworkId = network1.Id,
///             AdminStateUp = true,
///         }));
///     }
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var ai1 = new OpenStack.Compute.InterfaceAttach("ai_1", new()
///     {
///         InstanceId = instance1.Id,
///         PortId = ports[0].Id,
///     });
///
///     var ai2 = new OpenStack.Compute.InterfaceAttach("ai_2", new()
///     {
///         InstanceId = instance1.Id,
///         PortId = ports[1].Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "port-%02d",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var ports []*networking.Port
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := networking.NewPort(ctx, fmt.Sprintf("ports-%v", key0), &networking.PortArgs{
/// 				Name:         pulumi.String(invokeFormat.Result),
/// 				NetworkId:    network1.ID(),
/// 				AdminStateUp: pulumi.Bool(true),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			ports = append(ports, __res)
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInterfaceAttach(ctx, "ai_1", &compute.InterfaceAttachArgs{
/// 			InstanceId: instance1.ID(),
/// 			PortId:     ports[0].ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInterfaceAttach(ctx, "ai_2", &compute.InterfaceAttachArgs{
/// 			InstanceId: instance1.ID(),
/// 			PortId:     ports[1].ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.InterfaceAttach;
/// import com.pulumi.openstack.compute.InterfaceAttachArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Port("ports-" + i, PortArgs.builder()
///                 .name(StdFunctions.format(FormatArgs.builder()
///                     .input("port-%02d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .networkId(network1.id())
///                 .adminStateUp(true)
///                 .build());
///
///
/// }
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var ai1 = new InterfaceAttach("ai1", InterfaceAttachArgs.builder()
///             .instanceId(instance1.id())
///             .portId(ports[0].id())
///             .build());
///
///         var ai2 = new InterfaceAttach("ai2", InterfaceAttachArgs.builder()
///             .instanceId(instance1.id())
///             .portId(ports[1].id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Interface Attachments can be imported using the Instance ID and Port ID
/// separated by a slash, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/interfaceAttach:InterfaceAttach ai_1 89c60255-9bd6-460c-822a-e2b959ede9d2/45670584-225f-46c3-b33e-6707b589b666
/// ```
class InterfaceAttach extends pulumi.CustomResource {
  /// An IP address to assosciate with the port.
  /// _NOTE_: This option cannot be used with port_id. You must specifiy a network_id. The IP address must lie in a range on the supplied network.
  late final pulumi.Output<String> fixedIp;

  /// The ID of the Instance to attach the Port or Network to.
  late final pulumi.Output<String> instanceId;

  /// The ID of the Network to attach to an Instance. A port will be created automatically.
  /// _NOTE_: This option and `port_id` are mutually exclusive.
  late final pulumi.Output<String> networkId;

  /// The ID of the Port to attach to an Instance.
  /// _NOTE_: This option and `network_id` are mutually exclusive.
  late final pulumi.Output<String> portId;

  /// The region in which to create the interface attachment.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new attachment.
  late final pulumi.Output<String> region;

  /// Creates a new [InterfaceAttach].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterfaceAttach]. {@macro pulumi_compute_interface_attach_interface_attach_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterfaceAttach(
    String name, {
    InterfaceAttachArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/interfaceAttach:InterfaceAttach',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fixedIp = registerOutput<String>('fixedIp');
    instanceId = registerOutput<String>('instanceId');
    networkId = registerOutput<String>('networkId');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [InterfaceAttach] resource's state with the given [name] and [id].
  static InterfaceAttach get(
    String name,
    pulumi.Input<String> id, {
    InterfaceAttachState? state,
  }) {
    return InterfaceAttach._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InterfaceAttach._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/interfaceAttach:InterfaceAttach',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fixedIp = registerOutput<String>('fixedIp');
    instanceId = registerOutput<String>('instanceId');
    networkId = registerOutput<String>('networkId');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
  }
}
