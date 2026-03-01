import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_args.dart';
import 'integration_runtime_ssis_catalog_info.dart';
import 'integration_runtime_ssis_copy_compute_scale.dart';
import 'integration_runtime_ssis_custom_setup_script.dart';
import 'integration_runtime_ssis_express_custom_setup.dart';
import 'integration_runtime_ssis_express_vnet_integration.dart';
import 'integration_runtime_ssis_package_store.dart';
import 'integration_runtime_ssis_pipeline_external_compute_scale.dart';
import 'integration_runtime_ssis_proxy.dart';
import 'integration_runtime_ssis_state.dart';
import 'integration_runtime_ssis_vnet_integration.dart';

/// Manages a Data Factory Azure-SSIS Integration Runtime.
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
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleIntegrationRuntimeSsis = new azure.datafactory.IntegrationRuntimeSsis("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     location: example.location,
///     nodeSize: "Standard_D8_v3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_integration_runtime_ssis = azure.datafactory.IntegrationRuntimeSsis("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     location=example.location,
///     node_size="Standard_D8_v3")
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
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleIntegrationRuntimeSsis = new Azure.DataFactory.IntegrationRuntimeSsis("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Location = example.Location,
///         NodeSize = "Standard_D8_v3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
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
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewIntegrationRuntimeSsis(ctx, "example", &datafactory.IntegrationRuntimeSsisArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Location:      example.Location,
/// 			NodeSize:      pulumi.String("Standard_D8_v3"),
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.IntegrationRuntimeSsis;
/// import com.pulumi.azure.datafactory.IntegrationRuntimeSsisArgs;
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
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleIntegrationRuntimeSsis = new IntegrationRuntimeSsis("exampleIntegrationRuntimeSsis", IntegrationRuntimeSsisArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .location(example.location())
///             .nodeSize("Standard_D8_v3")
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleIntegrationRuntimeSsis:
///     type: azure:datafactory:IntegrationRuntimeSsis
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       location: ${example.location}
///       nodeSize: Standard_D8_v3
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Azure-SSIS Integration Runtimes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/integrationRuntimeSsis:IntegrationRuntimeSsis example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/integrationRuntimes/example
/// ```
class IntegrationRuntimeSsis extends pulumi.CustomResource {
  /// A `catalog_info` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisCatalogInfo?> catalogInfo;
  /// One `copy_compute_scale` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisCopyComputeScale?> copyComputeScale;
  /// The name of a Data Factory Credential that the SSIS integration will use to access data sources. For example, `azure.datafactory.CredentialUserManagedIdentity`
  ///
  /// > **Note:** If `credential_name` is omitted, the integration runtime will use the Data Factory assigned identity.
  late final pulumi.Output<String?> credentialName;
  /// A `custom_setup_script` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisCustomSetupScript?> customSetupScript;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// Integration runtime description.
  late final pulumi.Output<String?> description;
  /// The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`.
  late final pulumi.Output<String?> edition;
  /// An `express_custom_setup` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisExpressCustomSetup?> expressCustomSetup;
  /// A `express_vnet_integration` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisExpressVnetIntegration?> expressVnetIntegration;
  /// The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`.
  late final pulumi.Output<String?> licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`.
  late final pulumi.Output<int?> maxParallelExecutionsPerNode;
  /// Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2`
  late final pulumi.Output<String> nodeSize;
  /// Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`.
  late final pulumi.Output<int?> numberOfNodes;
  /// One or more `package_store` block as defined below.
  late final pulumi.Output<List<IntegrationRuntimeSsisPackageStore>?> packageStores;
  /// One `pipeline_external_compute_scale` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisPipelineExternalComputeScale?> pipelineExternalComputeScale;
  /// A `proxy` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisProxy?> proxy;
  /// A `vnet_integration` block as defined below.
  late final pulumi.Output<IntegrationRuntimeSsisVnetIntegration?> vnetIntegration;

  /// Creates a new [IntegrationRuntimeSsis].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntimeSsis]. {@macro pulumi_datafactory_integration_runtime_ssis_integration_runtime_ssis_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntimeSsis(
    String name, {
    IntegrationRuntimeSsisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/integrationRuntimeSsis:IntegrationRuntimeSsis',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogInfo = registerOutput<IntegrationRuntimeSsisCatalogInfo?>('catalogInfo');
    this.copyComputeScale = registerOutput<IntegrationRuntimeSsisCopyComputeScale?>('copyComputeScale');
    this.credentialName = registerOutput<String?>('credentialName');
    this.customSetupScript = registerOutput<IntegrationRuntimeSsisCustomSetupScript?>('customSetupScript');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.edition = registerOutput<String?>('edition');
    this.expressCustomSetup = registerOutput<IntegrationRuntimeSsisExpressCustomSetup?>('expressCustomSetup');
    this.expressVnetIntegration = registerOutput<IntegrationRuntimeSsisExpressVnetIntegration?>('expressVnetIntegration');
    this.licenseType = registerOutput<String?>('licenseType');
    this.location = registerOutput<String>('location');
    this.maxParallelExecutionsPerNode = registerOutput<int?>('maxParallelExecutionsPerNode');
    this.name = registerOutput<String>('name');
    this.nodeSize = registerOutput<String>('nodeSize');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.packageStores = registerOutput<List<IntegrationRuntimeSsisPackageStore>?>('packageStores');
    this.pipelineExternalComputeScale = registerOutput<IntegrationRuntimeSsisPipelineExternalComputeScale?>('pipelineExternalComputeScale');
    this.proxy = registerOutput<IntegrationRuntimeSsisProxy?>('proxy');
    this.vnetIntegration = registerOutput<IntegrationRuntimeSsisVnetIntegration?>('vnetIntegration');
  }

  /// Gets an existing [IntegrationRuntimeSsis] resource's state with the given [name] and [id].
  static IntegrationRuntimeSsis get(
    String name,
    pulumi.Input<String> id, {
    IntegrationRuntimeSsisState? state,
  }) {
    return IntegrationRuntimeSsis._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationRuntimeSsis._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/integrationRuntimeSsis:IntegrationRuntimeSsis',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogInfo = registerOutput<IntegrationRuntimeSsisCatalogInfo?>('catalogInfo');
    this.copyComputeScale = registerOutput<IntegrationRuntimeSsisCopyComputeScale?>('copyComputeScale');
    this.credentialName = registerOutput<String?>('credentialName');
    this.customSetupScript = registerOutput<IntegrationRuntimeSsisCustomSetupScript?>('customSetupScript');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.edition = registerOutput<String?>('edition');
    this.expressCustomSetup = registerOutput<IntegrationRuntimeSsisExpressCustomSetup?>('expressCustomSetup');
    this.expressVnetIntegration = registerOutput<IntegrationRuntimeSsisExpressVnetIntegration?>('expressVnetIntegration');
    this.licenseType = registerOutput<String?>('licenseType');
    this.location = registerOutput<String>('location');
    this.maxParallelExecutionsPerNode = registerOutput<int?>('maxParallelExecutionsPerNode');
    this.name = registerOutput<String>('name');
    this.nodeSize = registerOutput<String>('nodeSize');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.packageStores = registerOutput<List<IntegrationRuntimeSsisPackageStore>?>('packageStores');
    this.pipelineExternalComputeScale = registerOutput<IntegrationRuntimeSsisPipelineExternalComputeScale?>('pipelineExternalComputeScale');
    this.proxy = registerOutput<IntegrationRuntimeSsisProxy?>('proxy');
    this.vnetIntegration = registerOutput<IntegrationRuntimeSsisVnetIntegration?>('vnetIntegration');
  }
}
