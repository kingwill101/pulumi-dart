import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_settings_args.dart';
import 'get_folder_settings_result.dart';
import 'get_organization_settings_args.dart';
import 'get_organization_settings_result.dart';
import 'get_project_settings_args.dart';
import 'get_project_settings_result.dart';

/// Describes the Google Cloud Observability Settings associated with a folder.
///
/// To get more information about Observability Settings, see:
///
/// * [API documentation](https://docs.cloud.google.com/stackdriver/docs/reference/observability/api/rest)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/stackdriver/docs/observability/set-defaults-for-observability-buckets)
///
/// &gt; **Warning:** This data source is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## Example Usage
///
/// ### Observability Folder Settings Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.observability.getFolderSettings({
///     folder: "my-folder-name",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.observability.get_folder_settings(folder="my-folder-name",
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
///     var settings = Gcp.Observability.GetFolderSettings.Invoke(new()
///     {
///         Folder = "my-folder-name",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := observability.LookupFolderSettings(ctx, &observability.LookupFolderSettingsArgs{
/// 			Folder:   "my-folder-name",
/// 			Location: "global",
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
/// data "gcp_observability_getfoldersettings" "settings" {
///   folder   = "my-folder-name"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetFolderSettingsArgs;
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
///         final var settings = ObservabilityFunctions.getFolderSettings(GetFolderSettingsArgs.builder()
///             .folder("my-folder-name")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:observability:getFolderSettings
///       arguments:
///         folder: my-folder-name
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_observability_get_folder_settings_get_folder_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderSettingsResult> getFolderSettings(
  GetFolderSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:observability/getFolderSettings:getFolderSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderSettingsResult.fromMap(result);
}

pulumi.Output<GetFolderSettingsResult> getFolderSettingsOutput(
  GetFolderSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:observability/getFolderSettings:getFolderSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderSettingsResult.fromMap);
}

/// Describes the Google Cloud Observability Settings associated with an organization.
///
/// To get more information about Observability Settings, see:
///
/// * [API documentation](https://docs.cloud.google.com/stackdriver/docs/reference/observability/api/rest)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/stackdriver/docs/observability/set-defaults-for-observability-buckets)
///
/// &gt; **Warning:** This data source is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## Example Usage
///
/// ### Observability Organization Settings Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.observability.getOrganizationSettings({
///     organization: "my-organization-name",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.observability.get_organization_settings(organization="my-organization-name",
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
///     var settings = Gcp.Observability.GetOrganizationSettings.Invoke(new()
///     {
///         Organization = "my-organization-name",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := observability.LookupOrganizationSettings(ctx, &observability.LookupOrganizationSettingsArgs{
/// 			Organization: "my-organization-name",
/// 			Location:     "global",
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
/// data "gcp_observability_getorganizationsettings" "settings" {
///   organization = "my-organization-name"
///   location     = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetOrganizationSettingsArgs;
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
///         final var settings = ObservabilityFunctions.getOrganizationSettings(GetOrganizationSettingsArgs.builder()
///             .organization("my-organization-name")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:observability:getOrganizationSettings
///       arguments:
///         organization: my-organization-name
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_observability_get_organization_settings_get_organization_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSettingsResult> getOrganizationSettings(
  GetOrganizationSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:observability/getOrganizationSettings:getOrganizationSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSettingsResult.fromMap(result);
}

pulumi.Output<GetOrganizationSettingsResult> getOrganizationSettingsOutput(
  GetOrganizationSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:observability/getOrganizationSettings:getOrganizationSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationSettingsResult.fromMap);
}

/// Describes the Google Cloud Observability Settings associated with a project.
///
/// To get more information about Observability Settings, see:
///
/// * [API documentation](https://docs.cloud.google.com/stackdriver/docs/reference/observability/api/rest)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/stackdriver/docs/observability/set-defaults-for-observability-buckets)
///
/// &gt; **Warning:** This data source is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## Example Usage
///
/// ### Observability Project Settings Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.observability.getProjectSettings({
///     project: "my-project-name",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.observability.get_project_settings(project="my-project-name",
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
///     var settings = Gcp.Observability.GetProjectSettings.Invoke(new()
///     {
///         Project = "my-project-name",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := observability.LookupProjectSettings(ctx, &observability.LookupProjectSettingsArgs{
/// 			Project:  "my-project-name",
/// 			Location: "global",
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
/// data "gcp_observability_getprojectsettings" "settings" {
///   project  = "my-project-name"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetProjectSettingsArgs;
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
///         final var settings = ObservabilityFunctions.getProjectSettings(GetProjectSettingsArgs.builder()
///             .project("my-project-name")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:observability:getProjectSettings
///       arguments:
///         project: my-project-name
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_observability_get_project_settings_get_project_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectSettingsResult> getProjectSettings(
  GetProjectSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:observability/getProjectSettings:getProjectSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectSettingsResult.fromMap(result);
}

pulumi.Output<GetProjectSettingsResult> getProjectSettingsOutput(
  GetProjectSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:observability/getProjectSettings:getProjectSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectSettingsResult.fromMap);
}
