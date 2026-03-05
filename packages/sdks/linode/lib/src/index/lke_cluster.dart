import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_args.dart';
import 'lke_cluster_control_plane.dart';
import 'lke_cluster_state.dart';

/// Manages an LKE cluster.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-lke-cluster).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-central",
///     tags: ["prod"],
///     pools: [{
///         type: "g6-standard-2",
///         count: 3,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-central",
///     tags=["prod"],
///     pools=[{
///         "type": "g6-standard-2",
///         "count": 3,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-central",
///         Tags = new[]
///         {
///             "prod",
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 3,
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-central"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-2"),
/// 					Count: pulumi.Int(3),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-central")
///             .tags("prod")
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-2")
///                 .count(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-central
///       tags:
///         - prod
///       pools:
///         - type: g6-standard-2
///           count: 3
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test = new linode.LkeCluster("test", {
///     label: "lke-e-cluster",
///     region: "us-lax",
///     k8sVersion: "v1.31.8+lke5",
///     tags: ["test"],
///     tier: "enterprise",
///     pools: [{
///         type: "g7-premium-2",
///         count: 3,
///         tags: ["test"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.LkeCluster("test",
///     label="lke-e-cluster",
///     region="us-lax",
///     k8s_version="v1.31.8+lke5",
///     tags=["test"],
///     tier="enterprise",
///     pools=[{
///         "type": "g7-premium-2",
///         "count": 3,
///         "tags": ["test"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Linode.LkeCluster("test", new()
///     {
///         Label = "lke-e-cluster",
///         Region = "us-lax",
///         K8sVersion = "v1.31.8+lke5",
///         Tags = new[]
///         {
///             "test",
///         },
///         Tier = "enterprise",
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g7-premium-2",
///                 Count = 3,
///                 Tags = new[]
///                 {
///                     "test",
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
/// 		_, err := linode.NewLkeCluster(ctx, "test", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("lke-e-cluster"),
/// 			Region:     pulumi.String("us-lax"),
/// 			K8sVersion: pulumi.String("v1.31.8+lke5"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("test"),
/// 			},
/// 			Tier: pulumi.String("enterprise"),
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g7-premium-2"),
/// 					Count: pulumi.Int(3),
/// 					Tags: pulumi.StringArray{
/// 						pulumi.String("test"),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var test = new LkeCluster("test", LkeClusterArgs.builder()
///             .label("lke-e-cluster")
///             .region("us-lax")
///             .k8sVersion("v1.31.8+lke5")
///             .tags("test")
///             .tier("enterprise")
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g7-premium-2")
///                 .count(3)
///                 .tags("test")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: linode:LkeCluster
///     properties:
///       label: lke-e-cluster
///       region: us-lax
///       k8sVersion: v1.31.8+lke5
///       tags:
///         - test
///       tier: enterprise
///       pools:
///         - type: g7-premium-2
///           count: 3
///           tags:
///             - test
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-central",
///     tags: ["prod"],
///     pools: [{
///         type: "g6-standard-2",
///         autoscaler: {
///             min: 3,
///             max: 10,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-central",
///     tags=["prod"],
///     pools=[{
///         "type": "g6-standard-2",
///         "autoscaler": {
///             "min": 3,
///             "max": 10,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-central",
///         Tags = new[]
///         {
///             "prod",
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Autoscaler = new Linode.Inputs.LkeClusterPoolAutoscalerArgs
///                 {
///                     Min = 3,
///                     Max = 10,
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-central"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type: pulumi.String("g6-standard-2"),
/// 					Autoscaler: &linode.LkeClusterPoolAutoscalerArgs{
/// 						Min: pulumi.Int(3),
/// 						Max: pulumi.Int(10),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolAutoscalerArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-central")
///             .tags("prod")
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-2")
///                 .autoscaler(LkeClusterPoolAutoscalerArgs.builder()
///                     .min(3)
///                     .max(10)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-central
///       tags:
///         - prod
///       pools:
///         - type: g6-standard-2
///           autoscaler:
///             min: 3
///             max: 10
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test = new linode.LkeCluster("test", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-central",
///     tags: ["prod"],
///     controlPlane: {
///         highAvailability: true,
///         acl: {
///             enabled: true,
///             addresses: [{
///                 ipv4s: ["0.0.0.0/0"],
///                 ipv6s: ["2001:db8::/32"],
///             }],
///         },
///     },
///     pools: [{
///         type: "g6-standard-2",
///         count: 1,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.LkeCluster("test",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-central",
///     tags=["prod"],
///     control_plane={
///         "high_availability": True,
///         "acl": {
///             "enabled": True,
///             "addresses": [{
///                 "ipv4s": ["0.0.0.0/0"],
///                 "ipv6s": ["2001:db8::/32"],
///             }],
///         },
///     },
///     pools=[{
///         "type": "g6-standard-2",
///         "count": 1,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Linode.LkeCluster("test", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-central",
///         Tags = new[]
///         {
///             "prod",
///         },
///         ControlPlane = new Linode.Inputs.LkeClusterControlPlaneArgs
///         {
///             HighAvailability = true,
///             Acl = new Linode.Inputs.LkeClusterControlPlaneAclArgs
///             {
///                 Enabled = true,
///                 Addresses = new[]
///                 {
///                     new Linode.Inputs.LkeClusterControlPlaneAclAddressArgs
///                     {
///                         Ipv4s = new[]
///                         {
///                             "0.0.0.0/0",
///                         },
///                         Ipv6s = new[]
///                         {
///                             "2001:db8::/32",
///                         },
///                     },
///                 },
///             },
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 1,
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
/// 		_, err := linode.NewLkeCluster(ctx, "test", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-central"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 			ControlPlane: &linode.LkeClusterControlPlaneArgs{
/// 				HighAvailability: pulumi.Bool(true),
/// 				Acl: &linode.LkeClusterControlPlaneAclArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Addresses: linode.LkeClusterControlPlaneAclAddressArray{
/// 						&linode.LkeClusterControlPlaneAclAddressArgs{
/// 							Ipv4s: pulumi.StringArray{
/// 								pulumi.String("0.0.0.0/0"),
/// 							},
/// 							Ipv6s: pulumi.StringArray{
/// 								pulumi.String("2001:db8::/32"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-2"),
/// 					Count: pulumi.Int(1),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterControlPlaneArgs;
/// import com.pulumi.linode.inputs.LkeClusterControlPlaneAclArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var test = new LkeCluster("test", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-central")
///             .tags("prod")
///             .controlPlane(LkeClusterControlPlaneArgs.builder()
///                 .highAvailability(true)
///                 .acl(LkeClusterControlPlaneAclArgs.builder()
///                     .enabled(true)
///                     .addresses(LkeClusterControlPlaneAclAddressArgs.builder()
///                         .ipv4s("0.0.0.0/0")
///                         .ipv6s("2001:db8::/32")
///                         .build())
///                     .build())
///                 .build())
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-2")
///                 .count(1)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-central
///       tags:
///         - prod
///       controlPlane:
///         highAvailability: true
///         acl:
///           enabled: true
///           addresses:
///             - ipv4s:
///                 - 0.0.0.0/0
///               ipv6s:
///                 - 2001:db8::/32
///       pools:
///         - type: g6-standard-2
///           count: 1
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-central",
///     tags: ["prod"],
///     pools: [
///         {
///             type: "g6-standard-2",
///             count: 2,
///             label: "db-pool",
///         },
///         {
///             type: "g6-standard-1",
///             count: 3,
///             label: "app-pool",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-central",
///     tags=["prod"],
///     pools=[
///         {
///             "type": "g6-standard-2",
///             "count": 2,
///             "label": "db-pool",
///         },
///         {
///             "type": "g6-standard-1",
///             "count": 3,
///             "label": "app-pool",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-central",
///         Tags = new[]
///         {
///             "prod",
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 2,
///                 Label = "db-pool",
///             },
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-1",
///                 Count = 3,
///                 Label = "app-pool",
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-central"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-2"),
/// 					Count: pulumi.Int(2),
/// 					Label: pulumi.String("db-pool"),
/// 				},
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-1"),
/// 					Count: pulumi.Int(3),
/// 					Label: pulumi.String("app-pool"),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-central")
///             .tags("prod")
///             .pools(
///                 LkeClusterPoolArgs.builder()
///                     .type("g6-standard-2")
///                     .count(2)
///                     .label("db-pool")
///                     .build(),
///                 LkeClusterPoolArgs.builder()
///                     .type("g6-standard-1")
///                     .count(3)
///                     .label("app-pool")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-central
///       tags:
///         - prod
///       pools:
///         - type: g6-standard-2
///           count: 2
///           label: db-pool
///         - type: g6-standard-1
///           count: 3
///           label: app-pool
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-central",
///     tags: ["prod"],
///     pools: [{
///         type: "g6-standard-2",
///         count: 2,
///         label: "db-pool",
///         firewallId: 12345,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-central",
///     tags=["prod"],
///     pools=[{
///         "type": "g6-standard-2",
///         "count": 2,
///         "label": "db-pool",
///         "firewall_id": 12345,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-central",
///         Tags = new[]
///         {
///             "prod",
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 2,
///                 Label = "db-pool",
///                 FirewallId = 12345,
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-central"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:       pulumi.String("g6-standard-2"),
/// 					Count:      pulumi.Int(2),
/// 					Label:      pulumi.String("db-pool"),
/// 					FirewallId: pulumi.Int(12345),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-central")
///             .tags("prod")
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-2")
///                 .count(2)
///                 .label("db-pool")
///                 .firewallId(12345)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-central
///       tags:
///         - prod
///       pools:
///         - type: g6-standard-2
///           count: 2
///           label: db-pool
///           firewallId: 12345
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-central",
///     tags: ["prod"],
///     pools: [
///         {
///             type: "g6-standard-2",
///             count: 2,
///             labels: {
///                 role: "database",
///                 environment: "production",
///             },
///         },
///         {
///             type: "g6-standard-1",
///             count: 3,
///             labels: {
///                 role: "application",
///                 environment: "production",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-central",
///     tags=["prod"],
///     pools=[
///         {
///             "type": "g6-standard-2",
///             "count": 2,
///             "labels": {
///                 "role": "database",
///                 "environment": "production",
///             },
///         },
///         {
///             "type": "g6-standard-1",
///             "count": 3,
///             "labels": {
///                 "role": "application",
///                 "environment": "production",
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-central",
///         Tags = new[]
///         {
///             "prod",
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 2,
///                 Labels =
///                 {
///                     { "role", "database" },
///                     { "environment", "production" },
///                 },
///             },
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-1",
///                 Count = 3,
///                 Labels =
///                 {
///                     { "role", "application" },
///                     { "environment", "production" },
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-central"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-2"),
/// 					Count: pulumi.Int(2),
/// 					Labels: pulumi.StringMap{
/// 						"role":        pulumi.String("database"),
/// 						"environment": pulumi.String("production"),
/// 					},
/// 				},
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-1"),
/// 					Count: pulumi.Int(3),
/// 					Labels: pulumi.StringMap{
/// 						"role":        pulumi.String("application"),
/// 						"environment": pulumi.String("production"),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-central")
///             .tags("prod")
///             .pools(
///                 LkeClusterPoolArgs.builder()
///                     .type("g6-standard-2")
///                     .count(2)
///                     .labels(Map.ofEntries(
///                         Map.entry("role", "database"),
///                         Map.entry("environment", "production")
///                     ))
///                     .build(),
///                 LkeClusterPoolArgs.builder()
///                     .type("g6-standard-1")
///                     .count(3)
///                     .labels(Map.ofEntries(
///                         Map.entry("role", "application"),
///                         Map.entry("environment", "production")
///                     ))
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-central
///       tags:
///         - prod
///       pools:
///         - type: g6-standard-2
///           count: 2
///           labels:
///             role: database
///             environment: production
///         - type: g6-standard-1
///           count: 3
///           labels:
///             role: application
///             environment: production
/// ```
///
///
/// ## Nested Node Pool Caveats
///
/// Due to limitations in the provider there are some minor caveats that may cause unexpected behavior when updating
/// nested `pool` blocks in this resource.
/// Primarily, the order of `pool` blocks is significant because the ID of each pool is resolved from
/// the Terraform state.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {pools: [
///     {
///         type: "g6-standard-1",
///         count: 2,
///     },
///     {
///         type: "g6-standard-2",
///         count: 3,
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster", pools=[
///     {
///         "type": "g6-standard-1",
///         "count": 2,
///     },
///     {
///         "type": "g6-standard-2",
///         "count": 3,
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-1",
///                 Count = 2,
///             },
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 3,
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-1"),
/// 					Count: pulumi.Int(2),
/// 				},
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-2"),
/// 					Count: pulumi.Int(3),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .pools(
///                 LkeClusterPoolArgs.builder()
///                     .type("g6-standard-1")
///                     .count(2)
///                     .build(),
///                 LkeClusterPoolArgs.builder()
///                     .type("g6-standard-2")
///                     .count(3)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       pools:
///         - type: g6-standard-1
///           count: 2
///         - type: g6-standard-2
///           count: 3
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = new linode.LkeCluster("my-cluster", {pools: [{
///     type: "g6-standard-2",
///     count: 3,
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.LkeCluster("my-cluster", pools=[{
///     "type": "g6-standard-2",
///     "count": 3,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-2",
///                 Count = 3,
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
/// 		_, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-2"),
/// 					Count: pulumi.Int(3),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
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
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-2")
///                 .count(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       pools:
///         - type: g6-standard-2
///           count: 3
/// ```
///
/// ## Externally Managed Node Pools
///
/// By default, the `linode.LkeCluster` resource will account for all node pools under the corresponding cluster, meaning
/// any node pools created externally or managed by other resources will be removed on subsequent applies.
///
/// To signal the provider to ignore externally managed node pools, the `external_pool_tags` attribute can be defined with
/// tags matching a tag on an externally managed node pool.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const externalPoolTag = "external";
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-mia",
///     externalPoolTags: [externalPoolTag],
///     pools: [{
///         type: "g6-standard-1",
///         count: 1,
///     }],
/// });
/// const my_pool = new linode.LkeNodePool("my-pool", {
///     clusterId: my_cluster.id,
///     type: "g6-standard-2",
///     nodeCount: 3,
///     tags: [externalPoolTag],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// external_pool_tag = "external"
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-mia",
///     external_pool_tags=[external_pool_tag],
///     pools=[{
///         "type": "g6-standard-1",
///         "count": 1,
///     }])
/// my_pool = linode.LkeNodePool("my-pool",
///     cluster_id=my_cluster.id,
///     type="g6-standard-2",
///     node_count=3,
///     tags=[external_pool_tag])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var externalPoolTag = "external";
///
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-mia",
///         ExternalPoolTags = new[]
///         {
///             externalPoolTag,
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-1",
///                 Count = 1,
///             },
///         },
///     });
///
///     var my_pool = new Linode.LkeNodePool("my-pool", new()
///     {
///         ClusterId = my_cluster.Id,
///         Type = "g6-standard-2",
///         NodeCount = 3,
///         Tags = new[]
///         {
///             externalPoolTag,
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
/// 		externalPoolTag := "external"
/// 		my_cluster, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-mia"),
/// 			ExternalPoolTags: pulumi.StringArray{
/// 				pulumi.String(externalPoolTag),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-1"),
/// 					Count: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewLkeNodePool(ctx, "my-pool", &linode.LkeNodePoolArgs{
/// 			ClusterId: my_cluster.ID(),
/// 			Type:      pulumi.String("g6-standard-2"),
/// 			NodeCount: pulumi.Int(3),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String(externalPoolTag),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
/// import com.pulumi.linode.LkeNodePool;
/// import com.pulumi.linode.LkeNodePoolArgs;
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
///         final var externalPoolTag = "external";
///
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-mia")
///             .externalPoolTags(externalPoolTag)
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-1")
///                 .count(1)
///                 .build())
///             .build());
///
///         var my_pool = new LkeNodePool("my-pool", LkeNodePoolArgs.builder()
///             .clusterId(my_cluster.id())
///             .type("g6-standard-2")
///             .nodeCount(3)
///             .tags(externalPoolTag)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-mia
///       externalPoolTags:
///         - ${externalPoolTag}
///       pools:
///         - type: g6-standard-1
///           count: 1
///   my-pool:
///     type: linode:LkeNodePool
///     properties:
///       clusterId: ${["my-cluster"].id}
///       type: g6-standard-2
///       nodeCount: 3
///       tags:
///         - ${externalPoolTag}
/// variables:
///   externalPoolTag: external
/// ```
///
///
/// ## Import
///
/// LKE Clusters can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/lkeCluster:LkeCluster my_cluster 12345
/// ```
class LkeCluster extends pulumi.CustomResource {
  /// The endpoints for the Kubernetes API server.
  late final pulumi.Output<List<String>> apiEndpoints;

  /// Enables the App Platform Layer
  late final pulumi.Output<bool> aplEnabled;

  /// Defines settings for the Kubernetes Control Plane.
  late final pulumi.Output<LkeClusterControlPlane> controlPlane;

  /// The Kubernetes Dashboard access URL for this cluster. LKE Enterprise does not have a dashboard URL.
  late final pulumi.Output<String> dashboardUrl;

  /// A set of node pool tags to ignore when planning and applying this cluster. This prevents externally managed node pools from being deleted or unintentionally updated on subsequent applies. See Externally Managed Node Pools for more details.
  late final pulumi.Output<List<String>?> externalPoolTags;

  /// The desired Kubernetes version for this Kubernetes cluster in the format of `major.minor` (e.g. `1.21`), and the latest supported patch version will be deployed.
  late final pulumi.Output<String> k8sVersion;

  /// The base64 encoded kubeconfig for the Kubernetes cluster.
  late final pulumi.Output<String> kubeconfig;

  /// This Kubernetes cluster's unique label.
  late final pulumi.Output<String> label;

  /// Additional nested attributes:
  late final pulumi.Output<List<Map<String, dynamic>>> pools;

  /// This Kubernetes cluster's location.
  ///
  /// * `pool` - (Required) The Node Pool specifications for the Kubernetes cluster. At least one Node Pool is required.
  ///
  /// * `control_plane` (Optional) Defines settings for the Kubernetes Control Plane.
  late final pulumi.Output<String> region;

  /// The networking stack type of the Kubernetes cluster.
  late final pulumi.Output<String> stackType;

  /// The status of the node. (`ready`, `not_ready`)
  late final pulumi.Output<String> status;

  /// The ID of the VPC subnet to use for the Kubernetes cluster. This subnet must be dual stack (IPv4 and IPv6 should both be enabled). **NOTE: This field may not be available for all users and is only accepted and populated when api_version is set to `v4beta`.**
  late final pulumi.Output<int> subnetId;

  /// An array of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  late final pulumi.Output<List<String>> tags;

  /// The desired Kubernetes tier. **NOTE: This field may not be available to all users and is only accepted and populated when api_version is set to `v4beta`.**
  late final pulumi.Output<String> tier;

  /// The ID of the VPC to use for the Kubernetes cluster.
  late final pulumi.Output<int> vpcId;

  /// Creates a new [LkeCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LkeCluster]. {@macro pulumi_index_lke_cluster_lke_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LkeCluster(
    String name, {
    LkeClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/lkeCluster:LkeCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiEndpoints = registerOutput<List<String>>('apiEndpoints');
    aplEnabled = registerOutput<bool>('aplEnabled');
    controlPlane = registerOutput<LkeClusterControlPlane>(
      'controlPlane',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LkeClusterControlPlane.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dashboardUrl = registerOutput<String>('dashboardUrl');
    externalPoolTags = registerOutput<List<String>?>('externalPoolTags');
    k8sVersion = registerOutput<String>('k8sVersion');
    kubeconfig = registerOutput<String>('kubeconfig');
    label = registerOutput<String>('label');
    pools = registerOutput<List<Map<String, dynamic>>>('pools');
    region = registerOutput<String>('region');
    stackType = registerOutput<String>('stackType');
    status = registerOutput<String>('status');
    subnetId = registerOutput<int>('subnetId');
    tags = registerOutput<List<String>>('tags');
    tier = registerOutput<String>('tier');
    vpcId = registerOutput<int>('vpcId');
  }

  /// Gets an existing [LkeCluster] resource's state with the given [name] and [id].
  static LkeCluster get(
    String name,
    pulumi.Input<String> id, {
    LkeClusterState? state,
  }) {
    return LkeCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LkeCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/lkeCluster:LkeCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiEndpoints = registerOutput<List<String>>('apiEndpoints');
    aplEnabled = registerOutput<bool>('aplEnabled');
    controlPlane = registerOutput<LkeClusterControlPlane>(
      'controlPlane',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LkeClusterControlPlane.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dashboardUrl = registerOutput<String>('dashboardUrl');
    externalPoolTags = registerOutput<List<String>?>('externalPoolTags');
    k8sVersion = registerOutput<String>('k8sVersion');
    kubeconfig = registerOutput<String>('kubeconfig');
    label = registerOutput<String>('label');
    pools = registerOutput<List<Map<String, dynamic>>>('pools');
    region = registerOutput<String>('region');
    stackType = registerOutput<String>('stackType');
    status = registerOutput<String>('status');
    subnetId = registerOutput<int>('subnetId');
    tags = registerOutput<List<String>>('tags');
    tier = registerOutput<String>('tier');
    vpcId = registerOutput<int>('vpcId');
  }
}
