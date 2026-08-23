import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enrollment_account_scope_args.dart';
import 'get_enrollment_account_scope_result.dart';
import 'get_mca_account_scope_args.dart';
import 'get_mca_account_scope_result.dart';
import 'get_mpa_account_scope_args.dart';
import 'get_mpa_account_scope_result.dart';

/// Use this data source to access information about an existing Enrollment Account Billing Scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.billing.getEnrollmentAccountScope({
///     billingAccountName: "existing",
///     enrollmentAccountName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.billing.get_enrollment_account_scope(billing_account_name="existing",
///     enrollment_account_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Billing.GetEnrollmentAccountScope.Invoke(new()
///     {
///         BillingAccountName = "existing",
///         EnrollmentAccountName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getEnrollmentAccountScopeResult => getEnrollmentAccountScopeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetEnrollmentAccountScope(ctx, &billing.GetEnrollmentAccountScopeArgs{
/// 			BillingAccountName:    "existing",
/// 			EnrollmentAccountName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_billing_getenrollmentaccountscope" "example" {
///   billing_account_name    = "existing"
///   enrollment_account_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_billing_getenrollmentaccountscope.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.billing.BillingFunctions;
/// import com.pulumi.azure.billing.inputs.GetEnrollmentAccountScopeArgs;
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
///         final var example = BillingFunctions.getEnrollmentAccountScope(GetEnrollmentAccountScopeArgs.builder()
///             .billingAccountName("existing")
///             .enrollmentAccountName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:billing:getEnrollmentAccountScope
///       arguments:
///         billingAccountName: existing
///         enrollmentAccountName: existing
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_enrollment_account_scope_get_enrollment_account_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnrollmentAccountScopeResult> getEnrollmentAccountScope(
  GetEnrollmentAccountScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:billing/getEnrollmentAccountScope:getEnrollmentAccountScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnrollmentAccountScopeResult.fromMap(result);
}

/// Use this data source to access an ID for your MCA Account billing scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.billing.getMcaAccountScope({
///     billingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     billingProfileName: "PE2Q-NOIT-BG7-TGB",
///     invoiceSectionName: "MTT4-OBS7-PJA-TGB",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.billing.get_mca_account_scope(billing_account_name="e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     billing_profile_name="PE2Q-NOIT-BG7-TGB",
///     invoice_section_name="MTT4-OBS7-PJA-TGB")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Billing.GetMcaAccountScope.Invoke(new()
///     {
///         BillingAccountName = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///         BillingProfileName = "PE2Q-NOIT-BG7-TGB",
///         InvoiceSectionName = "MTT4-OBS7-PJA-TGB",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getMcaAccountScopeResult => getMcaAccountScopeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetMcaAccountScope(ctx, &billing.GetMcaAccountScopeArgs{
/// 			BillingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
/// 			BillingProfileName: "PE2Q-NOIT-BG7-TGB",
/// 			InvoiceSectionName: "MTT4-OBS7-PJA-TGB",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_billing_getmcaaccountscope" "example" {
///   billing_account_name = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31"
///   billing_profile_name = "PE2Q-NOIT-BG7-TGB"
///   invoice_section_name = "MTT4-OBS7-PJA-TGB"
/// }
///
/// output "id" {
///   value = data.azure_billing_getmcaaccountscope.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.billing.BillingFunctions;
/// import com.pulumi.azure.billing.inputs.GetMcaAccountScopeArgs;
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
///         final var example = BillingFunctions.getMcaAccountScope(GetMcaAccountScopeArgs.builder()
///             .billingAccountName("e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31")
///             .billingProfileName("PE2Q-NOIT-BG7-TGB")
///             .invoiceSectionName("MTT4-OBS7-PJA-TGB")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:billing:getMcaAccountScope
///       arguments:
///         billingAccountName: e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31
///         billingProfileName: PE2Q-NOIT-BG7-TGB
///         invoiceSectionName: MTT4-OBS7-PJA-TGB
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_mca_account_scope_get_mca_account_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMcaAccountScopeResult> getMcaAccountScope(
  GetMcaAccountScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:billing/getMcaAccountScope:getMcaAccountScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMcaAccountScopeResult.fromMap(result);
}

/// Use this data source to access an ID for your MPA Account billing scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.billing.getMpaAccountScope({
///     billingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     customerName: "2281f543-7321-4cf9-1e23-edb4Oc31a31c",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.billing.get_mpa_account_scope(billing_account_name="e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     customer_name="2281f543-7321-4cf9-1e23-edb4Oc31a31c")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Billing.GetMpaAccountScope.Invoke(new()
///     {
///         BillingAccountName = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///         CustomerName = "2281f543-7321-4cf9-1e23-edb4Oc31a31c",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getMpaAccountScopeResult => getMpaAccountScopeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetMpaAccountScope(ctx, &billing.GetMpaAccountScopeArgs{
/// 			BillingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
/// 			CustomerName:       "2281f543-7321-4cf9-1e23-edb4Oc31a31c",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_billing_getmpaaccountscope" "example" {
///   billing_account_name = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31"
///   customer_name        = "2281f543-7321-4cf9-1e23-edb4Oc31a31c"
/// }
///
/// output "id" {
///   value = data.azure_billing_getmpaaccountscope.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.billing.BillingFunctions;
/// import com.pulumi.azure.billing.inputs.GetMpaAccountScopeArgs;
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
///         final var example = BillingFunctions.getMpaAccountScope(GetMpaAccountScopeArgs.builder()
///             .billingAccountName("e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31")
///             .customerName("2281f543-7321-4cf9-1e23-edb4Oc31a31c")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:billing:getMpaAccountScope
///       arguments:
///         billingAccountName: e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31
///         customerName: 2281f543-7321-4cf9-1e23-edb4Oc31a31c
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_mpa_account_scope_get_mpa_account_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMpaAccountScopeResult> getMpaAccountScope(
  GetMpaAccountScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:billing/getMpaAccountScope:getMpaAccountScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMpaAccountScopeResult.fromMap(result);
}
