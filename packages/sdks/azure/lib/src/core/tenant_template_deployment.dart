import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_template_deployment_args.dart';
import 'tenant_template_deployment_state.dart';

/// Manages a Template Deployment at the Tenant Scope.
///
/// &gt; **Note:** Deleting a Deployment at the Tenant Scope will not delete any resources created by the deployment.
///
/// &gt; **Note:** Deployments to a Tenant are always Incrementally applied. Existing resources that are not part of the template will not be removed.
///
/// &gt; **Note:** Tenant Template Deployments are always targeted at the Tenant in which the current User, Managed Identity, or Service Principal being used by Terraform is homed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getTemplateSpecVersion({
///     name: "myTemplateForTenant",
///     resourceGroupName: "myResourceGroup",
///     version: "v0.1",
/// });
/// const exampleTenantTemplateDeployment = new azure.core.TenantTemplateDeployment("example", {
///     name: "example",
///     location: "West Europe",
///     templateSpecVersionId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_template_spec_version(name="myTemplateForTenant",
///     resource_group_name="myResourceGroup",
///     version="v0.1")
/// example_tenant_template_deployment = azure.core.TenantTemplateDeployment("example",
///     name="example",
///     location="West Europe",
///     template_spec_version_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetTemplateSpecVersion.Invoke(new()
///     {
///         Name = "myTemplateForTenant",
///         ResourceGroupName = "myResourceGroup",
///         Version = "v0.1",
///     });
///
///     var exampleTenantTemplateDeployment = new Azure.Core.TenantTemplateDeployment("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///         TemplateSpecVersionId = example.Apply(getTemplateSpecVersionResult => getTemplateSpecVersionResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetTemplateSpecVersion(ctx, &core.GetTemplateSpecVersionArgs{
/// 			Name:              "myTemplateForTenant",
/// 			ResourceGroupName: "myResourceGroup",
/// 			Version:           "v0.1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewTenantTemplateDeployment(ctx, "example", &core.TenantTemplateDeploymentArgs{
/// 			Name:                  pulumi.String("example"),
/// 			Location:              pulumi.String("West Europe"),
/// 			TemplateSpecVersionId: pulumi.String(example.Id),
/// 		})
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_gettemplatespecversion" "example" {
///   name                = "myTemplateForTenant"
///   resource_group_name = "myResourceGroup"
///   version             = "v0.1"
/// }
///
/// resource "azure_core_tenanttemplatedeployment" "example" {
///   name                     = "example"
///   location                 = "West Europe"
///   template_spec_version_id = data.azure_core_gettemplatespecversion.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetTemplateSpecVersionArgs;
/// import com.pulumi.azure.core.TenantTemplateDeployment;
/// import com.pulumi.azure.core.TenantTemplateDeploymentArgs;
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
///         final var example = CoreFunctions.getTemplateSpecVersion(GetTemplateSpecVersionArgs.builder()
///             .name("myTemplateForTenant")
///             .resourceGroupName("myResourceGroup")
///             .version("v0.1")
///             .build());
///
///         var exampleTenantTemplateDeployment = new TenantTemplateDeployment("exampleTenantTemplateDeployment", TenantTemplateDeploymentArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .templateSpecVersionId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTenantTemplateDeployment:
///     type: azure:core:TenantTemplateDeployment
///     name: example
///     properties:
///       name: example
///       location: West Europe
///       templateSpecVersionId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getTemplateSpecVersion
///       arguments:
///         name: myTemplateForTenant
///         resourceGroupName: myResourceGroup
///         version: v0.1
/// ```
///
///
/// ## Import
///
/// Tenant Template Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/tenantTemplateDeployment:TenantTemplateDeployment example /providers/Microsoft.Resources/deployments/deploy1
/// ```
class TenantTemplateDeployment extends pulumi.CustomResource {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  late final pulumi.Output<String?> debugLevel;
  /// The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Template. Changing this forces a new Template to be created.
  late final pulumi.Output<String> name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  late final pulumi.Output<String> outputContent;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  late final pulumi.Output<String> parametersContent;
  /// A mapping of tags which should be assigned to the Template.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `templateSpecVersionId`.
  late final pulumi.Output<String> templateContent;
  /// The ID of the Template Spec Version to deploy. Cannot be specified with `templateContent`.
  late final pulumi.Output<String?> templateSpecVersionId;

  /// Creates a new [TenantTemplateDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantTemplateDeployment]. {@macro pulumi_core_tenant_template_deployment_tenant_template_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantTemplateDeployment(
    String name, {
    TenantTemplateDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/tenantTemplateDeployment:TenantTemplateDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags');
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }

  /// Gets an existing [TenantTemplateDeployment] resource's state with the given [name] and [id].
  static TenantTemplateDeployment get(
    String name,
    pulumi.Input<String> id, {
    TenantTemplateDeploymentState? state,
  }) {
    return TenantTemplateDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TenantTemplateDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/tenantTemplateDeployment:TenantTemplateDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags');
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }
}
