import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_endpoint_iam_policy_args.dart';
import 'get_ai_endpoint_iam_policy_result.dart';
import 'get_ai_feature_group_iam_policy_args.dart';
import 'get_ai_feature_group_iam_policy_result.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_args.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_result.dart';
import 'get_ai_feature_online_store_iam_policy_args.dart';
import 'get_ai_feature_online_store_iam_policy_result.dart';
import 'get_ai_featurestore_entitytype_iam_policy_args.dart';
import 'get_ai_featurestore_entitytype_iam_policy_result.dart';
import 'get_ai_featurestore_iam_policy_args.dart';
import 'get_ai_featurestore_iam_policy_result.dart';
import 'get_ai_index_args.dart';
import 'get_ai_index_result.dart';
import 'get_ai_reasoning_engine_iam_policy_args.dart';
import 'get_ai_reasoning_engine_iam_policy_result.dart';
import 'get_ai_reasoning_engine_query_args.dart';
import 'get_ai_reasoning_engine_query_result.dart';

/// Retrieves the current IAM policy data for endpoint
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiEndpointIamPolicy({
///     project: endpoint.project,
///     location: endpoint.location,
///     endpoint: endpoint.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_endpoint_iam_policy(project=endpoint["project"],
///     location=endpoint["location"],
///     endpoint=endpoint["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiEndpointIamPolicy.Invoke(new()
///     {
///         Project = endpoint.Project,
///         Location = endpoint.Location,
///         Endpoint = endpoint.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.LookupAiEndpointIamPolicy(ctx, &vertex.LookupAiEndpointIamPolicyArgs{
/// 			Project:  pulumi.StringRef(endpoint.Project),
/// 			Location: pulumi.StringRef(endpoint.Location),
/// 			Endpoint: endpoint.Name,
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
/// data "gcp_vertex_getaiendpointiampolicy" "policy" {
///   project  = endpoint.project
///   location = endpoint.location
///   endpoint = endpoint.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiEndpointIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiEndpointIamPolicy(GetAiEndpointIamPolicyArgs.builder()
///             .project(endpoint.get("project"))
///             .location(endpoint.get("location"))
///             .endpoint(endpoint.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiEndpointIamPolicy
///       arguments:
///         project: ${endpoint.project}
///         location: ${endpoint.location}
///         endpoint: ${endpoint.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_endpoint_iam_policy_get_ai_endpoint_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiEndpointIamPolicyResult> getAiEndpointIamPolicy(
  GetAiEndpointIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiEndpointIamPolicy:getAiEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiEndpointIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiEndpointIamPolicyResult> getAiEndpointIamPolicyOutput(
  GetAiEndpointIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiEndpointIamPolicy:getAiEndpointIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiEndpointIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for featuregroup
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeatureGroupIamPolicy({
///     region: featureGroup.region,
///     featureGroup: featureGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_feature_group_iam_policy(region=feature_group["region"],
///     feature_group=feature_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiFeatureGroupIamPolicy.Invoke(new()
///     {
///         Region = featureGroup.Region,
///         FeatureGroup = featureGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.LookupAiFeatureGroupIamPolicy(ctx, &vertex.LookupAiFeatureGroupIamPolicyArgs{
/// 			Region:       pulumi.StringRef(featureGroup.Region),
/// 			FeatureGroup: featureGroup.Name,
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
/// data "gcp_vertex_getaifeaturegroupiampolicy" "policy" {
///   region        = featureGroup.region
///   feature_group = featureGroup.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureGroupIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeatureGroupIamPolicy(GetAiFeatureGroupIamPolicyArgs.builder()
///             .region(featureGroup.get("region"))
///             .featureGroup(featureGroup.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiFeatureGroupIamPolicy
///       arguments:
///         region: ${featureGroup.region}
///         featureGroup: ${featureGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_feature_group_iam_policy_get_ai_feature_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiFeatureGroupIamPolicyResult> getAiFeatureGroupIamPolicy(
  GetAiFeatureGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureGroupIamPolicy:getAiFeatureGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiFeatureGroupIamPolicyResult> getAiFeatureGroupIamPolicyOutput(
  GetAiFeatureGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureGroupIamPolicy:getAiFeatureGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiFeatureGroupIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for featureonlinestorefeatureview
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeatureOnlineStoreFeatureviewIamPolicy({
///     region: featureview.region,
///     featureOnlineStore: featureview.featureOnlineStore,
///     featureView: featureview.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_feature_online_store_featureview_iam_policy(region=featureview["region"],
///     feature_online_store=featureview["featureOnlineStore"],
///     feature_view=featureview["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiFeatureOnlineStoreFeatureviewIamPolicy.Invoke(new()
///     {
///         Region = featureview.Region,
///         FeatureOnlineStore = featureview.FeatureOnlineStore,
///         FeatureView = featureview.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.LookupAiFeatureOnlineStoreFeatureviewIamPolicy(ctx, &vertex.LookupAiFeatureOnlineStoreFeatureviewIamPolicyArgs{
/// 			Region:             pulumi.StringRef(featureview.Region),
/// 			FeatureOnlineStore: featureview.FeatureOnlineStore,
/// 			FeatureView:        featureview.Name,
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
/// data "gcp_vertex_getaifeatureonlinestorefeatureviewiampolicy" "policy" {
///   region               = featureview.region
///   feature_online_store = featureview.featureOnlineStore
///   feature_view         = featureview.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeatureOnlineStoreFeatureviewIamPolicy(GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs.builder()
///             .region(featureview.get("region"))
///             .featureOnlineStore(featureview.get("featureOnlineStore"))
///             .featureView(featureview.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiFeatureOnlineStoreFeatureviewIamPolicy
///       arguments:
///         region: ${featureview.region}
///         featureOnlineStore: ${featureview.featureOnlineStore}
///         featureView: ${featureview.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_feature_online_store_featureview_iam_policy_get_ai_feature_online_store_featureview_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiFeatureOnlineStoreFeatureviewIamPolicyResult> getAiFeatureOnlineStoreFeatureviewIamPolicy(
  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreFeatureviewIamPolicy:getAiFeatureOnlineStoreFeatureviewIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreFeatureviewIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiFeatureOnlineStoreFeatureviewIamPolicyResult> getAiFeatureOnlineStoreFeatureviewIamPolicyOutput(
  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreFeatureviewIamPolicy:getAiFeatureOnlineStoreFeatureviewIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiFeatureOnlineStoreFeatureviewIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for featureonlinestore
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeatureOnlineStoreIamPolicy({
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_feature_online_store_iam_policy(region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiFeatureOnlineStoreIamPolicy.Invoke(new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.LookupAiFeatureOnlineStoreIamPolicy(ctx, &vertex.LookupAiFeatureOnlineStoreIamPolicyArgs{
/// 			Region:             pulumi.StringRef(featureOnlineStore.Region),
/// 			FeatureOnlineStore: featureOnlineStore.Name,
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
/// data "gcp_vertex_getaifeatureonlinestoreiampolicy" "policy" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureOnlineStoreIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeatureOnlineStoreIamPolicy(GetAiFeatureOnlineStoreIamPolicyArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiFeatureOnlineStoreIamPolicy
///       arguments:
///         region: ${featureOnlineStore.region}
///         featureOnlineStore: ${featureOnlineStore.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_feature_online_store_iam_policy_get_ai_feature_online_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiFeatureOnlineStoreIamPolicyResult> getAiFeatureOnlineStoreIamPolicy(
  GetAiFeatureOnlineStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreIamPolicy:getAiFeatureOnlineStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiFeatureOnlineStoreIamPolicyResult> getAiFeatureOnlineStoreIamPolicyOutput(
  GetAiFeatureOnlineStoreIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreIamPolicy:getAiFeatureOnlineStoreIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiFeatureOnlineStoreIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for featurestoreentitytype
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeaturestoreEntitytypeIamPolicy({
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_featurestore_entitytype_iam_policy(featurestore=entity["featurestore"],
///     entitytype=entity["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiFeaturestoreEntitytypeIamPolicy.Invoke(new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.GetAiFeaturestoreEntitytypeIamPolicy(ctx, &vertex.GetAiFeaturestoreEntitytypeIamPolicyArgs{
/// 			Featurestore: entity.Featurestore,
/// 			Entitytype:   entity.Name,
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
/// data "gcp_vertex_getaifeaturestoreentitytypeiampolicy" "policy" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeaturestoreEntitytypeIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeaturestoreEntitytypeIamPolicy(GetAiFeaturestoreEntitytypeIamPolicyArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiFeaturestoreEntitytypeIamPolicy
///       arguments:
///         featurestore: ${entity.featurestore}
///         entitytype: ${entity.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_featurestore_entitytype_iam_policy_get_ai_featurestore_entitytype_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiFeaturestoreEntitytypeIamPolicyResult> getAiFeaturestoreEntitytypeIamPolicy(
  GetAiFeaturestoreEntitytypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreEntitytypeIamPolicy:getAiFeaturestoreEntitytypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeaturestoreEntitytypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiFeaturestoreEntitytypeIamPolicyResult> getAiFeaturestoreEntitytypeIamPolicyOutput(
  GetAiFeaturestoreEntitytypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreEntitytypeIamPolicy:getAiFeaturestoreEntitytypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiFeaturestoreEntitytypeIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for featurestore
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeaturestoreIamPolicy({
///     project: featurestore.project,
///     region: featurestore.region,
///     featurestore: featurestore.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_featurestore_iam_policy(project=featurestore["project"],
///     region=featurestore["region"],
///     featurestore=featurestore["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiFeaturestoreIamPolicy.Invoke(new()
///     {
///         Project = featurestore.Project,
///         Region = featurestore.Region,
///         Featurestore = featurestore.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.GetAiFeaturestoreIamPolicy(ctx, &vertex.GetAiFeaturestoreIamPolicyArgs{
/// 			Project:      pulumi.StringRef(featurestore.Project),
/// 			Region:       pulumi.StringRef(featurestore.Region),
/// 			Featurestore: featurestore.Name,
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
/// data "gcp_vertex_getaifeaturestoreiampolicy" "policy" {
///   project      = featurestore.project
///   region       = featurestore.region
///   featurestore = featurestore.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeaturestoreIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeaturestoreIamPolicy(GetAiFeaturestoreIamPolicyArgs.builder()
///             .project(featurestore.get("project"))
///             .region(featurestore.get("region"))
///             .featurestore(featurestore.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiFeaturestoreIamPolicy
///       arguments:
///         project: ${featurestore.project}
///         region: ${featurestore.region}
///         featurestore: ${featurestore.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_featurestore_iam_policy_get_ai_featurestore_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiFeaturestoreIamPolicyResult> getAiFeaturestoreIamPolicy(
  GetAiFeaturestoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreIamPolicy:getAiFeaturestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeaturestoreIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiFeaturestoreIamPolicyResult> getAiFeaturestoreIamPolicyOutput(
  GetAiFeaturestoreIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreIamPolicy:getAiFeaturestoreIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiFeaturestoreIamPolicyResult.fromMap);
}

/// A representation of a collection of database items organized in a way that allows for approximate nearest neighbor (a.k.a ANN) algorithms search.
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_index_get_ai_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiIndexResult> getAiIndex(
  GetAiIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiIndex:getAiIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiIndexResult.fromMap(result);
}

pulumi.Output<GetAiIndexResult> getAiIndexOutput(
  GetAiIndexArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiIndex:getAiIndex',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiIndexResult.fromMap);
}

/// Retrieves the current IAM policy data for reasoningengine
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiReasoningEngineIamPolicy({
///     project: reasoningEngine.project,
///     region: reasoningEngine.region,
///     reasoningEngine: reasoningEngine.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_reasoning_engine_iam_policy(project=reasoning_engine["project"],
///     region=reasoning_engine["region"],
///     reasoning_engine=reasoning_engine["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Vertex.GetAiReasoningEngineIamPolicy.Invoke(new()
///     {
///         Project = reasoningEngine.Project,
///         Region = reasoningEngine.Region,
///         ReasoningEngine = reasoningEngine.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.LookupAiReasoningEngineIamPolicy(ctx, &vertex.LookupAiReasoningEngineIamPolicyArgs{
/// 			Project:         pulumi.StringRef(reasoningEngine.Project),
/// 			Region:          pulumi.StringRef(reasoningEngine.Region),
/// 			ReasoningEngine: reasoningEngine.Name,
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
/// data "gcp_vertex_getaireasoningengineiampolicy" "policy" {
///   project          = reasoningEngine.project
///   region           = reasoningEngine.region
///   reasoning_engine = reasoningEngine.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiReasoningEngineIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiReasoningEngineIamPolicy(GetAiReasoningEngineIamPolicyArgs.builder()
///             .project(reasoningEngine.get("project"))
///             .region(reasoningEngine.get("region"))
///             .reasoningEngine(reasoningEngine.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:vertex:getAiReasoningEngineIamPolicy
///       arguments:
///         project: ${reasoningEngine.project}
///         region: ${reasoningEngine.region}
///         reasoningEngine: ${reasoningEngine.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_reasoning_engine_iam_policy_get_ai_reasoning_engine_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiReasoningEngineIamPolicyResult> getAiReasoningEngineIamPolicy(
  GetAiReasoningEngineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiReasoningEngineIamPolicy:getAiReasoningEngineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiReasoningEngineIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAiReasoningEngineIamPolicyResult> getAiReasoningEngineIamPolicyOutput(
  GetAiReasoningEngineIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiReasoningEngineIamPolicy:getAiReasoningEngineIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiReasoningEngineIamPolicyResult.fromMap);
}

/// Get the output of a query sent to a Vertex AI Reasoning Engine agent.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultAiReasoningEngine = new gcp.vertex.AiReasoningEngine("default", {
///     displayName: "vertex-mds-_91657",
///     description: "Retrieves tenant project number",
///     region: "us-central1",
///     spec: {
///         sourceCodeSpec: {
///             inlineSource: {
///                 sourceArchive: std.filebase64({
///                     input: "./test-fixtures/mds_agent_src.tar.gz",
///                 }).then(invoke => invoke.result),
///             },
///             pythonSpec: {
///                 entrypointModule: "metadata_agent",
///                 entrypointObject: "root_agent",
///             },
///         },
///     },
/// });
/// const _default = gcp.vertex.getAiReasoningEngineQueryOutput({
///     reasoningEngineId: defaultAiReasoningEngine.name,
///     region: "us-central1",
///     classMethod: "query",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_ai_reasoning_engine = gcp.vertex.AiReasoningEngine("default",
///     display_name="vertex-mds-_91657",
///     description="Retrieves tenant project number",
///     region="us-central1",
///     spec={
///         "source_code_spec": {
///             "inline_source": {
///                 "source_archive": std.filebase64(input="./test-fixtures/mds_agent_src.tar.gz").result,
///             },
///             "python_spec": {
///                 "entrypoint_module": "metadata_agent",
///                 "entrypoint_object": "root_agent",
///             },
///         },
///     })
/// default = gcp.vertex.get_ai_reasoning_engine_query_output(reasoning_engine_id=default_ai_reasoning_engine.name,
///     region="us-central1",
///     class_method="query")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultAiReasoningEngine = new Gcp.Vertex.AiReasoningEngine("default", new()
///     {
///         DisplayName = "vertex-mds-_91657",
///         Description = "Retrieves tenant project number",
///         Region = "us-central1",
///         Spec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecArgs
///         {
///             SourceCodeSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecArgs
///             {
///                 InlineSource = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs
///                 {
///                     SourceArchive = Std.Filebase64.Invoke(new()
///                     {
///                         Input = "./test-fixtures/mds_agent_src.tar.gz",
///                     }).Apply(invoke => invoke.Result),
///                 },
///                 PythonSpec = new Gcp.Vertex.Inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs
///                 {
///                     EntrypointModule = "metadata_agent",
///                     EntrypointObject = "root_agent",
///                 },
///             },
///         },
///     });
///
///     var @default = Gcp.Vertex.GetAiReasoningEngineQuery.Invoke(new()
///     {
///         ReasoningEngineId = defaultAiReasoningEngine.Name,
///         Region = "us-central1",
///         ClassMethod = "query",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "./test-fixtures/mds_agent_src.tar.gz",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAiReasoningEngine, err := vertex.NewAiReasoningEngine(ctx, "default", &vertex.AiReasoningEngineArgs{
/// 			DisplayName: pulumi.String("vertex-mds-_91657"),
/// 			Description: pulumi.String("Retrieves tenant project number"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Spec: &vertex.AiReasoningEngineSpecArgs{
/// 				SourceCodeSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecArgs{
/// 					InlineSource: &vertex.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs{
/// 						SourceArchive: pulumi.String(invokeFilebase64.Result),
/// 					},
/// 					PythonSpec: &vertex.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs{
/// 						EntrypointModule: pulumi.String("metadata_agent"),
/// 						EntrypointObject: pulumi.String("root_agent"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vertex.GetAiReasoningEngineQueryOutput(ctx, vertex.GetAiReasoningEngineQueryOutputArgs{
/// 			ReasoningEngineId: defaultAiReasoningEngine.Name,
/// 			Region:            pulumi.String("us-central1"),
/// 			ClassMethod:       pulumi.String("query"),
/// 		}, nil)
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_vertex_getaireasoningenginequery" "default" {
///   reasoning_engine_id = gcp_vertex_aireasoningengine.default.name
///   region              = "us-central1"
///   class_method        = "query"
/// }
///
/// resource "gcp_vertex_aireasoningengine" "default" {
///   display_name = "vertex-mds-_91657"
///   description  = "Retrieves tenant project number"
///   region       = "us-central1"
///   spec = {
///     source_code_spec = {
///       inline_source = {
///         source_archive = filebase64("./test-fixtures/mds_agent_src.tar.gz")
///       }
///       python_spec = {
///         entrypoint_module = "metadata_agent"
///         entrypoint_object = "root_agent"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiReasoningEngine;
/// import com.pulumi.gcp.vertex.AiReasoningEngineArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiReasoningEngineQueryArgs;
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
///         var defaultAiReasoningEngine = new AiReasoningEngine("defaultAiReasoningEngine", AiReasoningEngineArgs.builder()
///             .displayName("vertex-mds-_91657")
///             .description("Retrieves tenant project number")
///             .region("us-central1")
///             .spec(AiReasoningEngineSpecArgs.builder()
///                 .sourceCodeSpec(AiReasoningEngineSpecSourceCodeSpecArgs.builder()
///                     .inlineSource(AiReasoningEngineSpecSourceCodeSpecInlineSourceArgs.builder()
///                         .sourceArchive(StdFunctions.filebase64(Filebase64Args.builder()
///                             .input("./test-fixtures/mds_agent_src.tar.gz")
///                             .build()).result())
///                         .build())
///                     .pythonSpec(AiReasoningEngineSpecSourceCodeSpecPythonSpecArgs.builder()
///                         .entrypointModule("metadata_agent")
///                         .entrypointObject("root_agent")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var default = VertexFunctions.getAiReasoningEngineQuery(GetAiReasoningEngineQueryArgs.builder()
///             .reasoningEngineId(defaultAiReasoningEngine.name())
///             .region("us-central1")
///             .classMethod("query")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultAiReasoningEngine:
///     type: gcp:vertex:AiReasoningEngine
///     name: default
///     properties:
///       displayName: vertex-mds-_91657
///       description: Retrieves tenant project number
///       region: us-central1
///       spec:
///         sourceCodeSpec:
///           inlineSource:
///             sourceArchive:
///               fn::invoke:
///                 function: std:filebase64
///                 arguments:
///                   input: ./test-fixtures/mds_agent_src.tar.gz
///                 return: result
///           pythonSpec:
///             entrypointModule: metadata_agent
///             entrypointObject: root_agent
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:vertex:getAiReasoningEngineQuery
///       arguments:
///         reasoningEngineId: ${defaultAiReasoningEngine.name}
///         region: us-central1
///         classMethod: query
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vertex_get_ai_reasoning_engine_query_get_ai_reasoning_engine_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAiReasoningEngineQueryResult> getAiReasoningEngineQuery(
  GetAiReasoningEngineQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiReasoningEngineQuery:getAiReasoningEngineQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiReasoningEngineQueryResult.fromMap(result);
}

pulumi.Output<GetAiReasoningEngineQueryResult> getAiReasoningEngineQueryOutput(
  GetAiReasoningEngineQueryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vertex/getAiReasoningEngineQuery:getAiReasoningEngineQuery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAiReasoningEngineQueryResult.fromMap);
}
