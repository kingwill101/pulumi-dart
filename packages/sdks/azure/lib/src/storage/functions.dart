import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_blob_container_sasargs.dart';
import 'get_account_blob_container_sasresult.dart';
import 'get_account_result.dart';
import 'get_account_sasargs.dart';
import 'get_account_sasresult.dart';
import 'get_blob_args.dart';
import 'get_blob_result.dart';
import 'get_containers_args.dart';
import 'get_containers_result.dart';
import 'get_encryption_scope_args.dart';
import 'get_encryption_scope_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_queue_args.dart';
import 'get_queue_result.dart';
import 'get_share_args.dart';
import 'get_share_result.dart';
import 'get_storage_container_args.dart';
import 'get_storage_container_result.dart';
import 'get_sync_args.dart';
import 'get_sync_group_args.dart';
import 'get_sync_group_result.dart';
import 'get_sync_result.dart';
import 'get_table_args.dart';
import 'get_table_entities_args.dart';
import 'get_table_entities_result.dart';
import 'get_table_entity_args.dart';
import 'get_table_entity_result.dart';
import 'get_table_result.dart';

/// Use this data source to access information about an existing Storage Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getAccount({
///     name: "packerimages",
///     resourceGroupName: "packer-storage",
/// });
/// export const storageAccountTier = example.then(example => example.accountTier);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_account(name="packerimages",
///     resource_group_name="packer-storage")
/// pulumi.export("storageAccountTier", example.account_tier)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "packerimages",
///         ResourceGroupName = "packer-storage",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["storageAccountTier"] = example.Apply(getAccountResult => getAccountResult.AccountTier),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupAccount(ctx, &storage.LookupAccountArgs{
/// 			Name:              "packerimages",
/// 			ResourceGroupName: pulumi.StringRef("packer-storage"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("storageAccountTier", example.AccountTier)
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
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
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("packerimages")
///             .resourceGroupName("packer-storage")
///             .build());
///
///         ctx.export("storageAccountTier", example.accountTier());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: packerimages
///         resourceGroupName: packer-storage
/// outputs:
///   storageAccountTier: ${example.accountTier}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Use this data source to obtain a Shared Access Signature (SAS Token) for an existing Storage Account Blob Container.
///
/// Shared access signatures allow fine-grained, ephemeral access control to various aspects of an Azure Storage Account Blob Container.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const rg = new azure.core.ResourceGroup("rg", {
///     name: "resourceGroupName",
///     location: "West Europe",
/// });
/// const storage = new azure.storage.Account("storage", {
///     name: "storageaccountname",
///     resourceGroupName: rg.name,
///     location: rg.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const container = new azure.storage.Container("container", {
///     name: "mycontainer",
///     storageAccountName: storage.name,
///     containerAccessType: "private",
/// });
/// const example = azure.storage.getAccountBlobContainerSASOutput({
///     connectionString: storage.primaryConnectionString,
///     containerName: container.name,
///     httpsOnly: true,
///     ipAddress: "168.1.5.65",
///     start: "2018-03-21",
///     expiry: "2018-03-21",
///     permissions: {
///         read: true,
///         add: true,
///         create: false,
///         write: false,
///         "delete": true,
///         list: true,
///     },
///     cacheControl: "max-age=5",
///     contentDisposition: "inline",
///     contentEncoding: "deflate",
///     contentLanguage: "en-US",
///     contentType: "application/json",
/// });
/// export const sasUrlQueryString = example.apply(example => example.sas);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// rg = azure.core.ResourceGroup("rg",
///     name="resourceGroupName",
///     location="West Europe")
/// storage = azure.storage.Account("storage",
///     name="storageaccountname",
///     resource_group_name=rg.name,
///     location=rg.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// container = azure.storage.Container("container",
///     name="mycontainer",
///     storage_account_name=storage.name,
///     container_access_type="private")
/// example = azure.storage.get_account_blob_container_sas_output(connection_string=storage.primary_connection_string,
///     container_name=container.name,
///     https_only=True,
///     ip_address="168.1.5.65",
///     start="2018-03-21",
///     expiry="2018-03-21",
///     permissions={
///         "read": True,
///         "add": True,
///         "create": False,
///         "write": False,
///         "delete": True,
///         "list": True,
///     },
///     cache_control="max-age=5",
///     content_disposition="inline",
///     content_encoding="deflate",
///     content_language="en-US",
///     content_type="application/json")
/// pulumi.export("sasUrlQueryString", example.sas)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rg = new Azure.Core.ResourceGroup("rg", new()
///     {
///         Name = "resourceGroupName",
///         Location = "West Europe",
///     });
///
///     var storage = new Azure.Storage.Account("storage", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = rg.Name,
///         Location = rg.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var container = new Azure.Storage.Container("container", new()
///     {
///         Name = "mycontainer",
///         StorageAccountName = storage.Name,
///         ContainerAccessType = "private",
///     });
///
///     var example = Azure.Storage.GetAccountBlobContainerSAS.Invoke(new()
///     {
///         ConnectionString = storage.PrimaryConnectionString,
///         ContainerName = container.Name,
///         HttpsOnly = true,
///         IpAddress = "168.1.5.65",
///         Start = "2018-03-21",
///         Expiry = "2018-03-21",
///         Permissions = new Azure.Storage.Inputs.GetAccountBlobContainerSASPermissionsInputArgs
///         {
///             Read = true,
///             Add = true,
///             Create = false,
///             Write = false,
///             Delete = true,
///             List = true,
///         },
///         CacheControl = "max-age=5",
///         ContentDisposition = "inline",
///         ContentEncoding = "deflate",
///         ContentLanguage = "en-US",
///         ContentType = "application/json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["sasUrlQueryString"] = example.Apply(getAccountBlobContainerSASResult => getAccountBlobContainerSASResult.Sas),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		rg, err := core.NewResourceGroup(ctx, "rg", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourceGroupName"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		storage, err := storage.NewAccount(ctx, "storage", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      rg.Name,
/// 			Location:               rg.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		container, err := storage.NewContainer(ctx, "container", &storage.ContainerArgs{
/// 			Name:                pulumi.String("mycontainer"),
/// 			StorageAccountName:  storage.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := storage.GetAccountBlobContainerSASOutput(ctx, storage.GetAccountBlobContainerSASOutputArgs{
/// 			ConnectionString: storage.PrimaryConnectionString,
/// 			ContainerName:    container.Name,
/// 			HttpsOnly:        pulumi.Bool(true),
/// 			IpAddress:        pulumi.String("168.1.5.65"),
/// 			Start:            pulumi.String("2018-03-21"),
/// 			Expiry:           pulumi.String("2018-03-21"),
/// 			Permissions: &storage.GetAccountBlobContainerSASPermissionsArgs{
/// 				Read:   pulumi.Bool(true),
/// 				Add:    pulumi.Bool(true),
/// 				Create: pulumi.Bool(false),
/// 				Write:  pulumi.Bool(false),
/// 				Delete: pulumi.Bool(true),
/// 				List:   pulumi.Bool(true),
/// 			},
/// 			CacheControl:       pulumi.String("max-age=5"),
/// 			ContentDisposition: pulumi.String("inline"),
/// 			ContentEncoding:    pulumi.String("deflate"),
/// 			ContentLanguage:    pulumi.String("en-US"),
/// 			ContentType:        pulumi.String("application/json"),
/// 		}, nil)
/// 		ctx.Export("sasUrlQueryString", example.ApplyT(func(example storage.GetAccountBlobContainerSASResult) (*string, error) {
/// 			return &example.Sas, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountBlobContainerSASArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountBlobContainerSASPermissionsArgs;
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
///         var rg = new ResourceGroup("rg", ResourceGroupArgs.builder()
///             .name("resourceGroupName")
///             .location("West Europe")
///             .build());
///
///         var storage = new Account("storage", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(rg.name())
///             .location(rg.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var container = new Container("container", ContainerArgs.builder()
///             .name("mycontainer")
///             .storageAccountName(storage.name())
///             .containerAccessType("private")
///             .build());
///
///         final var example = StorageFunctions.getAccountBlobContainerSAS(GetAccountBlobContainerSASArgs.builder()
///             .connectionString(storage.primaryConnectionString())
///             .containerName(container.name())
///             .httpsOnly(true)
///             .ipAddress("168.1.5.65")
///             .start("2018-03-21")
///             .expiry("2018-03-21")
///             .permissions(GetAccountBlobContainerSASPermissionsArgs.builder()
///                 .read(true)
///                 .add(true)
///                 .create(false)
///                 .write(false)
///                 .delete(true)
///                 .list(true)
///                 .build())
///             .cacheControl("max-age=5")
///             .contentDisposition("inline")
///             .contentEncoding("deflate")
///             .contentLanguage("en-US")
///             .contentType("application/json")
///             .build());
///
///         ctx.export("sasUrlQueryString", example.applyValue(_example -> _example.sas()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rg:
///     type: azure:core:ResourceGroup
///     properties:
///       name: resourceGroupName
///       location: West Europe
///   storage:
///     type: azure:storage:Account
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${rg.name}
///       location: ${rg.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   container:
///     type: azure:storage:Container
///     properties:
///       name: mycontainer
///       storageAccountName: ${storage.name}
///       containerAccessType: private
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccountBlobContainerSAS
///       arguments:
///         connectionString: ${storage.primaryConnectionString}
///         containerName: ${container.name}
///         httpsOnly: true
///         ipAddress: 168.1.5.65
///         start: 2018-03-21
///         expiry: 2018-03-21
///         permissions:
///           read: true
///           add: true
///           create: false
///           write: false
///           delete: true
///           list: true
///         cacheControl: max-age=5
///         contentDisposition: inline
///         contentEncoding: deflate
///         contentLanguage: en-US
///         contentType: application/json
/// outputs:
///   sasUrlQueryString: ${example.sas}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_account_blob_container_sas_get_account_blob_container_sasargs_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountBlobContainerSASResult> getAccountBlobContainerSAS(
  GetAccountBlobContainerSASArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getAccountBlobContainerSAS:getAccountBlobContainerSAS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountBlobContainerSASResult.fromMap(result);
}

/// Use this data source to obtain a Shared Access Signature (SAS Token) for an existing Storage Account.
///
/// Shared access signatures allow fine-grained, ephemeral access control to various aspects of an Azure Storage Account.
///
/// Note that this is an [Account SAS](https://docs.microsoft.com/rest/api/storageservices/constructing-an-account-sas)
/// and *not* a [Service SAS](https://docs.microsoft.com/rest/api/storageservices/constructing-a-service-sas).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "resourceGroupName",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const example = azure.storage.getAccountSASOutput({
///     connectionString: exampleAccount.primaryConnectionString,
///     httpsOnly: true,
///     signedVersion: "2022-11-02",
///     resourceTypes: {
///         service: true,
///         container: false,
///         object: false,
///     },
///     services: {
///         blob: true,
///         queue: false,
///         table: false,
///         file: false,
///     },
///     start: "2018-03-21T00:00:00Z",
///     expiry: "2020-03-21T00:00:00Z",
///     permissions: {
///         read: true,
///         write: true,
///         "delete": false,
///         list: false,
///         add: true,
///         create: true,
///         update: false,
///         process: false,
///         tag: false,
///         filter: false,
///     },
/// });
/// export const sasUrlQueryString = example.apply(example => example.sas);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="resourceGroupName",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     tags={
///         "environment": "staging",
///     })
/// example = azure.storage.get_account_sas_output(connection_string=example_account.primary_connection_string,
///     https_only=True,
///     signed_version="2022-11-02",
///     resource_types={
///         "service": True,
///         "container": False,
///         "object": False,
///     },
///     services={
///         "blob": True,
///         "queue": False,
///         "table": False,
///         "file": False,
///     },
///     start="2018-03-21T00:00:00Z",
///     expiry="2020-03-21T00:00:00Z",
///     permissions={
///         "read": True,
///         "write": True,
///         "delete": False,
///         "list": False,
///         "add": True,
///         "create": True,
///         "update": False,
///         "process": False,
///         "tag": False,
///         "filter": False,
///     })
/// pulumi.export("sasUrlQueryString", example.sas)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "resourceGroupName",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var example = Azure.Storage.GetAccountSAS.Invoke(new()
///     {
///         ConnectionString = exampleAccount.PrimaryConnectionString,
///         HttpsOnly = true,
///         SignedVersion = "2022-11-02",
///         ResourceTypes = new Azure.Storage.Inputs.GetAccountSASResourceTypesInputArgs
///         {
///             Service = true,
///             Container = false,
///             Object = false,
///         },
///         Services = new Azure.Storage.Inputs.GetAccountSASServicesInputArgs
///         {
///             Blob = true,
///             Queue = false,
///             Table = false,
///             File = false,
///         },
///         Start = "2018-03-21T00:00:00Z",
///         Expiry = "2020-03-21T00:00:00Z",
///         Permissions = new Azure.Storage.Inputs.GetAccountSASPermissionsInputArgs
///         {
///             Read = true,
///             Write = true,
///             Delete = false,
///             List = false,
///             Add = true,
///             Create = true,
///             Update = false,
///             Process = false,
///             Tag = false,
///             Filter = false,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["sasUrlQueryString"] = example.Apply(getAccountSASResult => getAccountSASResult.Sas),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourceGroupName"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := storage.GetAccountSASOutput(ctx, storage.GetAccountSASOutputArgs{
/// 			ConnectionString: exampleAccount.PrimaryConnectionString,
/// 			HttpsOnly:        pulumi.Bool(true),
/// 			SignedVersion:    pulumi.String("2022-11-02"),
/// 			ResourceTypes: &storage.GetAccountSASResourceTypesArgs{
/// 				Service:   pulumi.Bool(true),
/// 				Container: pulumi.Bool(false),
/// 				Object:    pulumi.Bool(false),
/// 			},
/// 			Services: &storage.GetAccountSASServicesArgs{
/// 				Blob:  pulumi.Bool(true),
/// 				Queue: pulumi.Bool(false),
/// 				Table: pulumi.Bool(false),
/// 				File:  pulumi.Bool(false),
/// 			},
/// 			Start:  pulumi.String("2018-03-21T00:00:00Z"),
/// 			Expiry: pulumi.String("2020-03-21T00:00:00Z"),
/// 			Permissions: &storage.GetAccountSASPermissionsArgs{
/// 				Read:    pulumi.Bool(true),
/// 				Write:   pulumi.Bool(true),
/// 				Delete:  pulumi.Bool(false),
/// 				List:    pulumi.Bool(false),
/// 				Add:     pulumi.Bool(true),
/// 				Create:  pulumi.Bool(true),
/// 				Update:  pulumi.Bool(false),
/// 				Process: pulumi.Bool(false),
/// 				Tag:     pulumi.Bool(false),
/// 				Filter:  pulumi.Bool(false),
/// 			},
/// 		}, nil)
/// 		ctx.Export("sasUrlQueryString", example.ApplyT(func(example storage.GetAccountSASResult) (*string, error) {
/// 			return &example.Sas, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountSASArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASResourceTypesArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASServicesArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASPermissionsArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("resourceGroupName")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         final var example = StorageFunctions.getAccountSAS(GetAccountSASArgs.builder()
///             .connectionString(exampleAccount.primaryConnectionString())
///             .httpsOnly(true)
///             .signedVersion("2022-11-02")
///             .resourceTypes(GetAccountSASResourceTypesArgs.builder()
///                 .service(true)
///                 .container(false)
///                 .object(false)
///                 .build())
///             .services(GetAccountSASServicesArgs.builder()
///                 .blob(true)
///                 .queue(false)
///                 .table(false)
///                 .file(false)
///                 .build())
///             .start("2018-03-21T00:00:00Z")
///             .expiry("2020-03-21T00:00:00Z")
///             .permissions(GetAccountSASPermissionsArgs.builder()
///                 .read(true)
///                 .write(true)
///                 .delete(false)
///                 .list(false)
///                 .add(true)
///                 .create(true)
///                 .update(false)
///                 .process(false)
///                 .tag(false)
///                 .filter(false)
///                 .build())
///             .build());
///
///         ctx.export("sasUrlQueryString", example.applyValue(_example -> _example.sas()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: resourceGroupName
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///       tags:
///         environment: staging
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccountSAS
///       arguments:
///         connectionString: ${exampleAccount.primaryConnectionString}
///         httpsOnly: true
///         signedVersion: 2022-11-02
///         resourceTypes:
///           service: true
///           container: false
///           object: false
///         services:
///           blob: true
///           queue: false
///           table: false
///           file: false
///         start: 2018-03-21T00:00:00Z
///         expiry: 2020-03-21T00:00:00Z
///         permissions:
///           read: true
///           write: true
///           delete: false
///           list: false
///           add: true
///           create: true
///           update: false
///           process: false
///           tag: false
///           filter: false
/// outputs:
///   sasUrlQueryString: ${example.sas}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_account_sas_get_account_sasargs_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountSASResult> getAccountSAS(
  GetAccountSASArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getAccountSAS:getAccountSAS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountSASResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Blob.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getBlob({
///     name: "example-blob-name",
///     storageAccountName: "example-storage-account-name",
///     storageContainerName: "example-storage-container-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_blob(name="example-blob-name",
///     storage_account_name="example-storage-account-name",
///     storage_container_name="example-storage-container-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetBlob.Invoke(new()
///     {
///         Name = "example-blob-name",
///         StorageAccountName = "example-storage-account-name",
///         StorageContainerName = "example-storage-container-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupBlob(ctx, &storage.LookupBlobArgs{
/// 			Name:                 "example-blob-name",
/// 			StorageAccountName:   "example-storage-account-name",
/// 			StorageContainerName: "example-storage-container-name",
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetBlobArgs;
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
///         final var example = StorageFunctions.getBlob(GetBlobArgs.builder()
///             .name("example-blob-name")
///             .storageAccountName("example-storage-account-name")
///             .storageContainerName("example-storage-container-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getBlob
///       arguments:
///         name: example-blob-name
///         storageAccountName: example-storage-account-name
///         storageContainerName: example-storage-container-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_blob_get_blob_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobResult> getBlob(
  GetBlobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getBlob:getBlob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobResult.fromMap(result);
}

/// Use this data source to access information about the existing Storage Containers within a Storage Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getContainers({
///     storageAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/sa1",
/// });
/// export const containerId = example.then(example => example.containers?.[0]?.resourceManagerId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_containers(storage_account_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/sa1")
/// pulumi.export("containerId", example.containers[0].resource_manager_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetContainers.Invoke(new()
///     {
///         StorageAccountId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/sa1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["containerId"] = example.Apply(getContainersResult => getContainersResult.Containers[0]?.ResourceManagerId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.GetContainers(ctx, &storage.GetContainersArgs{
/// 			StorageAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/sa1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("containerId", example.Containers[0].ResourceManagerId)
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetContainersArgs;
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
///         final var example = StorageFunctions.getContainers(GetContainersArgs.builder()
///             .storageAccountId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/sa1")
///             .build());
///
///         ctx.export("containerId", example.containers()[0].resourceManagerId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getContainers
///       arguments:
///         storageAccountId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/sa1
/// outputs:
///   containerId: ${example.containers[0].resourceManagerId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_containers_get_containers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainersResult> getContainers(
  GetContainersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getContainers:getContainers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainersResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Encryption Scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getAccount({
///     name: "storageaccountname",
///     resourceGroupName: "resourcegroupname",
/// });
/// const exampleGetEncryptionScope = example.then(example => azure.storage.getEncryptionScope({
///     name: "existingStorageES",
///     storageAccountId: example.id,
/// }));
/// export const id = exampleGetEncryptionScope.then(exampleGetEncryptionScope => exampleGetEncryptionScope.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_account(name="storageaccountname",
///     resource_group_name="resourcegroupname")
/// example_get_encryption_scope = azure.storage.get_encryption_scope(name="existingStorageES",
///     storage_account_id=example.id)
/// pulumi.export("id", example_get_encryption_scope.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = "resourcegroupname",
///     });
///
///     var exampleGetEncryptionScope = Azure.Storage.GetEncryptionScope.Invoke(new()
///     {
///         Name = "existingStorageES",
///         StorageAccountId = example.Apply(getAccountResult => getAccountResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetEncryptionScope.Apply(getEncryptionScopeResult => getEncryptionScopeResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupAccount(ctx, &storage.LookupAccountArgs{
/// 			Name:              "storageaccountname",
/// 			ResourceGroupName: pulumi.StringRef("resourcegroupname"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetEncryptionScope, err := storage.LookupEncryptionScope(ctx, &storage.LookupEncryptionScopeArgs{
/// 			Name:             "existingStorageES",
/// 			StorageAccountId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetEncryptionScope.Id)
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
/// import com.pulumi.azure.storage.inputs.GetEncryptionScopeArgs;
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
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName("resourcegroupname")
///             .build());
///
///         final var exampleGetEncryptionScope = StorageFunctions.getEncryptionScope(GetEncryptionScopeArgs.builder()
///             .name("existingStorageES")
///             .storageAccountId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetEncryptionScope.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: storageaccountname
///         resourceGroupName: resourcegroupname
///   exampleGetEncryptionScope:
///     fn::invoke:
///       function: azure:storage:getEncryptionScope
///       arguments:
///         name: existingStorageES
///         storageAccountId: ${example.id}
/// outputs:
///   id: ${exampleGetEncryptionScope.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_encryption_scope_get_encryption_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptionScopeResult> getEncryptionScope(
  GetEncryptionScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getEncryptionScope:getEncryptionScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptionScopeResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Management Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getAccount({
///     name: "storageaccountname",
///     resourceGroupName: "resourcegroupname",
/// });
/// const exampleGetPolicy = example.then(example => azure.storage.getPolicy({
///     storageAccountId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_account(name="storageaccountname",
///     resource_group_name="resourcegroupname")
/// example_get_policy = azure.storage.get_policy(storage_account_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = "resourcegroupname",
///     });
///
///     var exampleGetPolicy = Azure.Storage.GetPolicy.Invoke(new()
///     {
///         StorageAccountId = example.Apply(getAccountResult => getAccountResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupAccount(ctx, &storage.LookupAccountArgs{
/// 			Name:              "storageaccountname",
/// 			ResourceGroupName: pulumi.StringRef("resourcegroupname"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.GetPolicy(ctx, &storage.GetPolicyArgs{
/// 			StorageAccountId: example.Id,
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
/// import com.pulumi.azure.storage.inputs.GetPolicyArgs;
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
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName("resourcegroupname")
///             .build());
///
///         final var exampleGetPolicy = StorageFunctions.getPolicy(GetPolicyArgs.builder()
///             .storageAccountId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: storageaccountname
///         resourceGroupName: resourcegroupname
///   exampleGetPolicy:
///     fn::invoke:
///       function: azure:storage:getPolicy
///       arguments:
///         storageAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_policy_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Queue.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getQueue({
///     name: "example-queue-name",
///     storageAccountName: "example-storage-account-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_queue(name="example-queue-name",
///     storage_account_name="example-storage-account-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetQueue.Invoke(new()
///     {
///         Name = "example-queue-name",
///         StorageAccountName = "example-storage-account-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupQueue(ctx, &storage.LookupQueueArgs{
/// 			Name:               "example-queue-name",
/// 			StorageAccountName: pulumi.StringRef("example-storage-account-name"),
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetQueueArgs;
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
///         final var example = StorageFunctions.getQueue(GetQueueArgs.builder()
///             .name("example-queue-name")
///             .storageAccountName("example-storage-account-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getQueue
///       arguments:
///         name: example-queue-name
///         storageAccountName: example-storage-account-name
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_queue_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

/// Use this data source to access information about an existing File Share.
///
/// > **Note:** Shared Key authentication will always be used for this data source, as AzureAD authentication is not supported by the Storage API for files.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getAccount({
///     name: "exampleaccount",
///     resourceGroupName: "examples",
/// });
/// const exampleGetShare = example.then(example => azure.storage.getShare({
///     name: "existing",
///     storageAccountId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_account(name="exampleaccount",
///     resource_group_name="examples")
/// example_get_share = azure.storage.get_share(name="existing",
///     storage_account_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "exampleaccount",
///         ResourceGroupName = "examples",
///     });
///
///     var exampleGetShare = Azure.Storage.GetShare.Invoke(new()
///     {
///         Name = "existing",
///         StorageAccountId = example.Apply(getAccountResult => getAccountResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupAccount(ctx, &storage.LookupAccountArgs{
/// 			Name:              "exampleaccount",
/// 			ResourceGroupName: pulumi.StringRef("examples"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.LookupShare(ctx, &storage.LookupShareArgs{
/// 			Name:             "existing",
/// 			StorageAccountId: pulumi.StringRef(example.Id),
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
/// import com.pulumi.azure.storage.inputs.GetShareArgs;
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
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("exampleaccount")
///             .resourceGroupName("examples")
///             .build());
///
///         final var exampleGetShare = StorageFunctions.getShare(GetShareArgs.builder()
///             .name("existing")
///             .storageAccountId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: exampleaccount
///         resourceGroupName: examples
///   exampleGetShare:
///     fn::invoke:
///       function: azure:storage:getShare
///       arguments:
///         name: existing
///         storageAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_share_get_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getShare:getShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Container.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getAccount({
///     name: "exampleaccount",
///     resourceGroupName: "examples",
/// });
/// const exampleGetStorageContainer = example.then(example => azure.storage.getStorageContainer({
///     name: "example-container-name",
///     storageAccountId: example.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_account(name="exampleaccount",
///     resource_group_name="examples")
/// example_get_storage_container = azure.storage.get_storage_container(name="example-container-name",
///     storage_account_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "exampleaccount",
///         ResourceGroupName = "examples",
///     });
///
///     var exampleGetStorageContainer = Azure.Storage.GetStorageContainer.Invoke(new()
///     {
///         Name = "example-container-name",
///         StorageAccountId = example.Apply(getAccountResult => getAccountResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupAccount(ctx, &storage.LookupAccountArgs{
/// 			Name:              "exampleaccount",
/// 			ResourceGroupName: pulumi.StringRef("examples"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.GetStorageContainer(ctx, &storage.GetStorageContainerArgs{
/// 			Name:             "example-container-name",
/// 			StorageAccountId: pulumi.StringRef(example.Id),
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
/// import com.pulumi.azure.storage.inputs.GetStorageContainerArgs;
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
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("exampleaccount")
///             .resourceGroupName("examples")
///             .build());
///
///         final var exampleGetStorageContainer = StorageFunctions.getStorageContainer(GetStorageContainerArgs.builder()
///             .name("example-container-name")
///             .storageAccountId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: exampleaccount
///         resourceGroupName: examples
///   exampleGetStorageContainer:
///     fn::invoke:
///       function: azure:storage:getStorageContainer
///       arguments:
///         name: example-container-name
///         storageAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_storage_container_get_storage_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageContainerResult> getStorageContainer(
  GetStorageContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getStorageContainer:getStorageContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageContainerResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Sync.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getSync({
///     name: "existingStorageSyncName",
///     resourceGroupName: "existingResGroup",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_sync(name="existingStorageSyncName",
///     resource_group_name="existingResGroup")
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
///     var example = Azure.Storage.GetSync.Invoke(new()
///     {
///         Name = "existingStorageSyncName",
///         ResourceGroupName = "existingResGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getSyncResult => getSyncResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupSync(ctx, &storage.LookupSyncArgs{
/// 			Name:              "existingStorageSyncName",
/// 			ResourceGroupName: "existingResGroup",
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetSyncArgs;
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
///         final var example = StorageFunctions.getSync(GetSyncArgs.builder()
///             .name("existingStorageSyncName")
///             .resourceGroupName("existingResGroup")
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
///       function: azure:storage:getSync
///       arguments:
///         name: existingStorageSyncName
///         resourceGroupName: existingResGroup
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.StorageSync` - 2020-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_sync_get_sync_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncResult> getSync(
  GetSyncArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getSync:getSync',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Sync Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getSyncGroup({
///     name: "existing-ss-group",
///     storageSyncId: "existing-ss-id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_sync_group(name="existing-ss-group",
///     storage_sync_id="existing-ss-id")
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
///     var example = Azure.Storage.GetSyncGroup.Invoke(new()
///     {
///         Name = "existing-ss-group",
///         StorageSyncId = "existing-ss-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getSyncGroupResult => getSyncGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.LookupSyncGroup(ctx, &storage.LookupSyncGroupArgs{
/// 			Name:          "existing-ss-group",
/// 			StorageSyncId: "existing-ss-id",
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetSyncGroupArgs;
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
///         final var example = StorageFunctions.getSyncGroup(GetSyncGroupArgs.builder()
///             .name("existing-ss-group")
///             .storageSyncId("existing-ss-id")
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
///       function: azure:storage:getSyncGroup
///       arguments:
///         name: existing-ss-group
///         storageSyncId: existing-ss-id
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.StorageSync` - 2020-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_sync_group_get_sync_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncGroupResult> getSyncGroup(
  GetSyncGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getSyncGroup:getSyncGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getTable({
///     name: "example-table-name",
///     storageAccountName: "example-storage-account-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_table(name="example-table-name",
///     storage_account_name="example-storage-account-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetTable.Invoke(new()
///     {
///         Name = "example-table-name",
///         StorageAccountName = "example-storage-account-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupTable(ctx, &storage.LookupTableArgs{
/// 			Name:               "example-table-name",
/// 			StorageAccountName: "example-storage-account-name",
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetTableArgs;
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
///         final var example = StorageFunctions.getTable(GetTableArgs.builder()
///             .name("example-table-name")
///             .storageAccountName("example-storage-account-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getTable
///       arguments:
///         name: example-table-name
///         storageAccountName: example-storage-account-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_table_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getTable:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Table Entity.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getTableEntities({
///     storageTableId: exampleAzurermStorageTable.id,
///     filter: "PartitionKey eq 'example'",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_table_entities(storage_table_id=example_azurerm_storage_table["id"],
///     filter="PartitionKey eq 'example'")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetTableEntities.Invoke(new()
///     {
///         StorageTableId = exampleAzurermStorageTable.Id,
///         Filter = "PartitionKey eq 'example'",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.GetTableEntities(ctx, &storage.GetTableEntitiesArgs{
/// 			StorageTableId: exampleAzurermStorageTable.Id,
/// 			Filter:         "PartitionKey eq 'example'",
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetTableEntitiesArgs;
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
///         final var example = StorageFunctions.getTableEntities(GetTableEntitiesArgs.builder()
///             .storageTableId(exampleAzurermStorageTable.id())
///             .filter("PartitionKey eq 'example'")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getTableEntities
///       arguments:
///         storageTableId: ${exampleAzurermStorageTable.id}
///         filter: PartitionKey eq 'example'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_table_entities_get_table_entities_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableEntitiesResult> getTableEntities(
  GetTableEntitiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getTableEntities:getTableEntities',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableEntitiesResult.fromMap(result);
}

/// Use this data source to access information about an existing Storage Table Entity.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.storage.getTableEntity({
///     storageTableId: exampleAzurermStorageTable.id,
///     partitionKey: "example-partition-key",
///     rowKey: "example-row-key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.storage.get_table_entity(storage_table_id=example_azurerm_storage_table["id"],
///     partition_key="example-partition-key",
///     row_key="example-row-key")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Storage.GetTableEntity.Invoke(new()
///     {
///         StorageTableId = exampleAzurermStorageTable.Id,
///         PartitionKey = "example-partition-key",
///         RowKey = "example-row-key",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.LookupTableEntity(ctx, &storage.LookupTableEntityArgs{
/// 			StorageTableId: exampleAzurermStorageTable.Id,
/// 			PartitionKey:   "example-partition-key",
/// 			RowKey:         "example-row-key",
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
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetTableEntityArgs;
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
///         final var example = StorageFunctions.getTableEntity(GetTableEntityArgs.builder()
///             .storageTableId(exampleAzurermStorageTable.id())
///             .partitionKey("example-partition-key")
///             .rowKey("example-row-key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getTableEntity
///       arguments:
///         storageTableId: ${exampleAzurermStorageTable.id}
///         partitionKey: example-partition-key
///         rowKey: example-row-key
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_table_entity_get_table_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableEntityResult> getTableEntity(
  GetTableEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:storage/getTableEntity:getTableEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableEntityResult.fromMap(result);
}
