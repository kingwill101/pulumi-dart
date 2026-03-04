import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flavor_v2_args.dart';
import 'get_flavor_v2_result.dart';
import 'get_flavorprofile_v2_args.dart';
import 'get_flavorprofile_v2_result.dart';
import 'get_lb_flavor_deprecated_args.dart';
import 'get_lb_flavor_deprecated_result.dart';
import 'get_listener_v2_args.dart';
import 'get_listener_v2_result.dart';
import 'get_loadbalancer_v2_args.dart';
import 'get_loadbalancer_v2_result.dart';
import 'get_pool_v2_args.dart';
import 'get_pool_v2_result.dart';

/// Use this data source to get the ID of an OpenStack Load Balancer flavor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const flavor1 = openstack.loadbalancer.getFlavorV2({
///     name: "flavor_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// flavor1 = openstack.loadbalancer.get_flavor_v2(name="flavor_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flavor1 = OpenStack.LoadBalancer.GetFlavorV2.Invoke(new()
///     {
///         Name = "flavor_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.LookupFlavorV2(ctx, &loadbalancer.LookupFlavorV2Args{
/// 			Name: pulumi.StringRef("flavor_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.loadbalancer.LoadbalancerFunctions;
/// import com.pulumi.openstack.loadbalancer.inputs.GetFlavorV2Args;
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
///         final var flavor1 = LoadbalancerFunctions.getFlavorV2(GetFlavorV2Args.builder()
///             .name("flavor_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   flavor1:
///     fn::invoke:
///       function: openstack:loadbalancer:getFlavorV2
///       arguments:
///         name: flavor_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_loadbalancer_get_flavor_v2_get_flavor_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlavorV2Result> getFlavorV2(
  GetFlavorV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:loadbalancer/getFlavorV2:getFlavorV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlavorV2Result.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack Load Balancer flavorprofile.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const fp1 = openstack.loadbalancer.getFlavorprofileV2({
///     name: "flavorprofile_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// fp1 = openstack.loadbalancer.get_flavorprofile_v2(name="flavorprofile_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fp1 = OpenStack.LoadBalancer.GetFlavorprofileV2.Invoke(new()
///     {
///         Name = "flavorprofile_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.LookupFlavorprofileV2(ctx, &loadbalancer.LookupFlavorprofileV2Args{
/// 			Name: pulumi.StringRef("flavorprofile_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.loadbalancer.LoadbalancerFunctions;
/// import com.pulumi.openstack.loadbalancer.inputs.GetFlavorprofileV2Args;
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
///         final var fp1 = LoadbalancerFunctions.getFlavorprofileV2(GetFlavorprofileV2Args.builder()
///             .name("flavorprofile_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fp1:
///     fn::invoke:
///       function: openstack:loadbalancer:getFlavorprofileV2
///       arguments:
///         name: flavorprofile_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_loadbalancer_get_flavorprofile_v2_get_flavorprofile_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlavorprofileV2Result> getFlavorprofileV2(
  GetFlavorprofileV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:loadbalancer/getFlavorprofileV2:getFlavorprofileV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlavorprofileV2Result.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack Load Balancer flavor.
///
/// &gt; **Note:** This data source is deprecated, please use `openstack.loadbalancer.FlavorV2` instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const flavor1 = openstack.loadbalancer.getLbFlavorDeprecated({
///     name: "flavor_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// flavor1 = openstack.loadbalancer.get_lb_flavor_deprecated(name="flavor_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flavor1 = OpenStack.LoadBalancer.GetLbFlavorDeprecated.Invoke(new()
///     {
///         Name = "flavor_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.GetLbFlavorDeprecated(ctx, &loadbalancer.GetLbFlavorDeprecatedArgs{
/// 			Name: pulumi.StringRef("flavor_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.loadbalancer.LoadbalancerFunctions;
/// import com.pulumi.openstack.loadbalancer.inputs.GetLbFlavorDeprecatedArgs;
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
///         final var flavor1 = LoadbalancerFunctions.getLbFlavorDeprecated(GetLbFlavorDeprecatedArgs.builder()
///             .name("flavor_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   flavor1:
///     fn::invoke:
///       function: openstack:loadbalancer:getLbFlavorDeprecated
///       arguments:
///         name: flavor_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_loadbalancer_get_lb_flavor_deprecated_get_lb_flavor_deprecated_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLbFlavorDeprecatedResult> getLbFlavorDeprecated(
  GetLbFlavorDeprecatedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:loadbalancer/getLbFlavorDeprecated:getLbFlavorDeprecated',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbFlavorDeprecatedResult.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack Load Balancer listener.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const listener1 = openstack.loadbalancer.getListenerV2({
///     name: "listener_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// listener1 = openstack.loadbalancer.get_listener_v2(name="listener_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var listener1 = OpenStack.LoadBalancer.GetListenerV2.Invoke(new()
///     {
///         Name = "listener_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.GetListenerV2(ctx, &loadbalancer.GetListenerV2Args{
/// 			Name: pulumi.StringRef("listener_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.loadbalancer.LoadbalancerFunctions;
/// import com.pulumi.openstack.loadbalancer.inputs.GetListenerV2Args;
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
///         final var listener1 = LoadbalancerFunctions.getListenerV2(GetListenerV2Args.builder()
///             .name("listener_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   listener1:
///     fn::invoke:
///       function: openstack:loadbalancer:getListenerV2
///       arguments:
///         name: listener_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_loadbalancer_get_listener_v2_get_listener_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenerV2Result> getListenerV2(
  GetListenerV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:loadbalancer/getListenerV2:getListenerV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerV2Result.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const loadbalancer1 = openstack.loadbalancer.getLoadbalancerV2({
///     name: "loadbalancer_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// loadbalancer1 = openstack.loadbalancer.get_loadbalancer_v2(name="loadbalancer_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadbalancer1 = OpenStack.LoadBalancer.GetLoadbalancerV2.Invoke(new()
///     {
///         Name = "loadbalancer_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.GetLoadbalancerV2(ctx, &loadbalancer.GetLoadbalancerV2Args{
/// 			Name: pulumi.StringRef("loadbalancer_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.loadbalancer.LoadbalancerFunctions;
/// import com.pulumi.openstack.loadbalancer.inputs.GetLoadbalancerV2Args;
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
///         final var loadbalancer1 = LoadbalancerFunctions.getLoadbalancerV2(GetLoadbalancerV2Args.builder()
///             .name("loadbalancer_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   loadbalancer1:
///     fn::invoke:
///       function: openstack:loadbalancer:getLoadbalancerV2
///       arguments:
///         name: loadbalancer_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_loadbalancer_get_loadbalancer_v2_get_loadbalancer_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadbalancerV2Result> getLoadbalancerV2(
  GetLoadbalancerV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:loadbalancer/getLoadbalancerV2:getLoadbalancerV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadbalancerV2Result.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack Load Balancer pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const pool1 = openstack.loadbalancer.getPoolV2({
///     name: "pool_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// pool1 = openstack.loadbalancer.get_pool_v2(name="pool_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool1 = OpenStack.LoadBalancer.GetPoolV2.Invoke(new()
///     {
///         Name = "pool_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.GetPoolV2(ctx, &loadbalancer.GetPoolV2Args{
/// 			Name: pulumi.StringRef("pool_1"),
/// 		}, nil)
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
/// import com.pulumi.openstack.loadbalancer.LoadbalancerFunctions;
/// import com.pulumi.openstack.loadbalancer.inputs.GetPoolV2Args;
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
///         final var pool1 = LoadbalancerFunctions.getPoolV2(GetPoolV2Args.builder()
///             .name("pool_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   pool1:
///     fn::invoke:
///       function: openstack:loadbalancer:getPoolV2
///       arguments:
///         name: pool_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_loadbalancer_get_pool_v2_get_pool_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolV2Result> getPoolV2(
  GetPoolV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:loadbalancer/getPoolV2:getPoolV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolV2Result.fromMap(result);
}
