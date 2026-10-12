import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_application_iam_policy_args.dart';
import 'get_security_gateway_application_iam_policy_result.dart';
import 'get_security_gateway_args.dart';
import 'get_security_gateway_iam_policy_args.dart';
import 'get_security_gateway_iam_policy_result.dart';
import 'get_security_gateway_result.dart';

/// Get information about a Google BeyondCorp Security Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_security_gateway = gcp.beyondcorp.getSecurityGateway({
///     securityGatewayId: "my-beyondcorp-security-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_security_gateway = gcp.beyondcorp.get_security_gateway(security_gateway_id="my-beyondcorp-security-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_beyondcorp_security_gateway = Gcp.Beyondcorp.GetSecurityGateway.Invoke(new()
///     {
///         SecurityGatewayId = "my-beyondcorp-security-gateway",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupSecurityGateway(ctx, &beyondcorp.LookupSecurityGatewayArgs{
/// 			SecurityGatewayId: "my-beyondcorp-security-gateway",
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
/// data "gcp_beyondcorp_getsecuritygateway" "my-beyondcorp-security-gateway" {
///   security_gateway_id = "my-beyondcorp-security-gateway"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayArgs;
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
///         final var my-beyondcorp-security-gateway = BeyondcorpFunctions.getSecurityGateway(GetSecurityGatewayArgs.builder()
///             .securityGatewayId("my-beyondcorp-security-gateway")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-beyondcorp-security-gateway:
///     fn::invoke:
///       function: gcp:beyondcorp:getSecurityGateway
///       arguments:
///         securityGatewayId: my-beyondcorp-security-gateway
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_security_gateway_get_security_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGatewayResult> getSecurityGateway(
  GetSecurityGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGateway:getSecurityGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayResult.fromMap(result);
}

pulumi.Output<GetSecurityGatewayResult> getSecurityGatewayOutput(
  GetSecurityGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGateway:getSecurityGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityGatewayResult.fromMap);
}

/// Retrieves the current IAM policy data for securitygatewayapplication
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.beyondcorp.getSecurityGatewayApplicationIamPolicy({
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.beyondcorp.get_security_gateway_application_iam_policy(project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Beyondcorp.GetSecurityGatewayApplicationIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupSecurityGatewayApplicationIamPolicy(ctx, &beyondcorp.LookupSecurityGatewayApplicationIamPolicyArgs{
/// 			Project:           pulumi.StringRef(example.Project),
/// 			SecurityGatewayId: example.SecurityGatewayId,
/// 			ApplicationId:     example.ApplicationId,
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
/// data "gcp_beyondcorp_getsecuritygatewayapplicationiampolicy" "policy" {
///   project             = example.project
///   security_gateway_id = example.securityGatewayId
///   application_id      = example.applicationId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayApplicationIamPolicyArgs;
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
///         final var policy = BeyondcorpFunctions.getSecurityGatewayApplicationIamPolicy(GetSecurityGatewayApplicationIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .applicationId(example.get("applicationId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:beyondcorp:getSecurityGatewayApplicationIamPolicy
///       arguments:
///         project: ${example.project}
///         securityGatewayId: ${example.securityGatewayId}
///         applicationId: ${example.applicationId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_security_gateway_application_iam_policy_get_security_gateway_application_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGatewayApplicationIamPolicyResult> getSecurityGatewayApplicationIamPolicy(
  GetSecurityGatewayApplicationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayApplicationIamPolicy:getSecurityGatewayApplicationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayApplicationIamPolicyResult.fromMap(result);
}

pulumi.Output<GetSecurityGatewayApplicationIamPolicyResult> getSecurityGatewayApplicationIamPolicyOutput(
  GetSecurityGatewayApplicationIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayApplicationIamPolicy:getSecurityGatewayApplicationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityGatewayApplicationIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for securitygateway
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.beyondcorp.getSecurityGatewayIamPolicy({
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.beyondcorp.get_security_gateway_iam_policy(project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Beyondcorp.GetSecurityGatewayIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupSecurityGatewayIamPolicy(ctx, &beyondcorp.LookupSecurityGatewayIamPolicyArgs{
/// 			Project:           pulumi.StringRef(example.Project),
/// 			Location:          pulumi.StringRef(example.Location),
/// 			SecurityGatewayId: example.SecurityGatewayId,
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
/// data "gcp_beyondcorp_getsecuritygatewayiampolicy" "policy" {
///   project             = example.project
///   location            = example.location
///   security_gateway_id = example.securityGatewayId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayIamPolicyArgs;
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
///         final var policy = BeyondcorpFunctions.getSecurityGatewayIamPolicy(GetSecurityGatewayIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .securityGatewayId(example.get("securityGatewayId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:beyondcorp:getSecurityGatewayIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         securityGatewayId: ${example.securityGatewayId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_security_gateway_iam_policy_get_security_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGatewayIamPolicyResult> getSecurityGatewayIamPolicy(
  GetSecurityGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayIamPolicy:getSecurityGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayIamPolicyResult.fromMap(result);
}

pulumi.Output<GetSecurityGatewayIamPolicyResult> getSecurityGatewayIamPolicyOutput(
  GetSecurityGatewayIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayIamPolicy:getSecurityGatewayIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityGatewayIamPolicyResult.fromMap);
}
