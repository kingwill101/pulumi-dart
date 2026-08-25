import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_announcements_args.dart';
import 'get_announcements_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';
import 'get_external_access_rule_args.dart';
import 'get_external_access_rule_result.dart';
import 'get_external_address_args.dart';
import 'get_external_address_result.dart';
import 'get_network_args.dart';
import 'get_network_peering_args.dart';
import 'get_network_peering_result.dart';
import 'get_network_policy_args.dart';
import 'get_network_policy_result.dart';
import 'get_network_result.dart';
import 'get_nsx_credentials_args.dart';
import 'get_nsx_credentials_result.dart';
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';
import 'get_upgrades_args.dart';
import 'get_upgrades_result.dart';
import 'get_vcenter_credentials_args.dart';
import 'get_vcenter_credentials_result.dart';

/// Use this data source to list announcements in a region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ds = gcp.vmwareengine.getAnnouncements({
///     parent: "projects/my-project/locations/us-west1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ds = gcp.vmwareengine.get_announcements(parent="projects/my-project/locations/us-west1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = Gcp.VMwareEngine.GetAnnouncements.Invoke(new()
///     {
///         Parent = "projects/my-project/locations/us-west1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.GetAnnouncements(ctx, &vmwareengine.GetAnnouncementsArgs{
/// 			Parent: "projects/my-project/locations/us-west1-a",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getannouncements" "ds" {
///   parent = "projects/my-project/locations/us-west1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetAnnouncementsArgs;
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
///         final var ds = VmwareengineFunctions.getAnnouncements(GetAnnouncementsArgs.builder()
///             .parent("projects/my-project/locations/us-west1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: gcp:vmwareengine:getAnnouncements
///       arguments:
///         parent: projects/my-project/locations/us-west1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_announcements_get_announcements_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnnouncementsResult> getAnnouncements(
  GetAnnouncementsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getAnnouncements:getAnnouncements',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnouncementsResult.fromMap(result);
}

pulumi.Output<GetAnnouncementsResult> getAnnouncementsOutput(
  GetAnnouncementsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getAnnouncements:getAnnouncements',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAnnouncementsResult.fromMap);
}

/// Use this data source to get details about a cluster resource.
///
/// To get more information about private cloud cluster, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCluster = gcp.vmwareengine.getCluster({
///     name: "my-cluster",
///     parent: "project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cluster = gcp.vmwareengine.get_cluster(name="my-cluster",
///     parent="project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myCluster = Gcp.VMwareEngine.GetCluster.Invoke(new()
///     {
///         Name = "my-cluster",
///         Parent = "project/locations/us-west1-a/privateClouds/my-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupCluster(ctx, &vmwareengine.LookupClusterArgs{
/// 			Name:   "my-cluster",
/// 			Parent: "project/locations/us-west1-a/privateClouds/my-cloud",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getcluster" "myCluster" {
///   name   = "my-cluster"
///   parent = "project/locations/us-west1-a/privateClouds/my-cloud"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetClusterArgs;
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
///         final var myCluster = VmwareengineFunctions.getCluster(GetClusterArgs.builder()
///             .name("my-cluster")
///             .parent("project/locations/us-west1-a/privateClouds/my-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myCluster:
///     fn::invoke:
///       function: gcp:vmwareengine:getCluster
///       arguments:
///         name: my-cluster
///         parent: project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getCluster:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Get information about a Cloud VMware Engine Datastore.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.vmwareengine.getDatastore({
///     location: exampleThirdparty.location,
///     name: exampleThirdparty.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.vmwareengine.get_datastore(location=example_thirdparty["location"],
///     name=example_thirdparty["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.VMwareEngine.GetDatastore.Invoke(new()
///     {
///         Location = exampleThirdparty.Location,
///         Name = exampleThirdparty.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupDatastore(ctx, &vmwareengine.LookupDatastoreArgs{
/// 			Location: exampleThirdparty.Location,
/// 			Name:     exampleThirdparty.Name,
/// 		}, nil)
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
/// data "gcp_vmwareengine_getdatastore" "default" {
///   location = exampleThirdparty.location
///   name     = exampleThirdparty.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetDatastoreArgs;
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
///         final var default = VmwareengineFunctions.getDatastore(GetDatastoreArgs.builder()
///             .location(exampleThirdparty.get("location"))
///             .name(exampleThirdparty.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:vmwareengine:getDatastore
///       arguments:
///         location: ${exampleThirdparty.location}
///         name: ${exampleThirdparty.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_datastore_get_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getDatastore:getDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}

pulumi.Output<GetDatastoreResult> getDatastoreOutput(
  GetDatastoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getDatastore:getDatastore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatastoreResult.fromMap);
}

/// Use this data source to get details about a external access rule resource.
///
/// To get more information about external address, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies.externalAccessRules)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myExternalAccessRule = gcp.vmwareengine.getExternalAccessRule({
///     name: "my-external-access-rule",
///     parent: "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_external_access_rule = gcp.vmwareengine.get_external_access_rule(name="my-external-access-rule",
///     parent="project/my-project/locations/us-west1-a/networkPolicies/my-network-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myExternalAccessRule = Gcp.VMwareEngine.GetExternalAccessRule.Invoke(new()
///     {
///         Name = "my-external-access-rule",
///         Parent = "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupExternalAccessRule(ctx, &vmwareengine.LookupExternalAccessRuleArgs{
/// 			Name:   "my-external-access-rule",
/// 			Parent: "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getexternalaccessrule" "myExternalAccessRule" {
///   name   = "my-external-access-rule"
///   parent = "project/my-project/locations/us-west1-a/networkPolicies/my-network-policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetExternalAccessRuleArgs;
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
///         final var myExternalAccessRule = VmwareengineFunctions.getExternalAccessRule(GetExternalAccessRuleArgs.builder()
///             .name("my-external-access-rule")
///             .parent("project/my-project/locations/us-west1-a/networkPolicies/my-network-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myExternalAccessRule:
///     fn::invoke:
///       function: gcp:vmwareengine:getExternalAccessRule
///       arguments:
///         name: my-external-access-rule
///         parent: project/my-project/locations/us-west1-a/networkPolicies/my-network-policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_external_access_rule_get_external_access_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalAccessRuleResult> getExternalAccessRule(
  GetExternalAccessRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAccessRule:getExternalAccessRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalAccessRuleResult.fromMap(result);
}

pulumi.Output<GetExternalAccessRuleResult> getExternalAccessRuleOutput(
  GetExternalAccessRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAccessRule:getExternalAccessRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExternalAccessRuleResult.fromMap);
}

/// Use this data source to get details about a external address resource.
///
/// To get more information about external address, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.externalAddresses)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myExternalAddress = gcp.vmwareengine.getExternalAddress({
///     name: "my-external-address",
///     parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_external_address = gcp.vmwareengine.get_external_address(name="my-external-address",
///     parent="project/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myExternalAddress = Gcp.VMwareEngine.GetExternalAddress.Invoke(new()
///     {
///         Name = "my-external-address",
///         Parent = "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupExternalAddress(ctx, &vmwareengine.LookupExternalAddressArgs{
/// 			Name:   "my-external-address",
/// 			Parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getexternaladdress" "myExternalAddress" {
///   name   = "my-external-address"
///   parent = "project/my-project/locations/us-west1-a/privateClouds/my-cloud"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetExternalAddressArgs;
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
///         final var myExternalAddress = VmwareengineFunctions.getExternalAddress(GetExternalAddressArgs.builder()
///             .name("my-external-address")
///             .parent("project/my-project/locations/us-west1-a/privateClouds/my-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myExternalAddress:
///     fn::invoke:
///       function: gcp:vmwareengine:getExternalAddress
///       arguments:
///         name: my-external-address
///         parent: project/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_external_address_get_external_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalAddressResult> getExternalAddress(
  GetExternalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAddress:getExternalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalAddressResult.fromMap(result);
}

pulumi.Output<GetExternalAddressResult> getExternalAddressOutput(
  GetExternalAddressArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAddress:getExternalAddress',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExternalAddressResult.fromMap);
}

/// Use this data source to get details about a VMwareEngine network resource.
///
/// To get more information about VMwareEngine Network, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.vmwareEngineNetworks)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNw = gcp.vmwareengine.getNetwork({
///     name: "us-central1-default",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_nw = gcp.vmwareengine.get_network(name="us-central1-default",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myNw = Gcp.VMwareEngine.GetNetwork.Invoke(new()
///     {
///         Name = "us-central1-default",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupNetwork(ctx, &vmwareengine.LookupNetworkArgs{
/// 			Name:     "us-central1-default",
/// 			Location: "us-central1",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getnetwork" "myNw" {
///   name     = "us-central1-default"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetNetworkArgs;
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
///         final var myNw = VmwareengineFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("us-central1-default")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myNw:
///     fn::invoke:
///       function: gcp:vmwareengine:getNetwork
///       arguments:
///         name: us-central1-default
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_network_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

pulumi.Output<GetNetworkResult> getNetworkOutput(
  GetNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetwork:getNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkResult.fromMap);
}

/// Use this data source to get details about a network peering resource.
///
/// To get more information about network peering, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPeerings)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetworkPeering = gcp.vmwareengine.getNetworkPeering({
///     name: "my-network-peering",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network_peering = gcp.vmwareengine.get_network_peering(name="my-network-peering")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myNetworkPeering = Gcp.VMwareEngine.GetNetworkPeering.Invoke(new()
///     {
///         Name = "my-network-peering",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupNetworkPeering(ctx, &vmwareengine.LookupNetworkPeeringArgs{
/// 			Name: "my-network-peering",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getnetworkpeering" "myNetworkPeering" {
///   name = "my-network-peering"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetNetworkPeeringArgs;
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
///         final var myNetworkPeering = VmwareengineFunctions.getNetworkPeering(GetNetworkPeeringArgs.builder()
///             .name("my-network-peering")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myNetworkPeering:
///     fn::invoke:
///       function: gcp:vmwareengine:getNetworkPeering
///       arguments:
///         name: my-network-peering
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_network_peering_get_network_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPeeringResult> getNetworkPeering(
  GetNetworkPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult.fromMap(result);
}

pulumi.Output<GetNetworkPeeringResult> getNetworkPeeringOutput(
  GetNetworkPeeringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPeering:getNetworkPeering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPeeringResult.fromMap);
}

/// Use this data source to get details about a network policy resource.
///
/// To get more information about network policy, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetworkPolicy = gcp.vmwareengine.getNetworkPolicy({
///     name: "my-network-policy",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network_policy = gcp.vmwareengine.get_network_policy(name="my-network-policy",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myNetworkPolicy = Gcp.VMwareEngine.GetNetworkPolicy.Invoke(new()
///     {
///         Name = "my-network-policy",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupNetworkPolicy(ctx, &vmwareengine.LookupNetworkPolicyArgs{
/// 			Name:     "my-network-policy",
/// 			Location: "us-central1",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getnetworkpolicy" "myNetworkPolicy" {
///   name     = "my-network-policy"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetNetworkPolicyArgs;
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
///         final var myNetworkPolicy = VmwareengineFunctions.getNetworkPolicy(GetNetworkPolicyArgs.builder()
///             .name("my-network-policy")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myNetworkPolicy:
///     fn::invoke:
///       function: gcp:vmwareengine:getNetworkPolicy
///       arguments:
///         name: my-network-policy
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_network_policy_get_network_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPolicyResult> getNetworkPolicy(
  GetNetworkPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPolicy:getNetworkPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPolicyResult.fromMap(result);
}

pulumi.Output<GetNetworkPolicyResult> getNetworkPolicyOutput(
  GetNetworkPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPolicy:getNetworkPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPolicyResult.fromMap);
}

/// Use this data source to get NSX credentials for a Private Cloud.
///
/// To get more information about private cloud NSX credentials, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds/showNsxCredentials)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ds = gcp.vmwareengine.getNsxCredentials({
///     parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ds = gcp.vmwareengine.get_nsx_credentials(parent="projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = Gcp.VMwareEngine.GetNsxCredentials.Invoke(new()
///     {
///         Parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.GetNsxCredentials(ctx, &vmwareengine.GetNsxCredentialsArgs{
/// 			Parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getnsxcredentials" "ds" {
///   parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetNsxCredentialsArgs;
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
///         final var ds = VmwareengineFunctions.getNsxCredentials(GetNsxCredentialsArgs.builder()
///             .parent("projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: gcp:vmwareengine:getNsxCredentials
///       arguments:
///         parent: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_nsx_credentials_get_nsx_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNsxCredentialsResult> getNsxCredentials(
  GetNsxCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNsxCredentials:getNsxCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNsxCredentialsResult.fromMap(result);
}

pulumi.Output<GetNsxCredentialsResult> getNsxCredentialsOutput(
  GetNsxCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getNsxCredentials:getNsxCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNsxCredentialsResult.fromMap);
}

/// Use this data source to get details about a private cloud resource.
///
/// To get more information about private cloud, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPc = gcp.vmwareengine.getPrivateCloud({
///     name: "my-pc",
///     location: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pc = gcp.vmwareengine.get_private_cloud(name="my-pc",
///     location="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myPc = Gcp.VMwareEngine.GetPrivateCloud.Invoke(new()
///     {
///         Name = "my-pc",
///         Location = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupPrivateCloud(ctx, &vmwareengine.LookupPrivateCloudArgs{
/// 			Name:     "my-pc",
/// 			Location: "us-central1-a",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getprivatecloud" "myPc" {
///   name     = "my-pc"
///   location = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetPrivateCloudArgs;
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
///         final var myPc = VmwareengineFunctions.getPrivateCloud(GetPrivateCloudArgs.builder()
///             .name("my-pc")
///             .location("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myPc:
///     fn::invoke:
///       function: gcp:vmwareengine:getPrivateCloud
///       arguments:
///         name: my-pc
///         location: us-central1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_private_cloud_get_private_cloud_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getPrivateCloud:getPrivateCloud',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}

pulumi.Output<GetPrivateCloudResult> getPrivateCloudOutput(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getPrivateCloud:getPrivateCloud',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudResult.fromMap);
}

/// Use this data source to get details about a subnet. Management subnets support only read operations and should be configured through this data source. User defined subnets can be configured using the resource as well as the datasource.
///
/// To get more information about private cloud subnet, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.subnets)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mySubnet = gcp.vmwareengine.getSubnet({
///     name: "service-1",
///     parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnet = gcp.vmwareengine.get_subnet(name="service-1",
///     parent="project/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySubnet = Gcp.VMwareEngine.GetSubnet.Invoke(new()
///     {
///         Name = "service-1",
///         Parent = "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.LookupSubnet(ctx, &vmwareengine.LookupSubnetArgs{
/// 			Name:   "service-1",
/// 			Parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getsubnet" "mySubnet" {
///   name   = "service-1"
///   parent = "project/my-project/locations/us-west1-a/privateClouds/my-cloud"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetSubnetArgs;
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
///         final var mySubnet = VmwareengineFunctions.getSubnet(GetSubnetArgs.builder()
///             .name("service-1")
///             .parent("project/my-project/locations/us-west1-a/privateClouds/my-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   mySubnet:
///     fn::invoke:
///       function: gcp:vmwareengine:getSubnet
///       arguments:
///         name: service-1
///         parent: project/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_subnet_get_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getSubnet:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}

pulumi.Output<GetSubnetResult> getSubnetOutput(
  GetSubnetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getSubnet:getSubnet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubnetResult.fromMap);
}

/// Use this data source to list upgrades for a Private Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ds = gcp.vmwareengine.getUpgrades({
///     parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ds = gcp.vmwareengine.get_upgrades(parent="projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = Gcp.VMwareEngine.GetUpgrades.Invoke(new()
///     {
///         Parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.GetUpgrades(ctx, &vmwareengine.GetUpgradesArgs{
/// 			Parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getupgrades" "ds" {
///   parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetUpgradesArgs;
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
///         final var ds = VmwareengineFunctions.getUpgrades(GetUpgradesArgs.builder()
///             .parent("projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: gcp:vmwareengine:getUpgrades
///       arguments:
///         parent: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_upgrades_get_upgrades_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUpgradesResult> getUpgrades(
  GetUpgradesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getUpgrades:getUpgrades',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUpgradesResult.fromMap(result);
}

pulumi.Output<GetUpgradesResult> getUpgradesOutput(
  GetUpgradesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getUpgrades:getUpgrades',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUpgradesResult.fromMap);
}

/// Use this data source to get Vcenter credentials for a Private Cloud.
///
/// To get more information about private cloud Vcenter credentials, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds/showVcenterCredentials)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ds = gcp.vmwareengine.getVcenterCredentials({
///     parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ds = gcp.vmwareengine.get_vcenter_credentials(parent="projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = Gcp.VMwareEngine.GetVcenterCredentials.Invoke(new()
///     {
///         Parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.GetVcenterCredentials(ctx, &vmwareengine.GetVcenterCredentialsArgs{
/// 			Parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// 		}, nil)
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
/// data "gcp_vmwareengine_getvcentercredentials" "ds" {
///   parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetVcenterCredentialsArgs;
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
///         final var ds = VmwareengineFunctions.getVcenterCredentials(GetVcenterCredentialsArgs.builder()
///             .parent("projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: gcp:vmwareengine:getVcenterCredentials
///       arguments:
///         parent: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_get_vcenter_credentials_get_vcenter_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVcenterCredentialsResult> getVcenterCredentials(
  GetVcenterCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getVcenterCredentials:getVcenterCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVcenterCredentialsResult.fromMap(result);
}

pulumi.Output<GetVcenterCredentialsResult> getVcenterCredentialsOutput(
  GetVcenterCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vmwareengine/getVcenterCredentials:getVcenterCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVcenterCredentialsResult.fromMap);
}
