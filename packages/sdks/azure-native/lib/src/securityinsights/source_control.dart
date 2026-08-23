import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_info_response.dart';
import 'pull_request_response.dart';
import 'repository_resource_info_response.dart';
import 'repository_response.dart';
import 'service_principal_response.dart';
import 'source_control_args.dart';
import 'system_data_response.dart';
import 'workload_identity_federation_response.dart';

/// Represents a SourceControl in Azure Security Insights.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a source control.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sourceControl = new AzureNative.SecurityInsights.SourceControl("sourceControl", new()
///     {
///         ContentTypes = new[]
///         {
///             AzureNative.SecurityInsights.ContentType.AnalyticsRule,
///             AzureNative.SecurityInsights.ContentType.Workbook,
///         },
///         Description = "This is a source control",
///         DisplayName = "My Source Control",
///         RepoType = AzureNative.SecurityInsights.RepoType.Github,
///         Repository = new AzureNative.SecurityInsights.Inputs.RepositoryArgs
///         {
///             Branch = "master",
///             DisplayUrl = "https://github.com/user/repo",
///             Url = "https://github.com/user/repo",
///         },
///         RepositoryAccess = new AzureNative.SecurityInsights.Inputs.RepositoryAccessArgs
///         {
///             ClientId = "54b3c2c0-1f48-4a1c-af9f-6399c3240b73",
///             Code = "939fd7c6caf754f4f41f",
///             Kind = AzureNative.SecurityInsights.RepositoryAccessKind.OAuth,
///             State = "state",
///         },
///         ResourceGroupName = "myRg",
///         SourceControlId = "789e0c1f-4a3d-43ad-809c-e713b677b04a",
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewSourceControl(ctx, "sourceControl", &securityinsights.SourceControlArgs{
/// 			ContentTypes: pulumi.StringArray{
/// 				pulumi.String(securityinsights.ContentTypeAnalyticsRule),
/// 				pulumi.String(securityinsights.ContentTypeWorkbook),
/// 			},
/// 			Description: pulumi.String("This is a source control"),
/// 			DisplayName: pulumi.String("My Source Control"),
/// 			RepoType:    pulumi.String(securityinsights.RepoTypeGithub),
/// 			Repository: &securityinsights.RepositoryArgs{
/// 				Branch:     pulumi.String("master"),
/// 				DisplayUrl: pulumi.String("https://github.com/user/repo"),
/// 				Url:        pulumi.String("https://github.com/user/repo"),
/// 			},
/// 			RepositoryAccess: &securityinsights.RepositoryAccessArgs{
/// 				ClientId: pulumi.String("54b3c2c0-1f48-4a1c-af9f-6399c3240b73"),
/// 				Code:     pulumi.String("939fd7c6caf754f4f41f"),
/// 				Kind:     pulumi.String(securityinsights.RepositoryAccessKindOAuth),
/// 				State:    pulumi.String("state"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			SourceControlId:   pulumi.String("789e0c1f-4a3d-43ad-809c-e713b677b04a"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_sourcecontrol" "sourceControl" {
///   content_types = ["AnalyticsRule", "Workbook"]
///   description   = "This is a source control"
///   display_name  = "My Source Control"
///   repo_type     = "Github"
///   repository = {
///     branch      = "master"
///     display_url = "https://github.com/user/repo"
///     url         = "https://github.com/user/repo"
///   }
///   repository_access = {
///     client_id = "54b3c2c0-1f48-4a1c-af9f-6399c3240b73"
///     code      = "939fd7c6caf754f4f41f"
///     kind      = "OAuth"
///     state     = "state"
///   }
///   resource_group_name = "myRg"
///   source_control_id   = "789e0c1f-4a3d-43ad-809c-e713b677b04a"
///   workspace_name      = "myWorkspace"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.SourceControl;
/// import com.pulumi.azurenative.securityinsights.SourceControlArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.RepositoryArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.RepositoryAccessArgs;
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
///         var sourceControl = new SourceControl("sourceControl", SourceControlArgs.builder()
///             .contentTypes(
///                 "AnalyticsRule",
///                 "Workbook")
///             .description("This is a source control")
///             .displayName("My Source Control")
///             .repoType("Github")
///             .repository(RepositoryArgs.builder()
///                 .branch("master")
///                 .displayUrl("https://github.com/user/repo")
///                 .url("https://github.com/user/repo")
///                 .build())
///             .repositoryAccess(RepositoryAccessArgs.builder()
///                 .clientId("54b3c2c0-1f48-4a1c-af9f-6399c3240b73")
///                 .code("939fd7c6caf754f4f41f")
///                 .kind("OAuth")
///                 .state("state")
///                 .build())
///             .resourceGroupName("myRg")
///             .sourceControlId("789e0c1f-4a3d-43ad-809c-e713b677b04a")
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const sourceControl = new azure_native.securityinsights.SourceControl("sourceControl", {
///     contentTypes: [
///         azure_native.securityinsights.ContentType.AnalyticsRule,
///         azure_native.securityinsights.ContentType.Workbook,
///     ],
///     description: "This is a source control",
///     displayName: "My Source Control",
///     repoType: azure_native.securityinsights.RepoType.Github,
///     repository: {
///         branch: "master",
///         displayUrl: "https://github.com/user/repo",
///         url: "https://github.com/user/repo",
///     },
///     repositoryAccess: {
///         clientId: "54b3c2c0-1f48-4a1c-af9f-6399c3240b73",
///         code: "939fd7c6caf754f4f41f",
///         kind: azure_native.securityinsights.RepositoryAccessKind.OAuth,
///         state: "state",
///     },
///     resourceGroupName: "myRg",
///     sourceControlId: "789e0c1f-4a3d-43ad-809c-e713b677b04a",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// source_control = azure_native.securityinsights.SourceControl("sourceControl",
///     content_types=[
///         azure_native.securityinsights.ContentType.ANALYTICS_RULE,
///         azure_native.securityinsights.ContentType.WORKBOOK,
///     ],
///     description="This is a source control",
///     display_name="My Source Control",
///     repo_type=azure_native.securityinsights.RepoType.GITHUB,
///     repository={
///         "branch": "master",
///         "display_url": "https://github.com/user/repo",
///         "url": "https://github.com/user/repo",
///     },
///     repository_access={
///         "client_id": "54b3c2c0-1f48-4a1c-af9f-6399c3240b73",
///         "code": "939fd7c6caf754f4f41f",
///         "kind": azure_native.securityinsights.RepositoryAccessKind.O_AUTH,
///         "state": "state",
///     },
///     resource_group_name="myRg",
///     source_control_id="789e0c1f-4a3d-43ad-809c-e713b677b04a",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   sourceControl:
///     type: azure-native:securityinsights:SourceControl
///     properties:
///       contentTypes:
///         - AnalyticsRule
///         - Workbook
///       description: This is a source control
///       displayName: My Source Control
///       repoType: Github
///       repository:
///         branch: master
///         displayUrl: https://github.com/user/repo
///         url: https://github.com/user/repo
///       repositoryAccess:
///         clientId: 54b3c2c0-1f48-4a1c-af9f-6399c3240b73
///         code: 939fd7c6caf754f4f41f
///         kind: OAuth
///         state: state
///       resourceGroupName: myRg
///       sourceControlId: 789e0c1f-4a3d-43ad-809c-e713b677b04a
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:securityinsights:SourceControl 789e0c1f-4a3d-43ad-809c-e713b677b04a /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/sourcecontrols/{sourceControlId}
/// ```
class SourceControl extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Array of source control content types.
  late final pulumi.Output<List<String>> contentTypes;
  /// A description of the source control
  late final pulumi.Output<String?> description;
  /// The display name of the source control
  late final pulumi.Output<String> displayName;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// Information regarding the latest deployment for the source control.
  late final pulumi.Output<DeploymentInfoResponse> lastDeploymentInfo;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Information regarding the pull request of the source control.
  late final pulumi.Output<PullRequestResponse> pullRequest;
  /// The repository type of the source control
  late final pulumi.Output<String> repoType;
  /// Repository metadata.
  late final pulumi.Output<RepositoryResponse> repository;
  /// Information regarding the resources created in user's repository.
  late final pulumi.Output<RepositoryResourceInfoResponse?> repositoryResourceInfo;
  /// Service principal metadata.
  late final pulumi.Output<ServicePrincipalResponse?> servicePrincipal;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The version number associated with the source control
  late final pulumi.Output<String> version;
  /// Workload Identity metadata.
  late final pulumi.Output<WorkloadIdentityFederationResponse> workloadIdentityFederation;

  /// Creates a new [SourceControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControl]. {@macro pulumi_securityinsights_source_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControl(
    String name, {
    SourceControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:SourceControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentTypes = registerOutput<List<String>>('contentTypes');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    lastDeploymentInfo = registerOutput<DeploymentInfoResponse>('lastDeploymentInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    pullRequest = registerOutput<PullRequestResponse>('pullRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PullRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repoType = registerOutput<String>('repoType');
    repository = registerOutput<RepositoryResponse>('repository', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    repositoryResourceInfo = registerOutput<RepositoryResourceInfoResponse?>('repositoryResourceInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryResourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicePrincipal = registerOutput<ServicePrincipalResponse?>('servicePrincipal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
    workloadIdentityFederation = registerOutput<WorkloadIdentityFederationResponse>('workloadIdentityFederation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadIdentityFederationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
