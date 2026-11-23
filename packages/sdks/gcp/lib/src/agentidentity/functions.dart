import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_provider_iam_policy_args.dart';
import 'get_auth_provider_iam_policy_result.dart';

/// Retrieves the current IAM policy data for authprovider
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.agentidentity.getAuthProviderIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.agentidentity.get_auth_provider_iam_policy(project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.AgentIdentity.GetAuthProviderIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentidentity.LookupAuthProviderIamPolicy(ctx, &agentidentity.LookupAuthProviderIamPolicyArgs{
/// 			Project:        pulumi.StringRef(_default.Project),
/// 			Location:       pulumi.StringRef(_default.Location),
/// 			AuthProviderId: _default.AuthProviderId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_agentidentity_auth_provider_iam_policy" "policy" {
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AgentidentityFunctions;
/// import com.pulumi.gcp.agentidentity.inputs.GetAuthProviderIamPolicyArgs;
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
///         final var policy = AgentidentityFunctions.getAuthProviderIamPolicy(GetAuthProviderIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:agentidentity:getAuthProviderIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         authProviderId: ${default.authProviderId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_agentidentity_get_auth_provider_iam_policy_get_auth_provider_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthProviderIamPolicyResult> getAuthProviderIamPolicy(
  GetAuthProviderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:agentidentity/getAuthProviderIamPolicy:getAuthProviderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthProviderIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAuthProviderIamPolicyResult> getAuthProviderIamPolicyOutput(
  GetAuthProviderIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:agentidentity/getAuthProviderIamPolicy:getAuthProviderIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthProviderIamPolicyResult.fromMap);
}
