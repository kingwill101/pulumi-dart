import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_dataset_blob_storage_args.dart';
import 'get_dataset_blob_storage_result.dart';
import 'get_dataset_data_lake_gen2_args.dart';
import 'get_dataset_data_lake_gen2_result.dart';
import 'get_dataset_kusto_cluster_args.dart';
import 'get_dataset_kusto_cluster_result.dart';
import 'get_dataset_kusto_database_args.dart';
import 'get_dataset_kusto_database_result.dart';
import 'get_share_args.dart';
import 'get_share_result.dart';

/// Use this data source to access information about an existing Data Share Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datashare.getAccount({
///     name: "example-account",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datashare.get_account(name="example-account",
///     resource_group_name="example-resource-group")
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
///     var example = Azure.DataShare.GetAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAccountResult => getAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datashare.LookupAccount(ctx, &datashare.LookupAccountArgs{
/// 			Name:              "example-account",
/// 			ResourceGroupName: "example-resource-group",
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
/// data "azure_datashare_getaccount" "example" {
///   name                = "example-account"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_datashare_getaccount.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.datashare.DatashareFunctions;
/// import com.pulumi.azure.datashare.inputs.GetAccountArgs;
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
///         final var example = DatashareFunctions.getAccount(GetAccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName("example-resource-group")
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
///       function: azure:datashare:getAccount
///       arguments:
///         name: example-account
///         resourceGroupName: example-resource-group
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
/// * `Microsoft.DataShare` - 2019-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datashare/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

pulumi.Output<GetAccountResult> getAccountOutput(
  GetAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:datashare/getAccount:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Use this data source to access information about an existing Data Share Blob Storage Dataset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datashare.getDatasetBlobStorage({
///     name: "example-dsbsds",
///     dataShareId: "example-share-id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datashare.get_dataset_blob_storage(name="example-dsbsds",
///     data_share_id="example-share-id")
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
///     var example = Azure.DataShare.GetDatasetBlobStorage.Invoke(new()
///     {
///         Name = "example-dsbsds",
///         DataShareId = "example-share-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDatasetBlobStorageResult => getDatasetBlobStorageResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datashare.LookupDatasetBlobStorage(ctx, &datashare.LookupDatasetBlobStorageArgs{
/// 			Name:        "example-dsbsds",
/// 			DataShareId: "example-share-id",
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
/// data "azure_datashare_getdatasetblobstorage" "example" {
///   name          = "example-dsbsds"
///   data_share_id = "example-share-id"
/// }
///
/// output "id" {
///   value = data.azure_datashare_getdatasetblobstorage.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.datashare.DatashareFunctions;
/// import com.pulumi.azure.datashare.inputs.GetDatasetBlobStorageArgs;
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
///         final var example = DatashareFunctions.getDatasetBlobStorage(GetDatasetBlobStorageArgs.builder()
///             .name("example-dsbsds")
///             .dataShareId("example-share-id")
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
///       function: azure:datashare:getDatasetBlobStorage
///       arguments:
///         name: example-dsbsds
///         dataShareId: example-share-id
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
/// * `Microsoft.DataShare` - 2019-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_dataset_blob_storage_get_dataset_blob_storage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetBlobStorageResult> getDatasetBlobStorage(
  GetDatasetBlobStorageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datashare/getDatasetBlobStorage:getDatasetBlobStorage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetBlobStorageResult.fromMap(result);
}

pulumi.Output<GetDatasetBlobStorageResult> getDatasetBlobStorageOutput(
  GetDatasetBlobStorageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:datashare/getDatasetBlobStorage:getDatasetBlobStorage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetBlobStorageResult.fromMap);
}

/// Use this data source to access information about an existing Data Share Data Lake Gen2 Dataset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datashare.getDatasetDataLakeGen2({
///     name: "example-dsdlg2ds",
///     shareId: "example-share-id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datashare.get_dataset_data_lake_gen2(name="example-dsdlg2ds",
///     share_id="example-share-id")
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
///     var example = Azure.DataShare.GetDatasetDataLakeGen2.Invoke(new()
///     {
///         Name = "example-dsdlg2ds",
///         ShareId = "example-share-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDatasetDataLakeGen2Result => getDatasetDataLakeGen2Result.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datashare.LookupDatasetDataLakeGen2(ctx, &datashare.LookupDatasetDataLakeGen2Args{
/// 			Name:    "example-dsdlg2ds",
/// 			ShareId: "example-share-id",
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
/// data "azure_datashare_getdatasetdatalakegen2" "example" {
///   name     = "example-dsdlg2ds"
///   share_id = "example-share-id"
/// }
///
/// output "id" {
///   value = data.azure_datashare_getdatasetdatalakegen2.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.datashare.DatashareFunctions;
/// import com.pulumi.azure.datashare.inputs.GetDatasetDataLakeGen2Args;
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
///         final var example = DatashareFunctions.getDatasetDataLakeGen2(GetDatasetDataLakeGen2Args.builder()
///             .name("example-dsdlg2ds")
///             .shareId("example-share-id")
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
///       function: azure:datashare:getDatasetDataLakeGen2
///       arguments:
///         name: example-dsdlg2ds
///         shareId: example-share-id
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
/// * `Microsoft.DataShare` - 2019-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_dataset_data_lake_gen2_get_dataset_data_lake_gen2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetDataLakeGen2Result> getDatasetDataLakeGen2(
  GetDatasetDataLakeGen2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datashare/getDatasetDataLakeGen2:getDatasetDataLakeGen2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetDataLakeGen2Result.fromMap(result);
}

pulumi.Output<GetDatasetDataLakeGen2Result> getDatasetDataLakeGen2Output(
  GetDatasetDataLakeGen2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:datashare/getDatasetDataLakeGen2:getDatasetDataLakeGen2',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetDataLakeGen2Result.fromMap);
}

/// Use this data source to access information about an existing Data Share Kusto Cluster Dataset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datashare.getDatasetKustoCluster({
///     name: "example-dskc",
///     shareId: "example-share-id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datashare.get_dataset_kusto_cluster(name="example-dskc",
///     share_id="example-share-id")
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
///     var example = Azure.DataShare.GetDatasetKustoCluster.Invoke(new()
///     {
///         Name = "example-dskc",
///         ShareId = "example-share-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDatasetKustoClusterResult => getDatasetKustoClusterResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datashare.LookupDatasetKustoCluster(ctx, &datashare.LookupDatasetKustoClusterArgs{
/// 			Name:    "example-dskc",
/// 			ShareId: "example-share-id",
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
/// data "azure_datashare_getdatasetkustocluster" "example" {
///   name     = "example-dskc"
///   share_id = "example-share-id"
/// }
///
/// output "id" {
///   value = data.azure_datashare_getdatasetkustocluster.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.datashare.DatashareFunctions;
/// import com.pulumi.azure.datashare.inputs.GetDatasetKustoClusterArgs;
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
///         final var example = DatashareFunctions.getDatasetKustoCluster(GetDatasetKustoClusterArgs.builder()
///             .name("example-dskc")
///             .shareId("example-share-id")
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
///       function: azure:datashare:getDatasetKustoCluster
///       arguments:
///         name: example-dskc
///         shareId: example-share-id
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
/// * `Microsoft.DataShare` - 2019-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_dataset_kusto_cluster_get_dataset_kusto_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetKustoClusterResult> getDatasetKustoCluster(
  GetDatasetKustoClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datashare/getDatasetKustoCluster:getDatasetKustoCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetKustoClusterResult.fromMap(result);
}

pulumi.Output<GetDatasetKustoClusterResult> getDatasetKustoClusterOutput(
  GetDatasetKustoClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:datashare/getDatasetKustoCluster:getDatasetKustoCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetKustoClusterResult.fromMap);
}

/// Use this data source to access information about an existing Data Share Kusto Database Dataset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datashare.getDatasetKustoDatabase({
///     name: "example-dskdds",
///     shareId: "example-share-id",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datashare.get_dataset_kusto_database(name="example-dskdds",
///     share_id="example-share-id")
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
///     var example = Azure.DataShare.GetDatasetKustoDatabase.Invoke(new()
///     {
///         Name = "example-dskdds",
///         ShareId = "example-share-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDatasetKustoDatabaseResult => getDatasetKustoDatabaseResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datashare.LookupDatasetKustoDatabase(ctx, &datashare.LookupDatasetKustoDatabaseArgs{
/// 			Name:    "example-dskdds",
/// 			ShareId: "example-share-id",
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
/// data "azure_datashare_getdatasetkustodatabase" "example" {
///   name     = "example-dskdds"
///   share_id = "example-share-id"
/// }
///
/// output "id" {
///   value = data.azure_datashare_getdatasetkustodatabase.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.datashare.DatashareFunctions;
/// import com.pulumi.azure.datashare.inputs.GetDatasetKustoDatabaseArgs;
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
///         final var example = DatashareFunctions.getDatasetKustoDatabase(GetDatasetKustoDatabaseArgs.builder()
///             .name("example-dskdds")
///             .shareId("example-share-id")
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
///       function: azure:datashare:getDatasetKustoDatabase
///       arguments:
///         name: example-dskdds
///         shareId: example-share-id
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
/// * `Microsoft.DataShare` - 2019-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_dataset_kusto_database_get_dataset_kusto_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetKustoDatabaseResult> getDatasetKustoDatabase(
  GetDatasetKustoDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datashare/getDatasetKustoDatabase:getDatasetKustoDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetKustoDatabaseResult.fromMap(result);
}

pulumi.Output<GetDatasetKustoDatabaseResult> getDatasetKustoDatabaseOutput(
  GetDatasetKustoDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:datashare/getDatasetKustoDatabase:getDatasetKustoDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetKustoDatabaseResult.fromMap);
}

/// Use this data source to access information about an existing Data Share.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.datashare.getAccount({
///     name: "example-account",
///     resourceGroupName: "example-resource-group",
/// });
/// const exampleGetShare = example.then(example => azure.datashare.getShare({
///     name: "existing",
///     accountId: example.id,
/// }));
/// export const id = exampleGetShare.then(exampleGetShare => exampleGetShare.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.datashare.get_account(name="example-account",
///     resource_group_name="example-resource-group")
/// example_get_share = azure.datashare.get_share(name="existing",
///     account_id=example.id)
/// pulumi.export("id", example_get_share.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataShare.GetAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     var exampleGetShare = Azure.DataShare.GetShare.Invoke(new()
///     {
///         Name = "existing",
///         AccountId = example.Apply(getAccountResult => getAccountResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetShare.Apply(getShareResult => getShareResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datashare.LookupAccount(ctx, &datashare.LookupAccountArgs{
/// 			Name:              "example-account",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetShare, err := datashare.LookupShare(ctx, &datashare.LookupShareArgs{
/// 			Name:      "existing",
/// 			AccountId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetShare.Id)
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
/// data "azure_datashare_getaccount" "example" {
///   name                = "example-account"
///   resource_group_name = "example-resource-group"
/// }
/// data "azure_datashare_getshare" "exampleGetShare" {
///   name       = "existing"
///   account_id = data.azure_datashare_getaccount.example.id
/// }
///
/// output "id" {
///   value = data.azure_datashare_getshare.exampleGetShare.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.datashare.DatashareFunctions;
/// import com.pulumi.azure.datashare.inputs.GetAccountArgs;
/// import com.pulumi.azure.datashare.inputs.GetShareArgs;
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
///         final var example = DatashareFunctions.getAccount(GetAccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName("example-resource-group")
///             .build());
///
///         final var exampleGetShare = DatashareFunctions.getShare(GetShareArgs.builder()
///             .name("existing")
///             .accountId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetShare.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:datashare:getAccount
///       arguments:
///         name: example-account
///         resourceGroupName: example-resource-group
///   exampleGetShare:
///     fn::invoke:
///       function: azure:datashare:getShare
///       arguments:
///         name: existing
///         accountId: ${example.id}
/// outputs:
///   id: ${exampleGetShare.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DataShare` - 2019-11-01
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_share_get_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:datashare/getShare:getShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}

pulumi.Output<GetShareResult> getShareOutput(
  GetShareArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:datashare/getShare:getShare',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetShareResult.fromMap);
}
