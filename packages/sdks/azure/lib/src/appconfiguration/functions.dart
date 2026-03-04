import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_key_args.dart';
import 'get_configuration_key_result.dart';
import 'get_configuration_keys_args.dart';
import 'get_configuration_keys_result.dart';
import 'get_configuration_store_args.dart';
import 'get_configuration_store_result.dart';

/// Use this data source to access information about an existing Azure App Configuration Key.
///
/// &gt; **Note:** App Configuration Keys are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.appconfiguration.getConfigurationKey({
///     configurationStoreId: appconf.id,
///     key: "appConfKey1",
///     label: "somelabel",
/// });
/// export const value = test.then(test => test.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.appconfiguration.get_configuration_key(configuration_store_id=appconf["id"],
///     key="appConfKey1",
///     label="somelabel")
/// pulumi.export("value", test.value)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.AppConfiguration.GetConfigurationKey.Invoke(new()
///     {
///         ConfigurationStoreId = appconf.Id,
///         Key = "appConfKey1",
///         Label = "somelabel",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["value"] = test.Apply(getConfigurationKeyResult => getConfigurationKeyResult.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := appconfiguration.LookupConfigurationKey(ctx, &appconfiguration.LookupConfigurationKeyArgs{
/// 			ConfigurationStoreId: appconf.Id,
/// 			Key:                  "appConfKey1",
/// 			Label:                pulumi.StringRef("somelabel"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("value", test.Value)
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
/// import com.pulumi.azure.appconfiguration.AppconfigurationFunctions;
/// import com.pulumi.azure.appconfiguration.inputs.GetConfigurationKeyArgs;
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
///         final var test = AppconfigurationFunctions.getConfigurationKey(GetConfigurationKeyArgs.builder()
///             .configurationStoreId(appconf.id())
///             .key("appConfKey1")
///             .label("somelabel")
///             .build());
///
///         ctx.export("value", test.value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:appconfiguration:getConfigurationKey
///       arguments:
///         configurationStoreId: ${appconf.id}
///         key: appConfKey1
///         label: somelabel
/// outputs:
///   value: ${test.value}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfiguration_get_configuration_key_get_configuration_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationKeyResult> getConfigurationKey(
  GetConfigurationKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appconfiguration/getConfigurationKey:getConfigurationKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationKeyResult.fromMap(result);
}

/// Use this data source to access information about existing Azure App Configuration Keys.
///
/// &gt; **Note:** App Configuration Keys are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.appconfiguration.getConfigurationKeys({
///     configurationStoreId: appconf.id,
/// });
/// export const value = test.then(test => test.items);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.appconfiguration.get_configuration_keys(configuration_store_id=appconf["id"])
/// pulumi.export("value", test.items)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.AppConfiguration.GetConfigurationKeys.Invoke(new()
///     {
///         ConfigurationStoreId = appconf.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["value"] = test.Apply(getConfigurationKeysResult => getConfigurationKeysResult.Items),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := appconfiguration.GetConfigurationKeys(ctx, &appconfiguration.GetConfigurationKeysArgs{
/// 			ConfigurationStoreId: appconf.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("value", test.Items)
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
/// import com.pulumi.azure.appconfiguration.AppconfigurationFunctions;
/// import com.pulumi.azure.appconfiguration.inputs.GetConfigurationKeysArgs;
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
///         final var test = AppconfigurationFunctions.getConfigurationKeys(GetConfigurationKeysArgs.builder()
///             .configurationStoreId(appconf.id())
///             .build());
///
///         ctx.export("value", test.items());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:appconfiguration:getConfigurationKeys
///       arguments:
///         configurationStoreId: ${appconf.id}
/// outputs:
///   value: ${test.items}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfiguration_get_configuration_keys_get_configuration_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationKeysResult> getConfigurationKeys(
  GetConfigurationKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appconfiguration/getConfigurationKeys:getConfigurationKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationKeysResult.fromMap(result);
}

/// Use this data source to access information about an existing App Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appconfiguration.getConfigurationStore({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appconfiguration.get_configuration_store(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.AppConfiguration.GetConfigurationStore.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getConfigurationStoreResult => getConfigurationStoreResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appconfiguration.LookupConfigurationStore(ctx, &appconfiguration.LookupConfigurationStoreArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.appconfiguration.AppconfigurationFunctions;
/// import com.pulumi.azure.appconfiguration.inputs.GetConfigurationStoreArgs;
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
///         final var example = AppconfigurationFunctions.getConfigurationStore(GetConfigurationStoreArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:appconfiguration:getConfigurationStore
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.AppConfiguration` - 2024-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfiguration_get_configuration_store_get_configuration_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationStoreResult> getConfigurationStore(
  GetConfigurationStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appconfiguration/getConfigurationStore:getConfigurationStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationStoreResult.fromMap(result);
}
