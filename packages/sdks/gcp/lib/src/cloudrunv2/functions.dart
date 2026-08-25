import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_iam_policy_args.dart';
import 'get_job_iam_policy_result.dart';
import 'get_job_result.dart';
import 'get_service_args.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';
import 'get_service_result.dart';
import 'get_worker_pool_args.dart';
import 'get_worker_pool_iam_policy_args.dart';
import 'get_worker_pool_iam_policy_result.dart';
import 'get_worker_pool_result.dart';

/// Get information about a Google Cloud Run v2 Job. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myJob = gcp.cloudrunv2.getJob({
///     name: "my-job",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_job = gcp.cloudrunv2.get_job(name="my-job",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myJob = Gcp.CloudRunV2.GetJob.Invoke(new()
///     {
///         Name = "my-job",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.LookupJob(ctx, &cloudrunv2.LookupJobArgs{
/// 			Name:     "my-job",
/// 			Location: pulumi.StringRef("us-central1"),
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
/// data "gcp_cloudrunv2_getjob" "myJob" {
///   name     = "my-job"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetJobArgs;
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
///         final var myJob = Cloudrunv2Functions.getJob(GetJobArgs.builder()
///             .name("my-job")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myJob:
///     fn::invoke:
///       function: gcp:cloudrunv2:getJob
///       arguments:
///         name: my-job
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrunv2_get_job_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getJob:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

pulumi.Output<GetJobResult> getJobOutput(
  GetJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudrunv2/getJob:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
}

/// Retrieves the current IAM policy data for job
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudrunv2.getJobIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudrunv2.get_job_iam_policy(project=default["project"],
///     location=default["location"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudRunV2.GetJobIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.LookupJobIamPolicy(ctx, &cloudrunv2.LookupJobIamPolicyArgs{
/// 			Project:  pulumi.StringRef(_default.Project),
/// 			Location: pulumi.StringRef(_default.Location),
/// 			Name:     _default.Name,
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
/// data "gcp_cloudrunv2_getjobiampolicy" "policy" {
///   project  = default.project
///   location = default.location
///   name     = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetJobIamPolicyArgs;
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
///         final var policy = Cloudrunv2Functions.getJobIamPolicy(GetJobIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudrunv2:getJobIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrunv2_get_job_iam_policy_get_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobIamPolicyResult> getJobIamPolicy(
  GetJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getJobIamPolicy:getJobIamPolicy',
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
    'gcp:cloudrunv2/getJobIamPolicy:getJobIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobIamPolicyResult.fromMap);
}

/// Get information about a Google Cloud Run v2 Service. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myService = gcp.cloudrunv2.getService({
///     name: "my-service",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_service = gcp.cloudrunv2.get_service(name="my-service",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myService = Gcp.CloudRunV2.GetService.Invoke(new()
///     {
///         Name = "my-service",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.LookupService(ctx, &cloudrunv2.LookupServiceArgs{
/// 			Name:     "my-service",
/// 			Location: pulumi.StringRef("us-central1"),
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
/// data "gcp_cloudrunv2_getservice" "myService" {
///   name     = "my-service"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetServiceArgs;
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
///         final var myService = Cloudrunv2Functions.getService(GetServiceArgs.builder()
///             .name("my-service")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myService:
///     fn::invoke:
///       function: gcp:cloudrunv2:getService
///       arguments:
///         name: my-service
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrunv2_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudrunv2/getService:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
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
/// const policy = gcp.cloudrunv2.getServiceIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudrunv2.get_service_iam_policy(project=default["project"],
///     location=default["location"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudRunV2.GetServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.LookupServiceIamPolicy(ctx, &cloudrunv2.LookupServiceIamPolicyArgs{
/// 			Project:  pulumi.StringRef(_default.Project),
/// 			Location: pulumi.StringRef(_default.Location),
/// 			Name:     _default.Name,
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
/// data "gcp_cloudrunv2_getserviceiampolicy" "policy" {
///   project  = default.project
///   location = default.location
///   name     = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetServiceIamPolicyArgs;
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
///         final var policy = Cloudrunv2Functions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudrunv2:getServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrunv2_get_service_iam_policy_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceIamPolicyResult> getServiceIamPolicyOutput(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudrunv2/getServiceIamPolicy:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyResult.fromMap);
}

/// Get information about a Google Cloud Run v2 Worker Pool. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myWorkerPool = gcp.cloudrunv2.getWorkerPool({
///     name: "my-worker-pool",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_worker_pool = gcp.cloudrunv2.get_worker_pool(name="my-worker-pool",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myWorkerPool = Gcp.CloudRunV2.GetWorkerPool.Invoke(new()
///     {
///         Name = "my-worker-pool",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.LookupWorkerPool(ctx, &cloudrunv2.LookupWorkerPoolArgs{
/// 			Name:     "my-worker-pool",
/// 			Location: pulumi.StringRef("us-central1"),
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
/// data "gcp_cloudrunv2_getworkerpool" "myWorkerPool" {
///   name     = "my-worker-pool"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetWorkerPoolArgs;
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
///         final var myWorkerPool = Cloudrunv2Functions.getWorkerPool(GetWorkerPoolArgs.builder()
///             .name("my-worker-pool")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myWorkerPool:
///     fn::invoke:
///       function: gcp:cloudrunv2:getWorkerPool
///       arguments:
///         name: my-worker-pool
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrunv2_get_worker_pool_get_worker_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPool:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}

pulumi.Output<GetWorkerPoolResult> getWorkerPoolOutput(
  GetWorkerPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPool:getWorkerPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkerPoolResult.fromMap);
}

/// Retrieves the current IAM policy data for workerpool
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudrunv2.getWorkerPoolIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudrunv2.get_worker_pool_iam_policy(project=default["project"],
///     location=default["location"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudRunV2.GetWorkerPoolIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.LookupWorkerPoolIamPolicy(ctx, &cloudrunv2.LookupWorkerPoolIamPolicyArgs{
/// 			Project:  pulumi.StringRef(_default.Project),
/// 			Location: pulumi.StringRef(_default.Location),
/// 			Name:     _default.Name,
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
/// data "gcp_cloudrunv2_getworkerpooliampolicy" "policy" {
///   project  = default.project
///   location = default.location
///   name     = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetWorkerPoolIamPolicyArgs;
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
///         final var policy = Cloudrunv2Functions.getWorkerPoolIamPolicy(GetWorkerPoolIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudrunv2:getWorkerPoolIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrunv2_get_worker_pool_iam_policy_get_worker_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolIamPolicyResult> getWorkerPoolIamPolicy(
  GetWorkerPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPoolIamPolicy:getWorkerPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolIamPolicyResult.fromMap(result);
}

pulumi.Output<GetWorkerPoolIamPolicyResult> getWorkerPoolIamPolicyOutput(
  GetWorkerPoolIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPoolIamPolicy:getWorkerPoolIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkerPoolIamPolicyResult.fromMap);
}
