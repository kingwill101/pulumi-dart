import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_consumers_iam_policy_args.dart';
import 'get_service_consumers_iam_policy_result.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for serviceconsumers
/// [args] Arguments passed to this invoke. {@macro pulumi_endpoints_get_service_consumers_iam_policy_get_service_consumers_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConsumersIamPolicyResult> getServiceConsumersIamPolicy(
  GetServiceConsumersIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:endpoints/getServiceConsumersIamPolicy:getServiceConsumersIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConsumersIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for service
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.endpoints.getServiceIamPolicy({
///     serviceName: endpointsService.serviceName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.endpoints.get_service_iam_policy(service_name=endpoints_service["serviceName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Endpoints.GetServiceIamPolicy.Invoke(new()
///     {
///         ServiceName = endpointsService.ServiceName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/endpoints"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := endpoints.LookupServiceIamPolicy(ctx, &endpoints.LookupServiceIamPolicyArgs{
/// 			ServiceName: endpointsService.ServiceName,
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
/// data "gcp_endpoints_getserviceiampolicy" "policy" {
///   service_name = endpointsService.serviceName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.endpoints.EndpointsFunctions;
/// import com.pulumi.gcp.endpoints.inputs.GetServiceIamPolicyArgs;
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
///         final var policy = EndpointsFunctions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
///             .serviceName(endpointsService.get("serviceName"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:endpoints:getServiceIamPolicy
///       arguments:
///         serviceName: ${endpointsService.serviceName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_endpoints_get_service_iam_policy_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:endpoints/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}
