import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';
import 'get_datapolicyv2_data_policy_iam_policy_args.dart';
import 'get_datapolicyv2_data_policy_iam_policy_result.dart';
import 'get_dataset_args.dart';
import 'get_dataset_iam_policy_args.dart';
import 'get_dataset_iam_policy_result.dart';
import 'get_dataset_result.dart';
import 'get_datasets_args.dart';
import 'get_datasets_result.dart';
import 'get_default_service_account_args.dart';
import 'get_default_service_account_result.dart';
import 'get_routine_iam_policy_args.dart';
import 'get_routine_iam_policy_result.dart';
import 'get_table_args.dart';
import 'get_table_iam_policy_args.dart';
import 'get_table_iam_policy_result.dart';
import 'get_table_result.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// Retrieves the current IAM policy data for connection
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getConnectionIamPolicy({
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_connection_iam_policy(project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQuery.GetConnectionIamPolicy.Invoke(new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.LookupConnectionIamPolicy(ctx, &bigquery.LookupConnectionIamPolicyArgs{
/// 			Project:      pulumi.StringRef(connection.Project),
/// 			Location:     pulumi.StringRef(connection.Location),
/// 			ConnectionId: connection.ConnectionId,
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
/// data "gcp_bigquery_getconnectioniampolicy" "policy" {
///   project       = connection.project
///   location      = connection.location
///   connection_id = connection.connectionId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetConnectionIamPolicyArgs;
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
///         final var policy = BigqueryFunctions.getConnectionIamPolicy(GetConnectionIamPolicyArgs.builder()
///             .project(connection.get("project"))
///             .location(connection.get("location"))
///             .connectionId(connection.get("connectionId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigquery:getConnectionIamPolicy
///       arguments:
///         project: ${connection.project}
///         location: ${connection.location}
///         connectionId: ${connection.connectionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_connection_iam_policy_get_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getConnectionIamPolicy:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}

pulumi.Output<GetConnectionIamPolicyResult> getConnectionIamPolicyOutput(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getConnectionIamPolicy:getConnectionIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for datapolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getDatapolicyv2DataPolicyIamPolicy({
///     project: basicDataPolicy.project,
///     location: basicDataPolicy.location,
///     dataPolicyId: basicDataPolicy.dataPolicyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_datapolicyv2_data_policy_iam_policy(project=basic_data_policy["project"],
///     location=basic_data_policy["location"],
///     data_policy_id=basic_data_policy["dataPolicyId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQuery.GetDatapolicyv2DataPolicyIamPolicy.Invoke(new()
///     {
///         Project = basicDataPolicy.Project,
///         Location = basicDataPolicy.Location,
///         DataPolicyId = basicDataPolicy.DataPolicyId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.LookupDatapolicyv2DataPolicyIamPolicy(ctx, &bigquery.LookupDatapolicyv2DataPolicyIamPolicyArgs{
/// 			Project:      pulumi.StringRef(basicDataPolicy.Project),
/// 			Location:     pulumi.StringRef(basicDataPolicy.Location),
/// 			DataPolicyId: basicDataPolicy.DataPolicyId,
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
/// data "gcp_bigquery_getdatapolicyv2datapolicyiampolicy" "policy" {
///   project        = basicDataPolicy.project
///   location       = basicDataPolicy.location
///   data_policy_id = basicDataPolicy.dataPolicyId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDatapolicyv2DataPolicyIamPolicyArgs;
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
///         final var policy = BigqueryFunctions.getDatapolicyv2DataPolicyIamPolicy(GetDatapolicyv2DataPolicyIamPolicyArgs.builder()
///             .project(basicDataPolicy.get("project"))
///             .location(basicDataPolicy.get("location"))
///             .dataPolicyId(basicDataPolicy.get("dataPolicyId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigquery:getDatapolicyv2DataPolicyIamPolicy
///       arguments:
///         project: ${basicDataPolicy.project}
///         location: ${basicDataPolicy.location}
///         dataPolicyId: ${basicDataPolicy.dataPolicyId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_datapolicyv2_data_policy_iam_policy_get_datapolicyv2_data_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatapolicyv2DataPolicyIamPolicyResult> getDatapolicyv2DataPolicyIamPolicy(
  GetDatapolicyv2DataPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatapolicyv2DataPolicyIamPolicy:getDatapolicyv2DataPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatapolicyv2DataPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDatapolicyv2DataPolicyIamPolicyResult> getDatapolicyv2DataPolicyIamPolicyOutput(
  GetDatapolicyv2DataPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getDatapolicyv2DataPolicyIamPolicy:getDatapolicyv2DataPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatapolicyv2DataPolicyIamPolicyResult.fromMap);
}

/// Get information about a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = gcp.bigquery.getDataset({
///     datasetId: "my-bq-dataset",
///     project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.get_dataset(dataset_id="my-bq-dataset",
///     project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = Gcp.BigQuery.GetDataset.Invoke(new()
///     {
///         DatasetId = "my-bq-dataset",
///         Project = "my-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.LookupDataset(ctx, &bigquery.LookupDatasetArgs{
/// 			DatasetId: "my-bq-dataset",
/// 			Project:   pulumi.StringRef("my-project"),
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
/// data "gcp_bigquery_getdataset" "dataset" {
///   dataset_id = "my-bq-dataset"
///   project    = "my-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDatasetArgs;
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
///         final var dataset = BigqueryFunctions.getDataset(GetDatasetArgs.builder()
///             .datasetId("my-bq-dataset")
///             .project("my-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dataset:
///     fn::invoke:
///       function: gcp:bigquery:getDataset
///       arguments:
///         datasetId: my-bq-dataset
///         project: my-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_dataset_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDataset:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

pulumi.Output<GetDatasetResult> getDatasetOutput(
  GetDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getDataset:getDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetResult.fromMap);
}

/// Retrieves the current IAM policy data for a BigQuery dataset.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getDatasetIamPolicy({
///     datasetId: dataset.datasetId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_dataset_iam_policy(dataset_id=dataset["datasetId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQuery.GetDatasetIamPolicy.Invoke(new()
///     {
///         DatasetId = dataset.DatasetId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.LookupDatasetIamPolicy(ctx, &bigquery.LookupDatasetIamPolicyArgs{
/// 			DatasetId: dataset.DatasetId,
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
/// data "gcp_bigquery_getdatasetiampolicy" "policy" {
///   dataset_id = dataset.datasetId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDatasetIamPolicyArgs;
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
///         final var policy = BigqueryFunctions.getDatasetIamPolicy(GetDatasetIamPolicyArgs.builder()
///             .datasetId(dataset.get("datasetId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigquery:getDatasetIamPolicy
///       arguments:
///         datasetId: ${dataset.datasetId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_dataset_iam_policy_get_dataset_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetIamPolicyResult> getDatasetIamPolicy(
  GetDatasetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatasetIamPolicy:getDatasetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDatasetIamPolicyResult> getDatasetIamPolicyOutput(
  GetDatasetIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getDatasetIamPolicy:getDatasetIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetIamPolicyResult.fromMap);
}

/// Get a list of datasets in a GCP project. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const datasets = gcp.bigquery.getDatasets({
///     project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// datasets = gcp.bigquery.get_datasets(project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datasets = Gcp.BigQuery.GetDatasets.Invoke(new()
///     {
///         Project = "my-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.GetDatasets(ctx, &bigquery.GetDatasetsArgs{
/// 			Project: pulumi.StringRef("my-project"),
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
/// data "gcp_bigquery_getdatasets" "datasets" {
///   project = "my-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDatasetsArgs;
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
///         final var datasets = BigqueryFunctions.getDatasets(GetDatasetsArgs.builder()
///             .project("my-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   datasets:
///     fn::invoke:
///       function: gcp:bigquery:getDatasets
///       arguments:
///         project: my-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_datasets_get_datasets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetsResult> getDatasets(
  GetDatasetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatasets:getDatasets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetsResult.fromMap(result);
}

pulumi.Output<GetDatasetsResult> getDatasetsOutput(
  GetDatasetsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getDatasets:getDatasets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetsResult.fromMap);
}

/// Get the email address of a project's unique BigQuery service account.
///
/// Each Google Cloud project has a unique service account used by BigQuery. When using
/// BigQuery with [customer-managed encryption keys](https://cloud.google.com/bigquery/docs/customer-managed-encryption),
/// this account needs to be granted the
/// `cloudkms.cryptoKeyEncrypterDecrypter` IAM role on the customer-managed Cloud KMS key used to protect the data.
///
/// For more information see
/// [the API reference](https://cloud.google.com/bigquery/docs/reference/rest/v2/projects/getServiceAccount).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bqSa = gcp.bigquery.getDefaultServiceAccount({});
/// const keySaUser = new gcp.kms.CryptoKeyIAMMember("key_sa_user", {
///     cryptoKeyId: key.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: bqSa.then(bqSa => `serviceAccount:${bqSa.email}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bq_sa = gcp.bigquery.get_default_service_account()
/// key_sa_user = gcp.kms.CryptoKeyIAMMember("key_sa_user",
///     crypto_key_id=key["id"],
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:{bq_sa.email}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bqSa = Gcp.BigQuery.GetDefaultServiceAccount.Invoke();
///
///     var keySaUser = new Gcp.Kms.CryptoKeyIAMMember("key_sa_user", new()
///     {
///         CryptoKeyId = key.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:{bqSa.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bqSa, err := bigquery.GetDefaultServiceAccount(ctx, &bigquery.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKeyIAMMember(ctx, "key_sa_user", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.Any(key.Id),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", bqSa.Email),
/// 		})
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
/// data "gcp_bigquery_getdefaultserviceaccount" "bqSa" {
/// }
///
/// resource "gcp_kms_cryptokeyiammember" "key_sa_user" {
///   crypto_key_id = key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:${data.gcp_bigquery_getdefaultserviceaccount.bqSa.email}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
///         final var bqSa = BigqueryFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         var keySaUser = new CryptoKeyIAMMember("keySaUser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(key.get("id"))
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:%s", bqSa.email()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keySaUser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: key_sa_user
///     properties:
///       cryptoKeyId: ${key.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:${bqSa.email}
/// variables:
///   bqSa:
///     fn::invoke:
///       function: gcp:bigquery:getDefaultServiceAccount
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_default_service_account_get_default_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultServiceAccountResult> getDefaultServiceAccount(
  GetDefaultServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult.fromMap(result);
}

pulumi.Output<GetDefaultServiceAccountResult> getDefaultServiceAccountOutput(
  GetDefaultServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getDefaultServiceAccount:getDefaultServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultServiceAccountResult.fromMap);
}

/// Retrieves the current IAM policy data for routine
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getRoutineIamPolicy({
///     project: sproc.project,
///     datasetId: sproc.datasetId,
///     routineId: sproc.routineId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_routine_iam_policy(project=sproc["project"],
///     dataset_id=sproc["datasetId"],
///     routine_id=sproc["routineId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQuery.GetRoutineIamPolicy.Invoke(new()
///     {
///         Project = sproc.Project,
///         DatasetId = sproc.DatasetId,
///         RoutineId = sproc.RoutineId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.LookupRoutineIamPolicy(ctx, &bigquery.LookupRoutineIamPolicyArgs{
/// 			Project:   pulumi.StringRef(sproc.Project),
/// 			DatasetId: sproc.DatasetId,
/// 			RoutineId: sproc.RoutineId,
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
/// data "gcp_bigquery_getroutineiampolicy" "policy" {
///   project    = sproc.project
///   dataset_id = sproc.datasetId
///   routine_id = sproc.routineId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetRoutineIamPolicyArgs;
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
///         final var policy = BigqueryFunctions.getRoutineIamPolicy(GetRoutineIamPolicyArgs.builder()
///             .project(sproc.get("project"))
///             .datasetId(sproc.get("datasetId"))
///             .routineId(sproc.get("routineId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigquery:getRoutineIamPolicy
///       arguments:
///         project: ${sproc.project}
///         datasetId: ${sproc.datasetId}
///         routineId: ${sproc.routineId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_routine_iam_policy_get_routine_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutineIamPolicyResult> getRoutineIamPolicy(
  GetRoutineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getRoutineIamPolicy:getRoutineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutineIamPolicyResult.fromMap(result);
}

pulumi.Output<GetRoutineIamPolicyResult> getRoutineIamPolicyOutput(
  GetRoutineIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getRoutineIamPolicy:getRoutineIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutineIamPolicyResult.fromMap);
}

/// Get a specific table in a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables/get).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const table = gcp.bigquery.getTable({
///     project: "my-project",
///     datasetId: "my-bq-dataset",
///     tableId: "my-table",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// table = gcp.bigquery.get_table(project="my-project",
///     dataset_id="my-bq-dataset",
///     table_id="my-table")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var table = Gcp.BigQuery.GetTable.Invoke(new()
///     {
///         Project = "my-project",
///         DatasetId = "my-bq-dataset",
///         TableId = "my-table",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.LookupTable(ctx, &bigquery.LookupTableArgs{
/// 			Project:   pulumi.StringRef("my-project"),
/// 			DatasetId: "my-bq-dataset",
/// 			TableId:   "my-table",
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
/// data "gcp_bigquery_gettable" "table" {
///   project    = "my-project"
///   dataset_id = "my-bq-dataset"
///   table_id   = "my-table"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetTableArgs;
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
///         final var table = BigqueryFunctions.getTable(GetTableArgs.builder()
///             .project("my-project")
///             .datasetId("my-bq-dataset")
///             .tableId("my-table")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   table:
///     fn::invoke:
///       function: gcp:bigquery:getTable
///       arguments:
///         project: my-project
///         datasetId: my-bq-dataset
///         tableId: my-table
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_table_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTable:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

pulumi.Output<GetTableResult> getTableOutput(
  GetTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getTable:getTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResult.fromMap);
}

/// Retrieves the current IAM policy data for table
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getTableIamPolicy({
///     project: test.project,
///     datasetId: test.datasetId,
///     tableId: test.tableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_table_iam_policy(project=test["project"],
///     dataset_id=test["datasetId"],
///     table_id=test["tableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQuery.GetTableIamPolicy.Invoke(new()
///     {
///         Project = test.Project,
///         DatasetId = test.DatasetId,
///         TableId = test.TableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.GetTableIamPolicy(ctx, &bigquery.GetTableIamPolicyArgs{
/// 			Project:   pulumi.StringRef(test.Project),
/// 			DatasetId: test.DatasetId,
/// 			TableId:   test.TableId,
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
/// data "gcp_bigquery_gettableiampolicy" "policy" {
///   project    = test.project
///   dataset_id = test.datasetId
///   table_id   = test.tableId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetTableIamPolicyArgs;
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
///         final var policy = BigqueryFunctions.getTableIamPolicy(GetTableIamPolicyArgs.builder()
///             .project(test.get("project"))
///             .datasetId(test.get("datasetId"))
///             .tableId(test.get("tableId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigquery:getTableIamPolicy
///       arguments:
///         project: ${test.project}
///         datasetId: ${test.datasetId}
///         tableId: ${test.tableId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_table_iam_policy_get_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableIamPolicyResult> getTableIamPolicy(
  GetTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTableIamPolicyResult> getTableIamPolicyOutput(
  GetTableIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getTableIamPolicy:getTableIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableIamPolicyResult.fromMap);
}

/// Get a list of tables in a BigQuery dataset. For more information see
/// the [official documentation](https://cloud.google.com/bigquery/docs)
/// and [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tables = gcp.bigquery.getTables({
///     datasetId: "my-bq-dataset",
///     project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tables = gcp.bigquery.get_tables(dataset_id="my-bq-dataset",
///     project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tables = Gcp.BigQuery.GetTables.Invoke(new()
///     {
///         DatasetId = "my-bq-dataset",
///         Project = "my-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.GetTables(ctx, &bigquery.GetTablesArgs{
/// 			DatasetId: "my-bq-dataset",
/// 			Project:   pulumi.StringRef("my-project"),
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
/// data "gcp_bigquery_gettables" "tables" {
///   dataset_id = "my-bq-dataset"
///   project    = "my-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetTablesArgs;
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
///         final var tables = BigqueryFunctions.getTables(GetTablesArgs.builder()
///             .datasetId("my-bq-dataset")
///             .project("my-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   tables:
///     fn::invoke:
///       function: gcp:bigquery:getTables
///       arguments:
///         datasetId: my-bq-dataset
///         project: my-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquery_get_tables_get_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTables:getTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}

pulumi.Output<GetTablesResult> getTablesOutput(
  GetTablesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:bigquery/getTables:getTables',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTablesResult.fromMap);
}
