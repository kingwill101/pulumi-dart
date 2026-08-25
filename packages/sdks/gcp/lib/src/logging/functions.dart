import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_settings_args.dart';
import 'get_folder_settings_result.dart';
import 'get_log_view_args.dart';
import 'get_log_view_iam_policy_args.dart';
import 'get_log_view_iam_policy_result.dart';
import 'get_log_view_result.dart';
import 'get_organization_settings_args.dart';
import 'get_organization_settings_result.dart';
import 'get_project_cmek_settings_args.dart';
import 'get_project_cmek_settings_result.dart';
import 'get_project_settings_args.dart';
import 'get_project_settings_result.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';

/// Describes the settings associated with a folder.
///
/// To get more information about LoggingFolderSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/folders/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Folder Settings Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getFolderSettings({
///     folder: "my-folder-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_folder_settings(folder="my-folder-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var settings = Gcp.Logging.GetFolderSettings.Invoke(new()
///     {
///         Folder = "my-folder-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.LookupFolderSettings(ctx, &logging.LookupFolderSettingsArgs{
/// 			Folder: "my-folder-name",
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
/// data "gcp_logging_getfoldersettings" "settings" {
///   folder = "my-folder-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetFolderSettingsArgs;
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
///         final var settings = LoggingFunctions.getFolderSettings(GetFolderSettingsArgs.builder()
///             .folder("my-folder-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:logging:getFolderSettings
///       arguments:
///         folder: my-folder-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_folder_settings_get_folder_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderSettingsResult> getFolderSettings(
  GetFolderSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getFolderSettings:getFolderSettings',
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
    'gcp:logging/getFolderSettings:getFolderSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderSettingsResult.fromMap);
}

/// Get information about a Google Cloud Logging Log View. For more information, see the
/// [official documentation](https://cloud.google.com/logging/docs/apis)
/// and [API](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.locations.buckets.views).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.logging.getLogView({
///     parent: "projects/my-project",
///     location: "global",
///     bucket: "_Default",
///     name: "my-view",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.logging.get_log_view(parent="projects/my-project",
///     location="global",
///     bucket="_Default",
///     name="my-view")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Logging.GetLogView.Invoke(new()
///     {
///         Parent = "projects/my-project",
///         Location = "global",
///         Bucket = "_Default",
///         Name = "my-view",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.LookupLogView(ctx, &logging.LookupLogViewArgs{
/// 			Parent:   "projects/my-project",
/// 			Location: "global",
/// 			Bucket:   "_Default",
/// 			Name:     "my-view",
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
/// data "gcp_logging_getlogview" "default" {
///   parent   = "projects/my-project"
///   location = "global"
///   bucket   = "_Default"
///   name     = "my-view"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetLogViewArgs;
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
///         final var default = LoggingFunctions.getLogView(GetLogViewArgs.builder()
///             .parent("projects/my-project")
///             .location("global")
///             .bucket("_Default")
///             .name("my-view")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:logging:getLogView
///       arguments:
///         parent: projects/my-project
///         location: global
///         bucket: _Default
///         name: my-view
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_log_view_get_log_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogViewResult> getLogView(
  GetLogViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getLogView:getLogView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogViewResult.fromMap(result);
}

pulumi.Output<GetLogViewResult> getLogViewOutput(
  GetLogViewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:logging/getLogView:getLogView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogViewResult.fromMap);
}

/// Retrieves the current IAM policy data for logview
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.logging.getLogViewIamPolicy({
///     parent: loggingLogView.parent,
///     location: loggingLogView.location,
///     bucket: loggingLogView.bucket,
///     name: loggingLogView.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.logging.get_log_view_iam_policy(parent=logging_log_view["parent"],
///     location=logging_log_view["location"],
///     bucket=logging_log_view["bucket"],
///     name=logging_log_view["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Logging.GetLogViewIamPolicy.Invoke(new()
///     {
///         Parent = loggingLogView.Parent,
///         Location = loggingLogView.Location,
///         Bucket = loggingLogView.Bucket,
///         Name = loggingLogView.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.LookupLogViewIamPolicy(ctx, &logging.LookupLogViewIamPolicyArgs{
/// 			Parent:   loggingLogView.Parent,
/// 			Location: pulumi.StringRef(loggingLogView.Location),
/// 			Bucket:   loggingLogView.Bucket,
/// 			Name:     loggingLogView.Name,
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
/// data "gcp_logging_getlogviewiampolicy" "policy" {
///   parent   = loggingLogView.parent
///   location = loggingLogView.location
///   bucket   = loggingLogView.bucket
///   name     = loggingLogView.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetLogViewIamPolicyArgs;
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
///         final var policy = LoggingFunctions.getLogViewIamPolicy(GetLogViewIamPolicyArgs.builder()
///             .parent(loggingLogView.get("parent"))
///             .location(loggingLogView.get("location"))
///             .bucket(loggingLogView.get("bucket"))
///             .name(loggingLogView.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:logging:getLogViewIamPolicy
///       arguments:
///         parent: ${loggingLogView.parent}
///         location: ${loggingLogView.location}
///         bucket: ${loggingLogView.bucket}
///         name: ${loggingLogView.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_log_view_iam_policy_get_log_view_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogViewIamPolicyResult> getLogViewIamPolicy(
  GetLogViewIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getLogViewIamPolicy:getLogViewIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogViewIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLogViewIamPolicyResult> getLogViewIamPolicyOutput(
  GetLogViewIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:logging/getLogViewIamPolicy:getLogViewIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogViewIamPolicyResult.fromMap);
}

/// Describes the settings associated with a organization.
///
/// To get more information about LoggingOrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Organization Settings Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getOrganizationSettings({
///     organization: "my-organization-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_organization_settings(organization="my-organization-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var settings = Gcp.Logging.GetOrganizationSettings.Invoke(new()
///     {
///         Organization = "my-organization-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.LookupOrganizationSettings(ctx, &logging.LookupOrganizationSettingsArgs{
/// 			Organization: "my-organization-name",
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
/// data "gcp_logging_getorganizationsettings" "settings" {
///   organization = "my-organization-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetOrganizationSettingsArgs;
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
///         final var settings = LoggingFunctions.getOrganizationSettings(GetOrganizationSettingsArgs.builder()
///             .organization("my-organization-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:logging:getOrganizationSettings
///       arguments:
///         organization: my-organization-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_organization_settings_get_organization_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSettingsResult> getOrganizationSettings(
  GetOrganizationSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getOrganizationSettings:getOrganizationSettings',
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
    'gcp:logging/getOrganizationSettings:getOrganizationSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationSettingsResult.fromMap);
}

/// Describes the customer-managed encryption key (CMEK) settings associated with a project.
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects/getCmekSettings)
/// * [Enable CMEK](https://cloud.google.com/logging/docs/routing/managed-encryption-storage#enable).
///
/// ## Example Usage
///
/// ### Logging Project Cmek Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cmekSettings = gcp.logging.getProjectCmekSettings({
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cmek_settings = gcp.logging.get_project_cmek_settings(project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cmekSettings = Gcp.Logging.GetProjectCmekSettings.Invoke(new()
///     {
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.GetProjectCmekSettings(ctx, &logging.GetProjectCmekSettingsArgs{
/// 			Project: "my-project-name",
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
/// data "gcp_logging_getprojectcmeksettings" "cmekSettings" {
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetProjectCmekSettingsArgs;
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
///         final var cmekSettings = LoggingFunctions.getProjectCmekSettings(GetProjectCmekSettingsArgs.builder()
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   cmekSettings:
///     fn::invoke:
///       function: gcp:logging:getProjectCmekSettings
///       arguments:
///         project: my-project-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_project_cmek_settings_get_project_cmek_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCmekSettingsResult> getProjectCmekSettings(
  GetProjectCmekSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getProjectCmekSettings:getProjectCmekSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCmekSettingsResult.fromMap(result);
}

pulumi.Output<GetProjectCmekSettingsResult> getProjectCmekSettingsOutput(
  GetProjectCmekSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:logging/getProjectCmekSettings:getProjectCmekSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCmekSettingsResult.fromMap);
}

/// Describes the settings associated with a project.
///
/// To get more information about LoggingProjectSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Project Settings Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getProjectSettings({
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_project_settings(project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var settings = Gcp.Logging.GetProjectSettings.Invoke(new()
///     {
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.GetProjectSettings(ctx, &logging.GetProjectSettingsArgs{
/// 			Project: "my-project-name",
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
/// data "gcp_logging_getprojectsettings" "settings" {
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetProjectSettingsArgs;
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
///         final var settings = LoggingFunctions.getProjectSettings(GetProjectSettingsArgs.builder()
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   settings:
///     fn::invoke:
///       function: gcp:logging:getProjectSettings
///       arguments:
///         project: my-project-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_project_settings_get_project_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectSettingsResult> getProjectSettings(
  GetProjectSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getProjectSettings:getProjectSettings',
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
    'gcp:logging/getProjectSettings:getProjectSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectSettingsResult.fromMap);
}

/// Use this data source to get a project, folder, organization or billing account logging sink details.
/// To get more information about Service, see:
///
/// [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/sinks)
///
/// ## Example Usage
///
/// ### Retrieve Project Logging Sink Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project_sink = gcp.logging.getSink({
///     id: "projects/0123456789/sinks/my-sink-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project_sink = gcp.logging.get_sink(id="projects/0123456789/sinks/my-sink-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project_sink = Gcp.Logging.GetSink.Invoke(new()
///     {
///         Id = "projects/0123456789/sinks/my-sink-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.GetSink(ctx, &logging.GetSinkArgs{
/// 			Id: "projects/0123456789/sinks/my-sink-name",
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
/// data "gcp_logging_getsink" "project-sink" {
///   id = "projects/0123456789/sinks/my-sink-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetSinkArgs;
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
///         final var project-sink = LoggingFunctions.getSink(GetSinkArgs.builder()
///             .id("projects/0123456789/sinks/my-sink-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   project-sink:
///     fn::invoke:
///       function: gcp:logging:getSink
///       arguments:
///         id: projects/0123456789/sinks/my-sink-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_logging_get_sink_get_sink_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getSink:getSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}

pulumi.Output<GetSinkResult> getSinkOutput(
  GetSinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:logging/getSink:getSink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSinkResult.fromMap);
}
