import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_iam_policy_args.dart';
import 'get_account_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Billing Account.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.billing.getAccountIamPolicy({
///     billingAccountId: "MEEP-MEEP-MEEP-MEEP-MEEP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.billing.get_account_iam_policy(billing_account_id="MEEP-MEEP-MEEP-MEEP-MEEP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Billing.GetAccountIamPolicy.Invoke(new()
///     {
///         BillingAccountId = "MEEP-MEEP-MEEP-MEEP-MEEP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.LookupAccountIamPolicy(ctx, &billing.LookupAccountIamPolicyArgs{
/// 			BillingAccountId: "MEEP-MEEP-MEEP-MEEP-MEEP",
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
/// data "gcp_billing_getaccountiampolicy" "policy" {
///   billing_account_id = "MEEP-MEEP-MEEP-MEEP-MEEP"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.BillingFunctions;
/// import com.pulumi.gcp.billing.inputs.GetAccountIamPolicyArgs;
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
///         final var policy = BillingFunctions.getAccountIamPolicy(GetAccountIamPolicyArgs.builder()
///             .billingAccountId("MEEP-MEEP-MEEP-MEEP-MEEP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:billing:getAccountIamPolicy
///       arguments:
///         billingAccountId: MEEP-MEEP-MEEP-MEEP-MEEP
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_account_iam_policy_get_account_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountIamPolicyResult> getAccountIamPolicy(
  GetAccountIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:billing/getAccountIamPolicy:getAccountIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAccountIamPolicyResult> getAccountIamPolicyOutput(
  GetAccountIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:billing/getAccountIamPolicy:getAccountIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountIamPolicyResult.fromMap);
}
