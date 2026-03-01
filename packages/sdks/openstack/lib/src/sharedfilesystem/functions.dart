import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_availbility_zones_args.dart';
import 'get_availbility_zones_result.dart';
import 'get_share_args.dart';
import 'get_share_network_args.dart';
import 'get_share_network_result.dart';
import 'get_share_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// Use this data source to get a list of Shared File System availability zones
/// from OpenStack
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const zones = openstack.sharedfilesystem.getAvailbilityZones({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// zones = openstack.sharedfilesystem.get_availbility_zones()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zones = OpenStack.SharedFileSystem.GetAvailbilityZones.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sharedfilesystem.GetAvailbilityZones(ctx, &sharedfilesystem.GetAvailbilityZonesArgs{}, nil)
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
/// import com.pulumi.openstack.sharedfilesystem.SharedfilesystemFunctions;
/// import com.pulumi.openstack.sharedfilesystem.inputs.GetAvailbilityZonesArgs;
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
///         final var zones = SharedfilesystemFunctions.getAvailbilityZones(GetAvailbilityZonesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zones:
///     fn::invoke:
///       function: openstack:sharedfilesystem:getAvailbilityZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sharedfilesystem_get_availbility_zones_get_availbility_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailbilityZonesResult> getAvailbilityZones(
  GetAvailbilityZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:sharedfilesystem/getAvailbilityZones:getAvailbilityZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailbilityZonesResult.fromMap(result);
}

/// Use this data source to get the ID of an available Shared File System share.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const share1 = openstack.sharedfilesystem.getShare({
///     name: "share_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// share1 = openstack.sharedfilesystem.get_share(name="share_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var share1 = OpenStack.SharedFileSystem.GetShare.Invoke(new()
///     {
///         Name = "share_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sharedfilesystem.LookupShare(ctx, &sharedfilesystem.LookupShareArgs{
/// 			Name: pulumi.StringRef("share_1"),
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
/// import com.pulumi.openstack.sharedfilesystem.SharedfilesystemFunctions;
/// import com.pulumi.openstack.sharedfilesystem.inputs.GetShareArgs;
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
///         final var share1 = SharedfilesystemFunctions.getShare(GetShareArgs.builder()
///             .name("share_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   share1:
///     fn::invoke:
///       function: openstack:sharedfilesystem:getShare
///       arguments:
///         name: share_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sharedfilesystem_get_share_get_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:sharedfilesystem/getShare:getShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}

/// Use this data source to get the ID of an available Shared File System share network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const sharenetwork1 = openstack.sharedfilesystem.getShareNetwork({
///     name: "sharenetwork_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// sharenetwork1 = openstack.sharedfilesystem.get_share_network(name="sharenetwork_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sharenetwork1 = OpenStack.SharedFileSystem.GetShareNetwork.Invoke(new()
///     {
///         Name = "sharenetwork_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sharedfilesystem.LookupShareNetwork(ctx, &sharedfilesystem.LookupShareNetworkArgs{
/// 			Name: pulumi.StringRef("sharenetwork_1"),
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
/// import com.pulumi.openstack.sharedfilesystem.SharedfilesystemFunctions;
/// import com.pulumi.openstack.sharedfilesystem.inputs.GetShareNetworkArgs;
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
///         final var sharenetwork1 = SharedfilesystemFunctions.getShareNetwork(GetShareNetworkArgs.builder()
///             .name("sharenetwork_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sharenetwork1:
///     fn::invoke:
///       function: openstack:sharedfilesystem:getShareNetwork
///       arguments:
///         name: sharenetwork_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sharedfilesystem_get_share_network_get_share_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareNetworkResult> getShareNetwork(
  GetShareNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:sharedfilesystem/getShareNetwork:getShareNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareNetworkResult.fromMap(result);
}

/// Use this data source to get the ID of an available Shared File System snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const snapshot1 = openstack.sharedfilesystem.getSnapshot({
///     name: "snapshot_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// snapshot1 = openstack.sharedfilesystem.get_snapshot(name="snapshot_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot1 = OpenStack.SharedFileSystem.GetSnapshot.Invoke(new()
///     {
///         Name = "snapshot_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sharedfilesystem.GetSnapshot(ctx, &sharedfilesystem.GetSnapshotArgs{
/// 			Name: pulumi.StringRef("snapshot_1"),
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
/// import com.pulumi.openstack.sharedfilesystem.SharedfilesystemFunctions;
/// import com.pulumi.openstack.sharedfilesystem.inputs.GetSnapshotArgs;
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
///         final var snapshot1 = SharedfilesystemFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .name("snapshot_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   snapshot1:
///     fn::invoke:
///       function: openstack:sharedfilesystem:getSnapshot
///       arguments:
///         name: snapshot_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sharedfilesystem_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:sharedfilesystem/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
