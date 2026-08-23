import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_args.dart';
import 'get_data_store_result.dart';
import 'get_data_stores_args.dart';
import 'get_data_stores_result.dart';
import 'get_search_engine_iam_policy_args.dart';
import 'get_search_engine_iam_policy_result.dart';

/// Gets an existing Discovery Engine data store by ID or display name.
/// See [the official documentation](https://cloud.google.com/generative-ai-app-builder/docs/manage-data-stores)
/// and [API](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores/get).
///
/// ## Example Usage
///
/// ### By ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.discoveryengine.getDataStore({
///     dataStoreId: "my-data-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.discoveryengine.get_data_store(data_store_id="my-data-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.DiscoveryEngine.GetDataStore.Invoke(new()
///     {
///         DataStoreId = "my-data-store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.LookupDataStore(ctx, &discoveryengine.LookupDataStoreArgs{
/// 			DataStoreId: pulumi.StringRef("my-data-store"),
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
/// data "gcp_discoveryengine_getdatastore" "example" {
///   data_store_id = "my-data-store"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DiscoveryengineFunctions;
/// import com.pulumi.gcp.discoveryengine.inputs.GetDataStoreArgs;
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
///         final var example = DiscoveryengineFunctions.getDataStore(GetDataStoreArgs.builder()
///             .dataStoreId("my-data-store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:discoveryengine:getDataStore
///       arguments:
///         dataStoreId: my-data-store
/// ```
///
///
/// ### By display name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.discoveryengine.getDataStore({
///     displayName: "My Data Store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.discoveryengine.get_data_store(display_name="My Data Store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.DiscoveryEngine.GetDataStore.Invoke(new()
///     {
///         DisplayName = "My Data Store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.LookupDataStore(ctx, &discoveryengine.LookupDataStoreArgs{
/// 			DisplayName: pulumi.StringRef("My Data Store"),
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
/// data "gcp_discoveryengine_getdatastore" "example" {
///   display_name = "My Data Store"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DiscoveryengineFunctions;
/// import com.pulumi.gcp.discoveryengine.inputs.GetDataStoreArgs;
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
///         final var example = DiscoveryengineFunctions.getDataStore(GetDataStoreArgs.builder()
///             .displayName("My Data Store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:discoveryengine:getDataStore
///       arguments:
///         displayName: My Data Store
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_get_data_store_get_data_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataStoreResult> getDataStore(
  GetDataStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:discoveryengine/getDataStore:getDataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataStoreResult.fromMap(result);
}

/// Gets a list of existing Discovery Engine data stores.
/// See [the official documentation](https://cloud.google.com/generative-ai-app-builder/docs/manage-data-stores)
/// and [API](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.discoveryengine.getDataStores({
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.discoveryengine.get_data_stores(location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.DiscoveryEngine.GetDataStores.Invoke(new()
///     {
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.GetDataStores(ctx, &discoveryengine.GetDataStoresArgs{
/// 			Location: pulumi.StringRef("global"),
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
/// data "gcp_discoveryengine_getdatastores" "example" {
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DiscoveryengineFunctions;
/// import com.pulumi.gcp.discoveryengine.inputs.GetDataStoresArgs;
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
///         final var example = DiscoveryengineFunctions.getDataStores(GetDataStoresArgs.builder()
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:discoveryengine:getDataStores
///       arguments:
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_get_data_stores_get_data_stores_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataStoresResult> getDataStores(
  GetDataStoresArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:discoveryengine/getDataStores:getDataStores',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataStoresResult.fromMap(result);
}

/// Retrieves the current IAM policy data for searchengine
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.discoveryengine.getSearchEngineIamPolicy({
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.discoveryengine.get_search_engine_iam_policy(project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DiscoveryEngine.GetSearchEngineIamPolicy.Invoke(new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.LookupSearchEngineIamPolicy(ctx, &discoveryengine.LookupSearchEngineIamPolicyArgs{
/// 			Project:      pulumi.StringRef(basic.Project),
/// 			Location:     pulumi.StringRef(basic.Location),
/// 			CollectionId: basic.CollectionId,
/// 			EngineId:     basic.EngineId,
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
/// data "gcp_discoveryengine_getsearchengineiampolicy" "policy" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DiscoveryengineFunctions;
/// import com.pulumi.gcp.discoveryengine.inputs.GetSearchEngineIamPolicyArgs;
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
///         final var policy = DiscoveryengineFunctions.getSearchEngineIamPolicy(GetSearchEngineIamPolicyArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:discoveryengine:getSearchEngineIamPolicy
///       arguments:
///         project: ${basic.project}
///         location: ${basic.location}
///         collectionId: ${basic.collectionId}
///         engineId: ${basic.engineId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_get_search_engine_iam_policy_get_search_engine_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSearchEngineIamPolicyResult> getSearchEngineIamPolicy(
  GetSearchEngineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:discoveryengine/getSearchEngineIamPolicy:getSearchEngineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSearchEngineIamPolicyResult.fromMap(result);
}
