import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaling_policy_iam_policy_args.dart';
import 'get_autoscaling_policy_iam_policy_result.dart';
import 'get_cluster_iam_policy_args.dart';
import 'get_cluster_iam_policy_result.dart';
import 'get_job_iam_policy_args.dart';
import 'get_job_iam_policy_result.dart';
import 'get_metastore_database_iam_policy_args.dart';
import 'get_metastore_database_iam_policy_result.dart';
import 'get_metastore_federation_iam_policy_args.dart';
import 'get_metastore_federation_iam_policy_result.dart';
import 'get_metastore_service_args.dart';
import 'get_metastore_service_iam_policy_args.dart';
import 'get_metastore_service_iam_policy_result.dart';
import 'get_metastore_service_result.dart';
import 'get_metastore_table_iam_policy_args.dart';
import 'get_metastore_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for autoscalingpolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getAutoscalingPolicyIamPolicy({
///     project: basic.project,
///     location: basic.location,
///     policyId: basic.policyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_autoscaling_policy_iam_policy(project=basic["project"],
///     location=basic["location"],
///     policy_id=basic["policyId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetAutoscalingPolicyIamPolicy.Invoke(new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         PolicyId = basic.PolicyId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.LookupAutoscalingPolicyIamPolicy(ctx, &dataproc.LookupAutoscalingPolicyIamPolicyArgs{
/// 			Project:  pulumi.StringRef(basic.Project),
/// 			Location: pulumi.StringRef(basic.Location),
/// 			PolicyId: basic.PolicyId,
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
/// data "gcp_dataproc_getautoscalingpolicyiampolicy" "policy" {
///   project   = basic.project
///   location  = basic.location
///   policy_id = basic.policyId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetAutoscalingPolicyIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getAutoscalingPolicyIamPolicy(GetAutoscalingPolicyIamPolicyArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .policyId(basic.get("policyId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getAutoscalingPolicyIamPolicy
///       arguments:
///         project: ${basic.project}
///         location: ${basic.location}
///         policyId: ${basic.policyId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_autoscaling_policy_iam_policy_get_autoscaling_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicy(
  GetAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getAutoscalingPolicyIamPolicy:getAutoscalingPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalingPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAutoscalingPolicyIamPolicyResult> getAutoscalingPolicyIamPolicyOutput(
  GetAutoscalingPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getAutoscalingPolicyIamPolicy:getAutoscalingPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoscalingPolicyIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for a Dataproc cluster.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getClusterIamPolicy({
///     cluster: cluster.name,
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_cluster_iam_policy(cluster=cluster["name"],
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetClusterIamPolicy.Invoke(new()
///     {
///         Cluster = cluster.Name,
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.GetClusterIamPolicy(ctx, &dataproc.GetClusterIamPolicyArgs{
/// 			Cluster: cluster.Name,
/// 			Region:  pulumi.StringRef("us-central1"),
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
/// data "gcp_dataproc_getclusteriampolicy" "policy" {
///   cluster = cluster.name
///   region  = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetClusterIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getClusterIamPolicy(GetClusterIamPolicyArgs.builder()
///             .cluster(cluster.get("name"))
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getClusterIamPolicy
///       arguments:
///         cluster: ${cluster.name}
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_cluster_iam_policy_get_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterIamPolicyResult> getClusterIamPolicy(
  GetClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getClusterIamPolicy:getClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetClusterIamPolicyResult> getClusterIamPolicyOutput(
  GetClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getClusterIamPolicy:getClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for a Dataproc job.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getJobIamPolicy({
///     jobId: pyspark.reference[0].jobId,
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_job_iam_policy(job_id=pyspark["reference"][0]["jobId"],
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetJobIamPolicy.Invoke(new()
///     {
///         JobId = pyspark.Reference[0].JobId,
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.GetJobIamPolicy(ctx, &dataproc.GetJobIamPolicyArgs{
/// 			JobId:  pyspark.Reference[0].JobId,
/// 			Region: pulumi.StringRef("us-central1"),
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
/// data "gcp_dataproc_getjobiampolicy" "policy" {
///   job_id = pyspark.reference[0].jobId
///   region = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetJobIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getJobIamPolicy(GetJobIamPolicyArgs.builder()
///             .jobId(pyspark.get("reference")[0].get("jobId"))
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getJobIamPolicy
///       arguments:
///         jobId: ${pyspark.reference[0].jobId}
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_job_iam_policy_get_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyResult> getJobIamPolicy(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getJobIamPolicy:getJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobIamPolicyResult.fromMap(result);
}

pulumi.Output<GetJobIamPolicyResult> getJobIamPolicyOutput(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getJobIamPolicy:getJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for database
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getMetastoreDatabaseIamPolicy({
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_database_iam_policy(project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetMetastoreDatabaseIamPolicy.Invoke(new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.LookupMetastoreDatabaseIamPolicy(ctx, &dataproc.LookupMetastoreDatabaseIamPolicyArgs{
/// 			Project:   pulumi.StringRef(dpmsService.Project),
/// 			Location:  pulumi.StringRef(dpmsService.Location),
/// 			ServiceId: dpmsService.ServiceId,
/// 			Database:  hive.HiveConfig[0].Properties.Database,
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
/// data "gcp_dataproc_getmetastoredatabaseiampolicy" "policy" {
///   project    = dpmsService.project
///   location   = dpmsService.location
///   service_id = dpmsService.serviceId
///   database   = hive.hiveConfig[0].properties["database"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreDatabaseIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getMetastoreDatabaseIamPolicy(GetMetastoreDatabaseIamPolicyArgs.builder()
///             .project(dpmsService.get("project"))
///             .location(dpmsService.get("location"))
///             .serviceId(dpmsService.get("serviceId"))
///             .database(hive.get("hiveConfig")[0].get("properties").get("database"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getMetastoreDatabaseIamPolicy
///       arguments:
///         project: ${dpmsService.project}
///         location: ${dpmsService.location}
///         serviceId: ${dpmsService.serviceId}
///         database: ${hive.hiveConfig[0].properties["database"]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_metastore_database_iam_policy_get_metastore_database_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetastoreDatabaseIamPolicyResult> getMetastoreDatabaseIamPolicy(
  GetMetastoreDatabaseIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreDatabaseIamPolicy:getMetastoreDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreDatabaseIamPolicyResult.fromMap(result);
}

pulumi.Output<GetMetastoreDatabaseIamPolicyResult> getMetastoreDatabaseIamPolicyOutput(
  GetMetastoreDatabaseIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreDatabaseIamPolicy:getMetastoreDatabaseIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetastoreDatabaseIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for federation
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getMetastoreFederationIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     federationId: _default.federationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_federation_iam_policy(project=default["project"],
///     location=default["location"],
///     federation_id=default["federationId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetMetastoreFederationIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         FederationId = @default.FederationId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.LookupMetastoreFederationIamPolicy(ctx, &dataproc.LookupMetastoreFederationIamPolicyArgs{
/// 			Project:      pulumi.StringRef(_default.Project),
/// 			Location:     pulumi.StringRef(_default.Location),
/// 			FederationId: _default.FederationId,
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
/// data "gcp_dataproc_getmetastorefederationiampolicy" "policy" {
///   project       = default.project
///   location      = default.location
///   federation_id = default.federationId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreFederationIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getMetastoreFederationIamPolicy(GetMetastoreFederationIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .federationId(default_.get("federationId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getMetastoreFederationIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         federationId: ${default.federationId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_metastore_federation_iam_policy_get_metastore_federation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetastoreFederationIamPolicyResult> getMetastoreFederationIamPolicy(
  GetMetastoreFederationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreFederationIamPolicy:getMetastoreFederationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreFederationIamPolicyResult.fromMap(result);
}

pulumi.Output<GetMetastoreFederationIamPolicyResult> getMetastoreFederationIamPolicyOutput(
  GetMetastoreFederationIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreFederationIamPolicy:getMetastoreFederationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetastoreFederationIamPolicyResult.fromMap);
}

/// Get a Dataproc Metastore service from Google Cloud by its id and location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.dataproc.getMetastoreService({
///     serviceId: "foo-bar",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.dataproc.get_metastore_service(service_id="foo-bar",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Dataproc.GetMetastoreService.Invoke(new()
///     {
///         ServiceId = "foo-bar",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.LookupMetastoreService(ctx, &dataproc.LookupMetastoreServiceArgs{
/// 			ServiceId: "foo-bar",
/// 			Location:  "global",
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
/// data "gcp_dataproc_getmetastoreservice" "foo" {
///   service_id = "foo-bar"
///   location   = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreServiceArgs;
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
///         final var foo = DataprocFunctions.getMetastoreService(GetMetastoreServiceArgs.builder()
///             .serviceId("foo-bar")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:dataproc:getMetastoreService
///       arguments:
///         serviceId: foo-bar
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_metastore_service_get_metastore_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetastoreServiceResult> getMetastoreService(
  GetMetastoreServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreService:getMetastoreService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreServiceResult.fromMap(result);
}

pulumi.Output<GetMetastoreServiceResult> getMetastoreServiceOutput(
  GetMetastoreServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreService:getMetastoreService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetastoreServiceResult.fromMap);
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
/// const policy = gcp.dataproc.getMetastoreServiceIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_service_iam_policy(project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetMetastoreServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.LookupMetastoreServiceIamPolicy(ctx, &dataproc.LookupMetastoreServiceIamPolicyArgs{
/// 			Project:   pulumi.StringRef(_default.Project),
/// 			Location:  pulumi.StringRef(_default.Location),
/// 			ServiceId: _default.ServiceId,
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
/// data "gcp_dataproc_getmetastoreserviceiampolicy" "policy" {
///   project    = default.project
///   location   = default.location
///   service_id = default.serviceId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreServiceIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getMetastoreServiceIamPolicy(GetMetastoreServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .serviceId(default_.get("serviceId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getMetastoreServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         serviceId: ${default.serviceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_metastore_service_iam_policy_get_metastore_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetastoreServiceIamPolicyResult> getMetastoreServiceIamPolicy(
  GetMetastoreServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreServiceIamPolicy:getMetastoreServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetMetastoreServiceIamPolicyResult> getMetastoreServiceIamPolicyOutput(
  GetMetastoreServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreServiceIamPolicy:getMetastoreServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetastoreServiceIamPolicyResult.fromMap);
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
/// const policy = gcp.dataproc.getMetastoreTableIamPolicy({
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     databaseId: hive.hiveConfig[0].properties.database,
///     table: hive.hiveConfig[0].properties.table,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_table_iam_policy(project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database_id=hive["hiveConfig"][0]["properties"]["database"],
///     table=hive["hiveConfig"][0]["properties"]["table"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataproc.GetMetastoreTableIamPolicy.Invoke(new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         DatabaseId = hive.HiveConfig[0].Properties.Database,
///         Table = hive.HiveConfig[0].Properties.Table,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.LookupMetastoreTableIamPolicy(ctx, &dataproc.LookupMetastoreTableIamPolicyArgs{
/// 			Project:    pulumi.StringRef(dpmsService.Project),
/// 			Location:   pulumi.StringRef(dpmsService.Location),
/// 			ServiceId:  dpmsService.ServiceId,
/// 			DatabaseId: hive.HiveConfig[0].Properties.Database,
/// 			Table:      hive.HiveConfig[0].Properties.Table,
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
/// data "gcp_dataproc_getmetastoretableiampolicy" "policy" {
///   project     = dpmsService.project
///   location    = dpmsService.location
///   service_id  = dpmsService.serviceId
///   database_id = hive.hiveConfig[0].properties["database"]
///   table       = hive.hiveConfig[0].properties["table"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreTableIamPolicyArgs;
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
///         final var policy = DataprocFunctions.getMetastoreTableIamPolicy(GetMetastoreTableIamPolicyArgs.builder()
///             .project(dpmsService.get("project"))
///             .location(dpmsService.get("location"))
///             .serviceId(dpmsService.get("serviceId"))
///             .databaseId(hive.get("hiveConfig")[0].get("properties").get("database"))
///             .table(hive.get("hiveConfig")[0].get("properties").get("table"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataproc:getMetastoreTableIamPolicy
///       arguments:
///         project: ${dpmsService.project}
///         location: ${dpmsService.location}
///         serviceId: ${dpmsService.serviceId}
///         databaseId: ${hive.hiveConfig[0].properties["database"]}
///         table: ${hive.hiveConfig[0].properties["table"]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataproc_get_metastore_table_iam_policy_get_metastore_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetastoreTableIamPolicyResult> getMetastoreTableIamPolicy(
  GetMetastoreTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreTableIamPolicy:getMetastoreTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreTableIamPolicyResult.fromMap(result);
}

pulumi.Output<GetMetastoreTableIamPolicyResult> getMetastoreTableIamPolicyOutput(
  GetMetastoreTableIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreTableIamPolicy:getMetastoreTableIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetastoreTableIamPolicyResult.fromMap);
}
