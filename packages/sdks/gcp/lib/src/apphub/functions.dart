import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_discovered_service_args.dart';
import 'get_discovered_service_result.dart';
import 'get_discovered_workload_args.dart';
import 'get_discovered_workload_result.dart';

/// Application is a functional grouping of Services and Workloads that helps achieve a desired end-to-end business functionality. Services and Workloads are owned by the Application.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const application = gcp.apphub.getApplication({
///     project: "project-id",
///     applicationId: "application",
///     location: "location",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// application = gcp.apphub.get_application(project="project-id",
///     application_id="application",
///     location="location")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = Gcp.Apphub.GetApplication.Invoke(new()
///     {
///         Project = "project-id",
///         ApplicationId = "application",
///         Location = "location",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apphub.LookupApplication(ctx, &apphub.LookupApplicationArgs{
/// 			Project:       "project-id",
/// 			ApplicationId: "application",
/// 			Location:      "location",
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
/// data "gcp_apphub_getapplication" "application" {
///   project        = "project-id"
///   application_id = "application"
///   location       = "location"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetApplicationArgs;
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
///         final var application = ApphubFunctions.getApplication(GetApplicationArgs.builder()
///             .project("project-id")
///             .applicationId("application")
///             .location("location")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   application:
///     fn::invoke:
///       function: gcp:apphub:getApplication
///       arguments:
///         project: project-id
///         applicationId: application
///         location: location
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apphub_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

pulumi.Output<GetApplicationResult> getApplicationOutput(
  GetApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:apphub/getApplication:getApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationResult.fromMap);
}

/// Get information about a discovered service from its uri.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_service = gcp.apphub.getDiscoveredService({
///     location: "my-location",
///     serviceUri: "my-service-uri",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_service = gcp.apphub.get_discovered_service(location="my-location",
///     service_uri="my-service-uri")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_service = Gcp.Apphub.GetDiscoveredService.Invoke(new()
///     {
///         Location = "my-location",
///         ServiceUri = "my-service-uri",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apphub.GetDiscoveredService(ctx, &apphub.GetDiscoveredServiceArgs{
/// 			Location:   "my-location",
/// 			ServiceUri: "my-service-uri",
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
/// data "gcp_apphub_getdiscoveredservice" "my-service" {
///   location    = "my-location"
///   service_uri = "my-service-uri"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetDiscoveredServiceArgs;
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
///         final var my-service = ApphubFunctions.getDiscoveredService(GetDiscoveredServiceArgs.builder()
///             .location("my-location")
///             .serviceUri("my-service-uri")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-service:
///     fn::invoke:
///       function: gcp:apphub:getDiscoveredService
///       arguments:
///         location: my-location
///         serviceUri: my-service-uri
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apphub_get_discovered_service_get_discovered_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveredServiceResult> getDiscoveredService(
  GetDiscoveredServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredService:getDiscoveredService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredServiceResult.fromMap(result);
}

pulumi.Output<GetDiscoveredServiceResult> getDiscoveredServiceOutput(
  GetDiscoveredServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredService:getDiscoveredService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiscoveredServiceResult.fromMap);
}

/// Get information about a discovered workload from its uri.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_workload = gcp.apphub.getDiscoveredWorkload({
///     location: "us-central1",
///     workloadUri: "my-workload-uri",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_workload = gcp.apphub.get_discovered_workload(location="us-central1",
///     workload_uri="my-workload-uri")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_workload = Gcp.Apphub.GetDiscoveredWorkload.Invoke(new()
///     {
///         Location = "us-central1",
///         WorkloadUri = "my-workload-uri",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apphub.GetDiscoveredWorkload(ctx, &apphub.GetDiscoveredWorkloadArgs{
/// 			Location:    "us-central1",
/// 			WorkloadUri: "my-workload-uri",
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
/// data "gcp_apphub_getdiscoveredworkload" "my-workload" {
///   location     = "us-central1"
///   workload_uri = "my-workload-uri"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetDiscoveredWorkloadArgs;
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
///         final var my-workload = ApphubFunctions.getDiscoveredWorkload(GetDiscoveredWorkloadArgs.builder()
///             .location("us-central1")
///             .workloadUri("my-workload-uri")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-workload:
///     fn::invoke:
///       function: gcp:apphub:getDiscoveredWorkload
///       arguments:
///         location: us-central1
///         workloadUri: my-workload-uri
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apphub_get_discovered_workload_get_discovered_workload_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveredWorkloadResult> getDiscoveredWorkload(
  GetDiscoveredWorkloadArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredWorkload:getDiscoveredWorkload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredWorkloadResult.fromMap(result);
}

pulumi.Output<GetDiscoveredWorkloadResult> getDiscoveredWorkloadOutput(
  GetDiscoveredWorkloadArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredWorkload:getDiscoveredWorkload',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiscoveredWorkloadResult.fromMap);
}
