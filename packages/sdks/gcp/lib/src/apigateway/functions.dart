import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_config_iam_policy_args.dart';
import 'get_api_config_iam_policy_result.dart';
import 'get_api_iam_policy_args.dart';
import 'get_api_iam_policy_result.dart';
import 'get_gateway_iam_policy_args.dart';
import 'get_gateway_iam_policy_result.dart';

/// Retrieves the current IAM policy data for apiconfig
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
/// const policy = gcp.apigateway.getApiConfigIamPolicy({
///     api: apiCfg.api,
///     apiConfig: apiCfg.apiConfigId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigateway.get_api_config_iam_policy(api=api_cfg["api"],
///     api_config=api_cfg["apiConfigId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ApiGateway.GetApiConfigIamPolicy.Invoke(new()
///     {
///         Api = apiCfg.Api,
///         ApiConfig = apiCfg.ApiConfigId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupApiConfigIamPolicy(ctx, &apigateway.LookupApiConfigIamPolicyArgs{
/// 			Api:       apiCfg.Api,
/// 			ApiConfig: apiCfg.ApiConfigId,
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
/// data "gcp_apigateway_getapiconfigiampolicy" "policy" {
///   api        = apiCfg.api
///   api_config = apiCfg.apiConfigId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigateway.ApigatewayFunctions;
/// import com.pulumi.gcp.apigateway.inputs.GetApiConfigIamPolicyArgs;
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
///         final var policy = ApigatewayFunctions.getApiConfigIamPolicy(GetApiConfigIamPolicyArgs.builder()
///             .api(apiCfg.get("api"))
///             .apiConfig(apiCfg.get("apiConfigId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:apigateway:getApiConfigIamPolicy
///       arguments:
///         api: ${apiCfg.api}
///         apiConfig: ${apiCfg.apiConfigId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_api_config_iam_policy_get_api_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiConfigIamPolicyResult> getApiConfigIamPolicy(
  GetApiConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiConfigIamPolicy:getApiConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyResult.fromMap(result);
}

pulumi.Output<GetApiConfigIamPolicyResult> getApiConfigIamPolicyOutput(
  GetApiConfigIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:apigateway/getApiConfigIamPolicy:getApiConfigIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiConfigIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for api
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
/// const policy = gcp.apigateway.getApiIamPolicy({
///     project: api.project,
///     api: api.apiId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigateway.get_api_iam_policy(project=api["project"],
///     api=api["apiId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ApiGateway.GetApiIamPolicy.Invoke(new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupApiIamPolicy(ctx, &apigateway.LookupApiIamPolicyArgs{
/// 			Project: pulumi.StringRef(api.Project),
/// 			Api:     api.ApiId,
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
/// data "gcp_apigateway_getapiiampolicy" "policy" {
///   project = api.project
///   api     = api.apiId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigateway.ApigatewayFunctions;
/// import com.pulumi.gcp.apigateway.inputs.GetApiIamPolicyArgs;
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
///         final var policy = ApigatewayFunctions.getApiIamPolicy(GetApiIamPolicyArgs.builder()
///             .project(api.get("project"))
///             .api(api.get("apiId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:apigateway:getApiIamPolicy
///       arguments:
///         project: ${api.project}
///         api: ${api.apiId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_api_iam_policy_get_api_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiIamPolicyResult> getApiIamPolicy(
  GetApiIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiIamPolicy:getApiIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult.fromMap(result);
}

pulumi.Output<GetApiIamPolicyResult> getApiIamPolicyOutput(
  GetApiIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:apigateway/getApiIamPolicy:getApiIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for gateway
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
/// const policy = gcp.apigateway.getGatewayIamPolicy({
///     project: apiGw.project,
///     region: apiGw.region,
///     gateway: apiGw.gatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.apigateway.get_gateway_iam_policy(project=api_gw["project"],
///     region=api_gw["region"],
///     gateway=api_gw["gatewayId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.ApiGateway.GetGatewayIamPolicy.Invoke(new()
///     {
///         Project = apiGw.Project,
///         Region = apiGw.Region,
///         Gateway = apiGw.GatewayId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupGatewayIamPolicy(ctx, &apigateway.LookupGatewayIamPolicyArgs{
/// 			Project: pulumi.StringRef(apiGw.Project),
/// 			Region:  pulumi.StringRef(apiGw.Region),
/// 			Gateway: apiGw.GatewayId,
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
/// data "gcp_apigateway_getgatewayiampolicy" "policy" {
///   project = apiGw.project
///   region  = apiGw.region
///   gateway = apiGw.gatewayId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigateway.ApigatewayFunctions;
/// import com.pulumi.gcp.apigateway.inputs.GetGatewayIamPolicyArgs;
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
///         final var policy = ApigatewayFunctions.getGatewayIamPolicy(GetGatewayIamPolicyArgs.builder()
///             .project(apiGw.get("project"))
///             .region(apiGw.get("region"))
///             .gateway(apiGw.get("gatewayId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:apigateway:getGatewayIamPolicy
///       arguments:
///         project: ${apiGw.project}
///         region: ${apiGw.region}
///         gateway: ${apiGw.gatewayId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_gateway_iam_policy_get_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayIamPolicyResult> getGatewayIamPolicy(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getGatewayIamPolicy:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult.fromMap(result);
}

pulumi.Output<GetGatewayIamPolicyResult> getGatewayIamPolicyOutput(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:apigateway/getGatewayIamPolicy:getGatewayIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayIamPolicyResult.fromMap);
}
