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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiEndpointIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiEndpointIamPolicy(GetAiEndpointIamPolicyArgs.builder()
///             .project(endpoint.project())
///             .location(endpoint.location())
///             .endpoint(endpoint.name())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureGroupIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeatureGroupIamPolicy(GetAiFeatureGroupIamPolicyArgs.builder()
///             .region(featureGroup.region())
///             .featureGroup(featureGroup.name())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeatureOnlineStoreFeatureviewIamPolicy(GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs.builder()
///             .region(featureview.region())
///             .featureOnlineStore(featureview.featureOnlineStore())
///             .featureView(featureview.name())
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
Future<GetAiFeatureOnlineStoreFeatureviewIamPolicyResult>
getAiFeatureOnlineStoreFeatureviewIamPolicy(
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureOnlineStoreIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeatureOnlineStoreIamPolicy(GetAiFeatureOnlineStoreIamPolicyArgs.builder()
///             .region(featureOnlineStore.region())
///             .featureOnlineStore(featureOnlineStore.name())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeaturestoreEntitytypeIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeaturestoreEntitytypeIamPolicy(GetAiFeaturestoreEntitytypeIamPolicyArgs.builder()
///             .featurestore(entity.featurestore())
///             .entitytype(entity.name())
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
Future<GetAiFeaturestoreEntitytypeIamPolicyResult>
getAiFeaturestoreEntitytypeIamPolicy(
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeaturestoreIamPolicyArgs;
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
///         final var policy = VertexFunctions.getAiFeaturestoreIamPolicy(GetAiFeaturestoreIamPolicyArgs.builder()
///             .project(featurestore.project())
///             .region(featurestore.region())
///             .featurestore(featurestore.name())
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
