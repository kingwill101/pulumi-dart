import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_args.dart';
import 'system_data_response.dart';

/// The Job Definition resource.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### JobDefinitions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobDefinition = new AzureNative.StorageMover.JobDefinition("jobDefinition", new()
///     {
///         AgentName = "migration-agent",
///         CopyMode = AzureNative.StorageMover.CopyMode.Additive,
///         Description = "Example Job Definition Description",
///         JobDefinitionName = "examples-jobDefinitionName",
///         ProjectName = "examples-projectName",
///         ResourceGroupName = "examples-rg",
///         SourceName = "examples-sourceEndpointName",
///         SourceSubpath = "/",
///         StorageMoverName = "examples-storageMoverName",
///         TargetName = "examples-targetEndpointName",
///         TargetSubpath = "/",
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewJobDefinition(ctx, "jobDefinition", &storagemover.JobDefinitionArgs{
/// 			AgentName:         pulumi.String("migration-agent"),
/// 			CopyMode:          pulumi.String(storagemover.CopyModeAdditive),
/// 			Description:       pulumi.String("Example Job Definition Description"),
/// 			JobDefinitionName: pulumi.String("examples-jobDefinitionName"),
/// 			ProjectName:       pulumi.String("examples-projectName"),
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			SourceName:        pulumi.String("examples-sourceEndpointName"),
/// 			SourceSubpath:     pulumi.String("/"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
/// 			TargetName:        pulumi.String("examples-targetEndpointName"),
/// 			TargetSubpath:     pulumi.String("/"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagemover.JobDefinition;
/// import com.pulumi.azurenative.storagemover.JobDefinitionArgs;
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
///         var jobDefinition = new JobDefinition("jobDefinition", JobDefinitionArgs.builder()
///             .agentName("migration-agent")
///             .copyMode("Additive")
///             .description("Example Job Definition Description")
///             .jobDefinitionName("examples-jobDefinitionName")
///             .projectName("examples-projectName")
///             .resourceGroupName("examples-rg")
///             .sourceName("examples-sourceEndpointName")
///             .sourceSubpath("/")
///             .storageMoverName("examples-storageMoverName")
///             .targetName("examples-targetEndpointName")
///             .targetSubpath("/")
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
/// const jobDefinition = new azure_native.storagemover.JobDefinition("jobDefinition", {
///     agentName: "migration-agent",
///     copyMode: azure_native.storagemover.CopyMode.Additive,
///     description: "Example Job Definition Description",
///     jobDefinitionName: "examples-jobDefinitionName",
///     projectName: "examples-projectName",
///     resourceGroupName: "examples-rg",
///     sourceName: "examples-sourceEndpointName",
///     sourceSubpath: "/",
///     storageMoverName: "examples-storageMoverName",
///     targetName: "examples-targetEndpointName",
///     targetSubpath: "/",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_definition = azure_native.storagemover.JobDefinition("jobDefinition",
///     agent_name="migration-agent",
///     copy_mode=azure_native.storagemover.CopyMode.ADDITIVE,
///     description="Example Job Definition Description",
///     job_definition_name="examples-jobDefinitionName",
///     project_name="examples-projectName",
///     resource_group_name="examples-rg",
///     source_name="examples-sourceEndpointName",
///     source_subpath="/",
///     storage_mover_name="examples-storageMoverName",
///     target_name="examples-targetEndpointName",
///     target_subpath="/")
///
/// ```
///
/// ```yaml
/// resources:
///   jobDefinition:
///     type: azure-native:storagemover:JobDefinition
///     properties:
///       agentName: migration-agent
///       copyMode: Additive
///       description: Example Job Definition Description
///       jobDefinitionName: examples-jobDefinitionName
///       projectName: examples-projectName
///       resourceGroupName: examples-rg
///       sourceName: examples-sourceEndpointName
///       sourceSubpath: /
///       storageMoverName: examples-storageMoverName
///       targetName: examples-targetEndpointName
///       targetSubpath: /
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
/// $ pulumi import azure-native:storagemover:JobDefinition examples-jobDefinitionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageMover/storageMovers/{storageMoverName}/projects/{projectName}/jobDefinitions/{jobDefinitionName}
/// ```
class JobDefinition extends pulumi.CustomResource {
  /// Name of the Agent to assign for new Job Runs of this Job Definition.
  late final pulumi.Output<String?> agentName;
  /// Fully qualified resource id of the Agent to assign for new Job Runs of this Job Definition.
  late final pulumi.Output<String> agentResourceId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Strategy to use for copy.
  late final pulumi.Output<String> copyMode;
  /// A description for the Job Definition. OnPremToCloud is for migrating data from on-premises to cloud. CloudToCloud is for migrating data between cloud to cloud.
  late final pulumi.Output<String?> description;
  /// The name of the Job Run in a non-terminal state, if exists.
  late final pulumi.Output<String> latestJobRunName;
  /// The fully qualified resource ID of the Job Run in a non-terminal state, if exists.
  late final pulumi.Output<String> latestJobRunResourceId;
  /// The current status of the Job Run in a non-terminal state, if exists.
  late final pulumi.Output<String> latestJobRunStatus;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of this resource.
  late final pulumi.Output<String> provisioningState;
  /// The name of the source Endpoint.
  late final pulumi.Output<String> sourceName;
  /// Fully qualified resource ID of the source Endpoint.
  late final pulumi.Output<String> sourceResourceId;
  /// The subpath to use when reading from the source Endpoint.
  late final pulumi.Output<String?> sourceSubpath;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The name of the target Endpoint.
  late final pulumi.Output<String> targetName;
  /// Fully qualified resource ID of the target Endpoint.
  late final pulumi.Output<String> targetResourceId;
  /// The subpath to use when writing to the target Endpoint.
  late final pulumi.Output<String?> targetSubpath;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [JobDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobDefinition]. {@macro pulumi_storagemover_job_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobDefinition(
    String name, {
    JobDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagemover:JobDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentName = registerOutput<String?>('agentName');
    this.agentResourceId = registerOutput<String>('agentResourceId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.copyMode = registerOutput<String>('copyMode');
    this.description = registerOutput<String?>('description');
    this.latestJobRunName = registerOutput<String>('latestJobRunName');
    this.latestJobRunResourceId = registerOutput<String>('latestJobRunResourceId');
    this.latestJobRunStatus = registerOutput<String>('latestJobRunStatus');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sourceName = registerOutput<String>('sourceName');
    this.sourceResourceId = registerOutput<String>('sourceResourceId');
    this.sourceSubpath = registerOutput<String?>('sourceSubpath');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.targetName = registerOutput<String>('targetName');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.targetSubpath = registerOutput<String?>('targetSubpath');
    this.type = registerOutput<String>('type');
  }
}
