import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locations_args.dart';
import 'get_locations_result.dart';
import 'get_service_args.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';
import 'get_service_result.dart';

/// Get Cloud Run locations available for a project.
///
/// To get more information about Cloud Run, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.cloudrun.getLocations({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.cloudrun.get_locations()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Gcp.CloudRun.GetLocations.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.GetLocations(ctx, &cloudrun.GetLocationsArgs{}, nil)
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
/// data "gcp_cloudrun_getlocations" "available" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.CloudrunFunctions;
/// import com.pulumi.gcp.cloudrun.inputs.GetLocationsArgs;
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
///         final var available = CloudrunFunctions.getLocations(GetLocationsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   available:
///     fn::invoke:
///       function: gcp:cloudrun:getLocations
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrun_get_locations_get_locations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocationsResult> getLocations(
  GetLocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getLocations:getLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}

/// Get information about a Cloud Run Service.
///
///
/// For more information see the [official documentation](https://cloud.google.com/run/docs/) and
/// the [API](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.cloudrun.getService({
///     location: defaultGoogleCloudRunService.location,
///     name: defaultGoogleCloudRunService.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.get_service(location=default_google_cloud_run_service["location"],
///     name=default_google_cloud_run_service["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CloudRun.GetService.Invoke(new()
///     {
///         Location = defaultGoogleCloudRunService.Location,
///         Name = defaultGoogleCloudRunService.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.LookupService(ctx, &cloudrun.LookupServiceArgs{
/// 			Location: defaultGoogleCloudRunService.Location,
/// 			Name:     defaultGoogleCloudRunService.Name,
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
/// data "gcp_cloudrun_getservice" "default" {
///   location = defaultGoogleCloudRunService.location
///   name     = defaultGoogleCloudRunService.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.CloudrunFunctions;
/// import com.pulumi.gcp.cloudrun.inputs.GetServiceArgs;
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
///         final var default = CloudrunFunctions.getService(GetServiceArgs.builder()
///             .location(defaultGoogleCloudRunService.get("location"))
///             .name(defaultGoogleCloudRunService.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:cloudrun:getService
///       arguments:
///         location: ${defaultGoogleCloudRunService.location}
///         name: ${defaultGoogleCloudRunService.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrun_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
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
/// const policy = gcp.cloudrun.getServiceIamPolicy({
///     location: _default.location,
///     project: _default.project,
///     service: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudrun.get_service_iam_policy(location=default["location"],
///     project=default["project"],
///     service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CloudRun.GetServiceIamPolicy.Invoke(new()
///     {
///         Location = @default.Location,
///         Project = @default.Project,
///         Service = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.GetServiceIamPolicy(ctx, &cloudrun.GetServiceIamPolicyArgs{
/// 			Location: pulumi.StringRef(_default.Location),
/// 			Project:  pulumi.StringRef(_default.Project),
/// 			Service:  _default.Name,
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
/// data "gcp_cloudrun_getserviceiampolicy" "policy" {
///   location = default.location
///   project  = default.project
///   service  = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.CloudrunFunctions;
/// import com.pulumi.gcp.cloudrun.inputs.GetServiceIamPolicyArgs;
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
///         final var policy = CloudrunFunctions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
///             .location(default_.get("location"))
///             .project(default_.get("project"))
///             .service(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:cloudrun:getServiceIamPolicy
///       arguments:
///         location: ${default.location}
///         project: ${default.project}
///         service: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudrun_get_service_iam_policy_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}
