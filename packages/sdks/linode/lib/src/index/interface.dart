import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_args.dart';
import 'interface_default_route.dart';
import 'interface_public.dart';
import 'interface_state.dart';
import 'interface_vlan.dart';
import 'interface_vpc.dart';

/// Provides a Linode Interface resource that can be used to create, modify, and delete network interfaces for Linode instances. Interfaces allow you to configure public, VLAN, and VPC networking for your Linode instances.
///
/// This resource is specifically for Linode interfaces. If you are interested in deploying a Linode instance with a legacy config interface, please refer to the `linode.InstanceConfig` resource documentation for details.
///
/// This resource is designed to work with explicitly defined disk and config resources for the Linode instance. See the Complete Example with Linode section below for details.
///
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-linode-instance-interface).
///
/// ## Example Usage
///
/// ### Public Interface Example
///
/// The following example shows how to create a public interface with specific IPv4 and IPv6 configurations.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const _public = new linode.Interface("public", {
///     linodeId: my_instance.id,
///     "public": {
///         ipv4: {
///             addresses: [{
///                 address: "auto",
///                 primary: true,
///             }],
///         },
///         ipv6: {
///             ranges: [{
///                 range: "/64",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// public = linode.Interface("public",
///     linode_id=my_instance["id"],
///     public={
///         "ipv4": {
///             "addresses": [{
///                 "address": "auto",
///                 "primary": True,
///             }],
///         },
///         "ipv6": {
///             "ranges": [{
///                 "range": "/64",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @public = new Linode.Interface("public", new()
///     {
///         LinodeId = my_instance.Id,
///         Public = new Linode.Inputs.InterfacePublicArgs
///         {
///             Ipv4 = new Linode.Inputs.InterfacePublicIpv4Args
///             {
///                 Addresses = new[]
///                 {
///                     new Linode.Inputs.InterfacePublicIpv4AddressArgs
///                     {
///                         Address = "auto",
///                         Primary = true,
///                     },
///                 },
///             },
///             Ipv6 = new Linode.Inputs.InterfacePublicIpv6Args
///             {
///                 Ranges = new[]
///                 {
///                     new Linode.Inputs.InterfacePublicIpv6RangeArgs
///                     {
///                         Range = "/64",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInterface(ctx, "public", &linode.InterfaceArgs{
/// 			LinodeId: pulumi.Any(my_instance.Id),
/// 			Public: &linode.InterfacePublicArgs{
/// 				Ipv4: &linode.InterfacePublicIpv4Args{
/// 					Addresses: linode.InterfacePublicIpv4AddressArray{
/// 						&linode.InterfacePublicIpv4AddressArgs{
/// 							Address: pulumi.String("auto"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				Ipv6: &linode.InterfacePublicIpv6Args{
/// 					Ranges: linode.InterfacePublicIpv6RangeArray{
/// 						&linode.InterfacePublicIpv6RangeArgs{
/// 							Range: pulumi.String("/64"),
/// 						},
/// 					},
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
/// import com.pulumi.linode.Interface;
/// import com.pulumi.linode.InterfaceArgs;
/// import com.pulumi.linode.inputs.InterfacePublicArgs;
/// import com.pulumi.linode.inputs.InterfacePublicIpv4Args;
/// import com.pulumi.linode.inputs.InterfacePublicIpv6Args;
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
///         var public_ = new Interface("public", InterfaceArgs.builder()
///             .linodeId(my_instance.id())
///             .public_(InterfacePublicArgs.builder()
///                 .ipv4(InterfacePublicIpv4Args.builder()
///                     .addresses(InterfacePublicIpv4AddressArgs.builder()
///                         .address("auto")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .ipv6(InterfacePublicIpv6Args.builder()
///                     .ranges(InterfacePublicIpv6RangeArgs.builder()
///                         .range("/64")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   public:
///     type: linode:Interface
///     properties:
///       linodeId: ${["my-instance"].id}
///       public:
///         ipv4:
///           addresses:
///             - address: auto
///               primary: true
///         ipv6:
///           ranges:
///             - range: /64
/// ```
///
///
/// ### IPv6-Only Public Interface Example
///
/// The following example shows how to create an IPv6-only public interface. Note that you must explicitly set `addresses = []` to prevent the automatic creation of an IPv4 address.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const ipv6Only = new linode.Interface("ipv6_only", {
///     linodeId: my_instance.id,
///     "public": {
///         ipv4: {
///             addresses: [],
///         },
///         ipv6: {
///             ranges: [{
///                 range: "/64",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// ipv6_only = linode.Interface("ipv6_only",
///     linode_id=my_instance["id"],
///     public={
///         "ipv4": {
///             "addresses": [],
///         },
///         "ipv6": {
///             "ranges": [{
///                 "range": "/64",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipv6Only = new Linode.Interface("ipv6_only", new()
///     {
///         LinodeId = my_instance.Id,
///         Public = new Linode.Inputs.InterfacePublicArgs
///         {
///             Ipv4 = new Linode.Inputs.InterfacePublicIpv4Args
///             {
///                 Addresses = new() { },
///             },
///             Ipv6 = new Linode.Inputs.InterfacePublicIpv6Args
///             {
///                 Ranges = new[]
///                 {
///                     new Linode.Inputs.InterfacePublicIpv6RangeArgs
///                     {
///                         Range = "/64",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInterface(ctx, "ipv6_only", &linode.InterfaceArgs{
/// 			LinodeId: pulumi.Any(my_instance.Id),
/// 			Public: &linode.InterfacePublicArgs{
/// 				Ipv4: &linode.InterfacePublicIpv4Args{
/// 					Addresses: linode.InterfacePublicIpv4AddressArray{},
/// 				},
/// 				Ipv6: &linode.InterfacePublicIpv6Args{
/// 					Ranges: linode.InterfacePublicIpv6RangeArray{
/// 						&linode.InterfacePublicIpv6RangeArgs{
/// 							Range: pulumi.String("/64"),
/// 						},
/// 					},
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
/// import com.pulumi.linode.Interface;
/// import com.pulumi.linode.InterfaceArgs;
/// import com.pulumi.linode.inputs.InterfacePublicArgs;
/// import com.pulumi.linode.inputs.InterfacePublicIpv4Args;
/// import com.pulumi.linode.inputs.InterfacePublicIpv6Args;
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
///         var ipv6Only = new Interface("ipv6Only", InterfaceArgs.builder()
///             .linodeId(my_instance.id())
///             .public_(InterfacePublicArgs.builder()
///                 .ipv4(InterfacePublicIpv4Args.builder()
///                     .addresses()
///                     .build())
///                 .ipv6(InterfacePublicIpv6Args.builder()
///                     .ranges(InterfacePublicIpv6RangeArgs.builder()
///                         .range("/64")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ipv6Only:
///     type: linode:Interface
///     name: ipv6_only
///     properties:
///       linodeId: ${["my-instance"].id}
///       public:
///         ipv4:
///           addresses: []
///         ipv6:
///           ranges:
///             - range: /64
/// ```
///
///
/// ### VPC Interface Example
///
/// The following example shows how to create a VPC interface with custom IPv4 configuration and 1:1 NAT.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const vpc = new linode.Interface("vpc", {
///     linodeId: my_instance.id,
///     vpc: {
///         subnetId: 240213,
///         ipv4: {
///             addresses: [{
///                 address: "auto",
///             }],
///             ranges: [{
///                 range: "/32",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// vpc = linode.Interface("vpc",
///     linode_id=my_instance["id"],
///     vpc={
///         "subnet_id": 240213,
///         "ipv4": {
///             "addresses": [{
///                 "address": "auto",
///             }],
///             "ranges": [{
///                 "range": "/32",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Linode.Interface("vpc", new()
///     {
///         LinodeId = my_instance.Id,
///         Vpc = new Linode.Inputs.InterfaceVpcArgs
///         {
///             SubnetId = 240213,
///             Ipv4 = new Linode.Inputs.InterfaceVpcIpv4Args
///             {
///                 Addresses = new[]
///                 {
///                     new Linode.Inputs.InterfaceVpcIpv4AddressArgs
///                     {
///                         Address = "auto",
///                     },
///                 },
///                 Ranges = new[]
///                 {
///                     new Linode.Inputs.InterfaceVpcIpv4RangeArgs
///                     {
///                         Range = "/32",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInterface(ctx, "vpc", &linode.InterfaceArgs{
/// 			LinodeId: pulumi.Any(my_instance.Id),
/// 			Vpc: &linode.InterfaceVpcArgs{
/// 				SubnetId: pulumi.Int(240213),
/// 				Ipv4: &linode.InterfaceVpcIpv4Args{
/// 					Addresses: linode.InterfaceVpcIpv4AddressArray{
/// 						&linode.InterfaceVpcIpv4AddressArgs{
/// 							Address: pulumi.String("auto"),
/// 						},
/// 					},
/// 					Ranges: linode.InterfaceVpcIpv4RangeArray{
/// 						&linode.InterfaceVpcIpv4RangeArgs{
/// 							Range: pulumi.String("/32"),
/// 						},
/// 					},
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
/// import com.pulumi.linode.Interface;
/// import com.pulumi.linode.InterfaceArgs;
/// import com.pulumi.linode.inputs.InterfaceVpcArgs;
/// import com.pulumi.linode.inputs.InterfaceVpcIpv4Args;
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
///         var vpc = new Interface("vpc", InterfaceArgs.builder()
///             .linodeId(my_instance.id())
///             .vpc(InterfaceVpcArgs.builder()
///                 .subnetId(240213)
///                 .ipv4(InterfaceVpcIpv4Args.builder()
///                     .addresses(InterfaceVpcIpv4AddressArgs.builder()
///                         .address("auto")
///                         .build())
///                     .ranges(InterfaceVpcIpv4RangeArgs.builder()
///                         .range("/32")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: linode:Interface
///     properties:
///       linodeId: ${["my-instance"].id}
///       vpc:
///         subnetId: 240213
///         ipv4:
///           addresses:
///             - address: auto
///           ranges:
///             - range: /32
/// ```
///
///
/// ### VPC (IPv6) Interface Example
///
/// The following example shows how to create a public VPC interface with a custom IPv6 configuration.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const vpc = new linode.Interface("vpc", {
///     linodeId: my_instance.id,
///     vpc: {
///         subnetId: 12345,
///         ipv6: {
///             isPublic: true,
///             slaacs: [{
///                 range: "auto",
///             }],
///             ranges: [{
///                 range: "auto",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// vpc = linode.Interface("vpc",
///     linode_id=my_instance["id"],
///     vpc={
///         "subnet_id": 12345,
///         "ipv6": {
///             "is_public": True,
///             "slaacs": [{
///                 "range": "auto",
///             }],
///             "ranges": [{
///                 "range": "auto",
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Linode.Interface("vpc", new()
///     {
///         LinodeId = my_instance.Id,
///         Vpc = new Linode.Inputs.InterfaceVpcArgs
///         {
///             SubnetId = 12345,
///             Ipv6 = new Linode.Inputs.InterfaceVpcIpv6Args
///             {
///                 IsPublic = true,
///                 Slaacs = new[]
///                 {
///                     new Linode.Inputs.InterfaceVpcIpv6SlaacArgs
///                     {
///                         Range = "auto",
///                     },
///                 },
///                 Ranges = new[]
///                 {
///                     new Linode.Inputs.InterfaceVpcIpv6RangeArgs
///                     {
///                         Range = "auto",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInterface(ctx, "vpc", &linode.InterfaceArgs{
/// 			LinodeId: pulumi.Any(my_instance.Id),
/// 			Vpc: &linode.InterfaceVpcArgs{
/// 				SubnetId: pulumi.Int(12345),
/// 				Ipv6: &linode.InterfaceVpcIpv6Args{
/// 					IsPublic: pulumi.Bool(true),
/// 					Slaacs: linode.InterfaceVpcIpv6SlaacArray{
/// 						&linode.InterfaceVpcIpv6SlaacArgs{
/// 							Range: pulumi.String("auto"),
/// 						},
/// 					},
/// 					Ranges: linode.InterfaceVpcIpv6RangeArray{
/// 						&linode.InterfaceVpcIpv6RangeArgs{
/// 							Range: pulumi.String("auto"),
/// 						},
/// 					},
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
/// import com.pulumi.linode.Interface;
/// import com.pulumi.linode.InterfaceArgs;
/// import com.pulumi.linode.inputs.InterfaceVpcArgs;
/// import com.pulumi.linode.inputs.InterfaceVpcIpv6Args;
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
///         var vpc = new Interface("vpc", InterfaceArgs.builder()
///             .linodeId(my_instance.id())
///             .vpc(InterfaceVpcArgs.builder()
///                 .subnetId(12345)
///                 .ipv6(InterfaceVpcIpv6Args.builder()
///                     .isPublic(true)
///                     .slaacs(InterfaceVpcIpv6SlaacArgs.builder()
///                         .range("auto")
///                         .build())
///                     .ranges(InterfaceVpcIpv6RangeArgs.builder()
///                         .range("auto")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: linode:Interface
///     properties:
///       linodeId: ${["my-instance"].id}
///       vpc:
///         subnetId: 12345
///         ipv6:
///           isPublic: true
///           slaacs:
///             - range: auto
///           ranges:
///             - range: auto
/// ```
///
///
/// ### VLAN Interface Example
///
/// The following example shows how to create a VLAN interface.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const vlan = new linode.Interface("vlan", {
///     linodeId: web.id,
///     vlan: {
///         vlanLabel: "web-vlan",
///         ipamAddress: "192.168.200.5/24",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// vlan = linode.Interface("vlan",
///     linode_id=web["id"],
///     vlan={
///         "vlan_label": "web-vlan",
///         "ipam_address": "192.168.200.5/24",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vlan = new Linode.Interface("vlan", new()
///     {
///         LinodeId = web.Id,
///         Vlan = new Linode.Inputs.InterfaceVlanArgs
///         {
///             VlanLabel = "web-vlan",
///             IpamAddress = "192.168.200.5/24",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInterface(ctx, "vlan", &linode.InterfaceArgs{
/// 			LinodeId: pulumi.Any(web.Id),
/// 			Vlan: &linode.InterfaceVlanArgs{
/// 				VlanLabel:   pulumi.String("web-vlan"),
/// 				IpamAddress: pulumi.String("192.168.200.5/24"),
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
/// import com.pulumi.linode.Interface;
/// import com.pulumi.linode.InterfaceArgs;
/// import com.pulumi.linode.inputs.InterfaceVlanArgs;
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
///         var vlan = new Interface("vlan", InterfaceArgs.builder()
///             .linodeId(web.id())
///             .vlan(InterfaceVlanArgs.builder()
///                 .vlanLabel("web-vlan")
///                 .ipamAddress("192.168.200.5/24")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vlan:
///     type: linode:Interface
///     properties:
///       linodeId: ${web.id}
///       vlan:
///         vlanLabel: web-vlan
///         ipamAddress: 192.168.200.5/24
/// ```
///
///
/// ### Complete Example with Linode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instance = new linode.Instance("my-instance", {
///     label: "my-instance",
///     region: "us-mia",
///     type: "g6-standard-1",
///     interfaceGeneration: "linode",
/// });
/// const boot = new linode.InstanceDisk("boot", {
///     label: "boot",
///     linodeId: my_instance.id,
///     size: my_instance.specs.apply(specs => specs[0].disk),
///     image: "linode/debian12",
///     rootPass: "this-is-NOT-a-safe-password",
/// });
/// const _public = new linode.Interface("public", {
///     linodeId: my_instance.id,
///     "public": {
///         ipv4: {
///             addresses: [{
///                 address: "auto",
///                 primary: true,
///             }],
///         },
///         ipv6: {
///             ranges: [{
///                 range: "/64",
///             }],
///         },
///     },
/// });
/// const my_config = new linode.InstanceConfig("my-config", {
///     linodeId: my_instance.id,
///     label: "my-config",
///     devices: [{
///         deviceName: "sda",
///         diskId: boot.id,
///     }],
///     booted: true,
/// }, {
///     dependsOn: [_public],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my-instance",
///     label="my-instance",
///     region="us-mia",
///     type="g6-standard-1",
///     interface_generation="linode")
/// boot = linode.InstanceDisk("boot",
///     label="boot",
///     linode_id=my_instance.id,
///     size=my_instance.specs[0].disk,
///     image="linode/debian12",
///     root_pass="this-is-NOT-a-safe-password")
/// public = linode.Interface("public",
///     linode_id=my_instance.id,
///     public={
///         "ipv4": {
///             "addresses": [{
///                 "address": "auto",
///                 "primary": True,
///             }],
///         },
///         "ipv6": {
///             "ranges": [{
///                 "range": "/64",
///             }],
///         },
///     })
/// my_config = linode.InstanceConfig("my-config",
///     linode_id=my_instance.id,
///     label="my-config",
///     devices=[{
///         "deviceName": "sda",
///         "diskId": boot.id,
///     }],
///     booted=True,
///     opts = pulumi.ResourceOptions(depends_on=[public]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instance = new Linode.Instance("my-instance", new()
///     {
///         Label = "my-instance",
///         Region = "us-mia",
///         Type = "g6-standard-1",
///         InterfaceGeneration = "linode",
///     });
///
///     var boot = new Linode.InstanceDisk("boot", new()
///     {
///         Label = "boot",
///         LinodeId = my_instance.Id,
///         Size = my_instance.Specs.Apply(specs => specs[0].Disk),
///         Image = "linode/debian12",
///         RootPass = "this-is-NOT-a-safe-password",
///     });
///
///     var @public = new Linode.Interface("public", new()
///     {
///         LinodeId = my_instance.Id,
///         Public = new Linode.Inputs.InterfacePublicArgs
///         {
///             Ipv4 = new Linode.Inputs.InterfacePublicIpv4Args
///             {
///                 Addresses = new[]
///                 {
///                     new Linode.Inputs.InterfacePublicIpv4AddressArgs
///                     {
///                         Address = "auto",
///                         Primary = true,
///                     },
///                 },
///             },
///             Ipv6 = new Linode.Inputs.InterfacePublicIpv6Args
///             {
///                 Ranges = new[]
///                 {
///                     new Linode.Inputs.InterfacePublicIpv6RangeArgs
///                     {
///                         Range = "/64",
///                     },
///                 },
///             },
///         },
///     });
///
///     var my_config = new Linode.InstanceConfig("my-config", new()
///     {
///         LinodeId = my_instance.Id,
///         Label = "my-config",
///         Devices = new[]
///         {
///
///             {
///                 { "deviceName", "sda" },
///                 { "diskId", boot.Id },
///             },
///         },
///         Booted = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @public,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_instance, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:               pulumi.String("my-instance"),
/// 			Region:              pulumi.String("us-mia"),
/// 			Type:                pulumi.String("g6-standard-1"),
/// 			InterfaceGeneration: pulumi.String("linode"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		boot, err := linode.NewInstanceDisk(ctx, "boot", &linode.InstanceDiskArgs{
/// 			Label:    pulumi.String("boot"),
/// 			LinodeId: my_instance.ID(),
/// 			Size: pulumi.Int(my_instance.Specs.ApplyT(func(specs []linode.InstanceSpec) (*int, error) {
/// 				return &specs[0].Disk, nil
/// 			}).(pulumi.IntPtrOutput)),
/// 			Image:    pulumi.String("linode/debian12"),
/// 			RootPass: pulumi.String("this-is-NOT-a-safe-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		public, err := linode.NewInterface(ctx, "public", &linode.InterfaceArgs{
/// 			LinodeId: my_instance.ID(),
/// 			Public: &linode.InterfacePublicArgs{
/// 				Ipv4: &linode.InterfacePublicIpv4Args{
/// 					Addresses: linode.InterfacePublicIpv4AddressArray{
/// 						&linode.InterfacePublicIpv4AddressArgs{
/// 							Address: pulumi.String("auto"),
/// 							Primary: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				Ipv6: &linode.InterfacePublicIpv6Args{
/// 					Ranges: linode.InterfacePublicIpv6RangeArray{
/// 						&linode.InterfacePublicIpv6RangeArgs{
/// 							Range: pulumi.String("/64"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceConfig(ctx, "my-config", &linode.InstanceConfigArgs{
/// 			LinodeId: my_instance.ID(),
/// 			Label:    pulumi.String("my-config"),
/// 			Devices: linode.InstanceConfigDevicesArgs{
/// 				map[string]interface{}{
/// 					"deviceName": "sda",
/// 					"diskId":     boot.ID(),
/// 				},
/// 			},
/// 			Booted: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			public,
/// 		}))
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.InstanceDisk;
/// import com.pulumi.linode.InstanceDiskArgs;
/// import com.pulumi.linode.Interface;
/// import com.pulumi.linode.InterfaceArgs;
/// import com.pulumi.linode.inputs.InterfacePublicArgs;
/// import com.pulumi.linode.inputs.InterfacePublicIpv4Args;
/// import com.pulumi.linode.inputs.InterfacePublicIpv6Args;
/// import com.pulumi.linode.InstanceConfig;
/// import com.pulumi.linode.InstanceConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var my_instance = new Instance("my-instance", InstanceArgs.builder()
///             .label("my-instance")
///             .region("us-mia")
///             .type("g6-standard-1")
///             .interfaceGeneration("linode")
///             .build());
///
///         var boot = new InstanceDisk("boot", InstanceDiskArgs.builder()
///             .label("boot")
///             .linodeId(my_instance.id())
///             .size(my_instance.specs().applyValue(_specs -> _specs[0].disk()))
///             .image("linode/debian12")
///             .rootPass("this-is-NOT-a-safe-password")
///             .build());
///
///         var public_ = new Interface("public", InterfaceArgs.builder()
///             .linodeId(my_instance.id())
///             .public_(InterfacePublicArgs.builder()
///                 .ipv4(InterfacePublicIpv4Args.builder()
///                     .addresses(InterfacePublicIpv4AddressArgs.builder()
///                         .address("auto")
///                         .primary(true)
///                         .build())
///                     .build())
///                 .ipv6(InterfacePublicIpv6Args.builder()
///                     .ranges(InterfacePublicIpv6RangeArgs.builder()
///                         .range("/64")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var my_config = new InstanceConfig("my-config", InstanceConfigArgs.builder()
///             .linodeId(my_instance.id())
///             .label("my-config")
///             .devices(InstanceConfigDevicesArgs.builder()
///                 .deviceName("sda")
///                 .diskId(boot.id())
///                 .build())
///             .booted(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(public_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-instance:
///     type: linode:Instance
///     properties:
///       label: my-instance
///       region: us-mia
///       type: g6-standard-1
///       interfaceGeneration: linode
///   my-config:
///     type: linode:InstanceConfig
///     properties:
///       linodeId: ${["my-instance"].id}
///       label: my-config
///       devices:
///         - deviceName: sda
///           diskId: ${boot.id}
///       booted: true
///     options:
///       dependsOn:
///         - ${public}
///   boot:
///     type: linode:InstanceDisk
///     properties:
///       label: boot
///       linodeId: ${["my-instance"].id}
///       size: ${["my-instance"].specs[0].disk}
///       image: linode/debian12
///       rootPass: this-is-NOT-a-safe-password
///   public:
///     type: linode:Interface
///     properties:
///       linodeId: ${["my-instance"].id}
///       public:
///         ipv4:
///           addresses:
///             - address: auto
///               primary: true
///         ipv6:
///           ranges:
///             - range: /64
/// ```
///
///
/// ## Notes
///
/// * Each Linode instance can have up to 3 network interfaces.
/// * VLAN interfaces cannot be updated after creation and require recreation.
/// * VPC subnet IDs cannot be changed after interface creation.
/// * Firewall IDs are only supported for public and VPC interfaces, not for VLAN interfaces.
/// * When configuring multiple interfaces, use the `default_route` setting to specify which interface should handle default routing.
///
/// ## Import
///
/// Interfaces can be imported using a Linode ID followed by an Interface ID, separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/interface:Interface example 12345,67890
/// ```
class Interface extends pulumi.CustomResource {
  /// Indicates if the interface serves as the default route when multiple interfaces are eligible for this role.
  late final pulumi.Output<InterfaceDefaultRoute> defaultRoute;
  /// The ID of an enabled firewall to secure a VPC or public interface. Not allowed for VLAN interfaces.
  late final pulumi.Output<int?> firewallId;
  /// The ID of the Linode to assign this interface to.
  late final pulumi.Output<int> linodeId;
  /// Nested attributes object for a Linode public interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  late final pulumi.Output<InterfacePublic?> public;
  /// Nested attributes object for a Linode VLAN interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  late final pulumi.Output<InterfaceVlan?> vlan;
  /// Nested attributes object for a Linode VPC interface. Exactly one of `public`, `vlan`, or `vpc` must be specified.
  late final pulumi.Output<InterfaceVpc?> vpc;

  /// Creates a new [Interface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Interface]. {@macro pulumi_index_interface_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Interface(
    String name, {
    InterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/interface:Interface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultRoute = registerOutput<InterfaceDefaultRoute>('defaultRoute');
    this.firewallId = registerOutput<int?>('firewallId');
    this.linodeId = registerOutput<int>('linodeId');
    this.public = registerOutput<InterfacePublic?>('public');
    this.vlan = registerOutput<InterfaceVlan?>('vlan');
    this.vpc = registerOutput<InterfaceVpc?>('vpc');
  }

  /// Gets an existing [Interface] resource's state with the given [name] and [id].
  static Interface get(
    String name,
    pulumi.Input<String> id, {
    InterfaceState? state,
  }) {
    return Interface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Interface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/interface:Interface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultRoute = registerOutput<InterfaceDefaultRoute>('defaultRoute');
    this.firewallId = registerOutput<int?>('firewallId');
    this.linodeId = registerOutput<int>('linodeId');
    this.public = registerOutput<InterfacePublic?>('public');
    this.vlan = registerOutput<InterfaceVlan?>('vlan');
    this.vpc = registerOutput<InterfaceVpc?>('vpc');
  }
}
