import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'system_data_response.dart';

/// The Project resource.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Projects_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.StorageMover.Project("project", new()
///     {
///         Description = "Example Project Description",
///         ProjectName = "examples-projectName",
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
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
/// 		_, err := storagemover.NewProject(ctx, "project", &storagemover.ProjectArgs{
/// 			Description:       pulumi.String("Example Project Description"),
/// 			ProjectName:       pulumi.String("examples-projectName"),
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
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
/// import com.pulumi.azurenative.storagemover.Project;
/// import com.pulumi.azurenative.storagemover.ProjectArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .description("Example Project Description")
///             .projectName("examples-projectName")
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
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
/// const project = new azure_native.storagemover.Project("project", {
///     description: "Example Project Description",
///     projectName: "examples-projectName",
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.storagemover.Project("project",
///     description="Example Project Description",
///     project_name="examples-projectName",
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:storagemover:Project
///     properties:
///       description: Example Project Description
///       projectName: examples-projectName
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
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
/// $ pulumi import azure-native:storagemover:Project examples-projectName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageMover/storageMovers/{storageMoverName}/projects/{projectName}
/// ```
class Project extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description for the Project.
  late final pulumi.Output<String?> description;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of this resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_storagemover_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storagemover:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
