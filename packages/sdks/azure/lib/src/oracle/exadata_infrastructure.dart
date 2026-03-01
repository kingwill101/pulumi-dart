import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadata_infrastructure_args.dart';
import 'exadata_infrastructure_maintenance_window.dart';
import 'exadata_infrastructure_state.dart';

/// Manages a Cloud Exadata Infrastructure.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleExadataInfrastructure = new azure.oracle.ExadataInfrastructure("example", {
///     name: "example-exadata-infra",
///     resourceGroupName: example.name,
///     location: example.location,
///     zones: ["1"],
///     displayName: "example-exadata-infra",
///     storageCount: 3,
///     computeCount: 2,
///     shape: "Exadata.X11M",
///     databaseServerType: "X11M",
///     storageServerType: "X11M-HC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_exadata_infrastructure = azure.oracle.ExadataInfrastructure("example",
///     name="example-exadata-infra",
///     resource_group_name=example.name,
///     location=example.location,
///     zones=["1"],
///     display_name="example-exadata-infra",
///     storage_count=3,
///     compute_count=2,
///     shape="Exadata.X11M",
///     database_server_type="X11M",
///     storage_server_type="X11M-HC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleExadataInfrastructure = new Azure.Oracle.ExadataInfrastructure("example", new()
///     {
///         Name = "example-exadata-infra",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Zones = new[]
///         {
///             "1",
///         },
///         DisplayName = "example-exadata-infra",
///         StorageCount = 3,
///         ComputeCount = 2,
///         Shape = "Exadata.X11M",
///         DatabaseServerType = "X11M",
///         StorageServerType = "X11M-HC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/oracle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracle.NewExadataInfrastructure(ctx, "example", &oracle.ExadataInfrastructureArgs{
/// 			Name:              pulumi.String("example-exadata-infra"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 			DisplayName:        pulumi.String("example-exadata-infra"),
/// 			StorageCount:       pulumi.Int(3),
/// 			ComputeCount:       pulumi.Int(2),
/// 			Shape:              pulumi.String("Exadata.X11M"),
/// 			DatabaseServerType: pulumi.String("X11M"),
/// 			StorageServerType:  pulumi.String("X11M-HC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.oracle.ExadataInfrastructure;
/// import com.pulumi.azure.oracle.ExadataInfrastructureArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleExadataInfrastructure = new ExadataInfrastructure("exampleExadataInfrastructure", ExadataInfrastructureArgs.builder()
///             .name("example-exadata-infra")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .zones("1")
///             .displayName("example-exadata-infra")
///             .storageCount(3)
///             .computeCount(2)
///             .shape("Exadata.X11M")
///             .databaseServerType("X11M")
///             .storageServerType("X11M-HC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleExadataInfrastructure:
///     type: azure:oracle:ExadataInfrastructure
///     name: example
///     properties:
///       name: example-exadata-infra
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       zones:
///         - '1'
///       displayName: example-exadata-infra
///       storageCount: 3
///       computeCount: 2
///       shape: Exadata.X11M
///       databaseServerType: X11M
///       storageServerType: X11M-HC
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
///
/// ## Import
///
/// Cloud Exadata Infrastructures can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/exadataInfrastructure:ExadataInfrastructure example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup/providers/Oracle.Database/cloudExadataInfrastructures/cloudExadataInfrastructures1
/// ```
class ExadataInfrastructure extends pulumi.CustomResource {
  /// The number of compute servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<int> computeCount;
  /// The email address used by Oracle to send notifications regarding databases and infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<List<String>> customerContacts;
  /// The database server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> databaseServerType;
  /// The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> displayName;
  /// The Azure Region where the Cloud Exadata Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> location;
  /// One or more `maintenance_window` blocks as defined below. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<List<ExadataInfrastructureMaintenanceWindow>> maintenanceWindows;
  /// The name which should be used for this Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the ODB@A Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The shape of the ODB@A infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> shape;
  /// The number of storage servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<int> storageCount;
  /// The storage server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<String> storageServerType;
  /// A mapping of tags which should be assigned to the Cloud Exadata Infrastructure.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Cloud Exadata Infrastructure zones. Changing this forces a new Cloud Exadata Infrastructure to be created.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [ExadataInfrastructure].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExadataInfrastructure]. {@macro pulumi_oracle_exadata_infrastructure_exadata_infrastructure_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExadataInfrastructure(
    String name, {
    ExadataInfrastructureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/exadataInfrastructure:ExadataInfrastructure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.computeCount = registerOutput<int>('computeCount');
    this.customerContacts = registerOutput<List<String>>('customerContacts');
    this.databaseServerType = registerOutput<String>('databaseServerType');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.maintenanceWindows = registerOutput<List<ExadataInfrastructureMaintenanceWindow>>('maintenanceWindows');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.shape = registerOutput<String>('shape');
    this.storageCount = registerOutput<int>('storageCount');
    this.storageServerType = registerOutput<String>('storageServerType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zones = registerOutput<List<String>>('zones');
  }

  /// Gets an existing [ExadataInfrastructure] resource's state with the given [name] and [id].
  static ExadataInfrastructure get(
    String name,
    pulumi.Input<String> id, {
    ExadataInfrastructureState? state,
  }) {
    return ExadataInfrastructure._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExadataInfrastructure._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/exadataInfrastructure:ExadataInfrastructure',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.computeCount = registerOutput<int>('computeCount');
    this.customerContacts = registerOutput<List<String>>('customerContacts');
    this.databaseServerType = registerOutput<String>('databaseServerType');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.maintenanceWindows = registerOutput<List<ExadataInfrastructureMaintenanceWindow>>('maintenanceWindows');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.shape = registerOutput<String>('shape');
    this.storageCount = registerOutput<int>('storageCount');
    this.storageServerType = registerOutput<String>('storageServerType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zones = registerOutput<List<String>>('zones');
  }
}
