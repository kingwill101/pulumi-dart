import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_pool_args.dart';
import 'get_pool_result.dart';

/// Use this data source to access information about an existing Batch Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.batch.getAccount({
///     name: "testbatchaccount",
///     resourceGroupName: "test",
/// });
/// export const poolAllocationMode = example.then(example => example.poolAllocationMode);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.batch.get_account(name="testbatchaccount",
///     resource_group_name="test")
/// pulumi.export("poolAllocationMode", example.pool_allocation_mode)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Batch.GetAccount.Invoke(new()
///     {
///         Name = "testbatchaccount",
///         ResourceGroupName = "test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["poolAllocationMode"] = example.Apply(getAccountResult => getAccountResult.PoolAllocationMode),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := batch.LookupAccount(ctx, &batch.LookupAccountArgs{
/// 			Name:              "testbatchaccount",
/// 			ResourceGroupName: "test",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("poolAllocationMode", example.PoolAllocationMode)
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
/// import com.pulumi.azure.batch.BatchFunctions;
/// import com.pulumi.azure.batch.inputs.GetAccountArgs;
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
///         final var example = BatchFunctions.getAccount(GetAccountArgs.builder()
///             .name("testbatchaccount")
///             .resourceGroupName("test")
///             .build());
///
///         ctx.export("poolAllocationMode", example.poolAllocationMode());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:batch:getAccount
///       arguments:
///         name: testbatchaccount
///         resourceGroupName: test
/// outputs:
///   poolAllocationMode: ${example.poolAllocationMode}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:batch/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Use this data source to access information about an existing Batch Application instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.batch.getApplication({
///     name: "testapplication",
///     resourceGroupName: "test",
///     accountName: "testbatchaccount",
/// });
/// export const batchApplicationId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.batch.get_application(name="testapplication",
///     resource_group_name="test",
///     account_name="testbatchaccount")
/// pulumi.export("batchApplicationId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Batch.GetApplication.Invoke(new()
///     {
///         Name = "testapplication",
///         ResourceGroupName = "test",
///         AccountName = "testbatchaccount",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["batchApplicationId"] = example.Apply(getApplicationResult => getApplicationResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := batch.LookupApplication(ctx, &batch.LookupApplicationArgs{
/// 			Name:              "testapplication",
/// 			ResourceGroupName: "test",
/// 			AccountName:       "testbatchaccount",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("batchApplicationId", example.Id)
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
/// import com.pulumi.azure.batch.BatchFunctions;
/// import com.pulumi.azure.batch.inputs.GetApplicationArgs;
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
///         final var example = BatchFunctions.getApplication(GetApplicationArgs.builder()
///             .name("testapplication")
///             .resourceGroupName("test")
///             .accountName("testbatchaccount")
///             .build());
///
///         ctx.export("batchApplicationId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:batch:getApplication
///       arguments:
///         name: testapplication
///         resourceGroupName: test
///         accountName: testbatchaccount
/// outputs:
///   batchApplicationId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:batch/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Use this data source to access information about an existing certificate in a Batch Account.
///
/// &gt; **Note:** The `azure.batch.Certificate` data source has been deprecated due to Azure retiring the Azure Batch Account Certificates Feature, and will be removed in v5.0 of the AzureRM provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.batch.getCertificate({
///     name: "SHA1-42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
///     accountName: "examplebatchaccount",
///     resourceGroupName: "example",
/// });
/// export const thumbprint = example.then(example => example.thumbprint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.batch.get_certificate(name="SHA1-42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
///     account_name="examplebatchaccount",
///     resource_group_name="example")
/// pulumi.export("thumbprint", example.thumbprint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Batch.GetCertificate.Invoke(new()
///     {
///         Name = "SHA1-42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
///         AccountName = "examplebatchaccount",
///         ResourceGroupName = "example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["thumbprint"] = example.Apply(getCertificateResult => getCertificateResult.Thumbprint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := batch.LookupCertificate(ctx, &batch.LookupCertificateArgs{
/// 			Name:              "SHA1-42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
/// 			AccountName:       "examplebatchaccount",
/// 			ResourceGroupName: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("thumbprint", example.Thumbprint)
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
/// import com.pulumi.azure.batch.BatchFunctions;
/// import com.pulumi.azure.batch.inputs.GetCertificateArgs;
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
///         final var example = BatchFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("SHA1-42C107874FD0E4A9583292A2F1098E8FE4B2EDDA")
///             .accountName("examplebatchaccount")
///             .resourceGroupName("example")
///             .build());
///
///         ctx.export("thumbprint", example.thumbprint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:batch:getCertificate
///       arguments:
///         name: SHA1-42C107874FD0E4A9583292A2F1098E8FE4B2EDDA
///         accountName: examplebatchaccount
///         resourceGroupName: example
/// outputs:
///   thumbprint: ${example.thumbprint}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:batch/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Use this data source to access information about an existing Batch pool
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.batch.getPool({
///     name: "examplebatchpool",
///     accountName: "examplebatchaccount",
///     resourceGroupName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.batch.get_pool(name="examplebatchpool",
///     account_name="examplebatchaccount",
///     resource_group_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Batch.GetPool.Invoke(new()
///     {
///         Name = "examplebatchpool",
///         AccountName = "examplebatchaccount",
///         ResourceGroupName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.LookupPool(ctx, &batch.LookupPoolArgs{
/// 			Name:              "examplebatchpool",
/// 			AccountName:       "examplebatchaccount",
/// 			ResourceGroupName: "example",
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
/// import com.pulumi.azure.batch.BatchFunctions;
/// import com.pulumi.azure.batch.inputs.GetPoolArgs;
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
///         final var example = BatchFunctions.getPool(GetPoolArgs.builder()
///             .name("examplebatchpool")
///             .accountName("examplebatchaccount")
///             .resourceGroupName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:batch:getPool
///       arguments:
///         name: examplebatchpool
///         accountName: examplebatchaccount
///         resourceGroupName: example
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_pool_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:batch/getPool:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}
