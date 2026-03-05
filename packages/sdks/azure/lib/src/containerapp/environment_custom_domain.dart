import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_custom_domain_args.dart';
import 'environment_custom_domain_state.dart';

/// Manages a Container App Environment Custom Domain Suffix.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "acctest-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "my-environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleEnvironmentCustomDomain = new azure.containerapp.EnvironmentCustomDomain("example", {
///     containerAppEnvironmentId: exampleEnvironment.id,
///     certificateBlobBase64: std.filebase64({
///         input: "testacc.pfx",
///     }).then(invoke => invoke.result),
///     certificatePassword: "TestAcc",
///     dnsSuffix: "acceptancetest.contoso.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="acctest-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="my-environment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_environment_custom_domain = azure.containerapp.EnvironmentCustomDomain("example",
///     container_app_environment_id=example_environment.id,
///     certificate_blob_base64=std.filebase64(input="testacc.pfx").result,
///     certificate_password="TestAcc",
///     dns_suffix="acceptancetest.contoso.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "acctest-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "my-environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleEnvironmentCustomDomain = new Azure.ContainerApp.EnvironmentCustomDomain("example", new()
///     {
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         CertificateBlobBase64 = Std.Filebase64.Invoke(new()
///         {
///             Input = "testacc.pfx",
///         }).Apply(invoke => invoke.Result),
///         CertificatePassword = "TestAcc",
///         DnsSuffix = "acceptancetest.contoso.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("acctest-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("my-environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "testacc.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironmentCustomDomain(ctx, "example", &containerapp.EnvironmentCustomDomainArgs{
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			CertificateBlobBase64:     pulumi.String(invokeFilebase64.Result),
/// 			CertificatePassword:       pulumi.String("TestAcc"),
/// 			DnsSuffix:                 pulumi.String("acceptancetest.contoso.com"),
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.containerapp.EnvironmentCustomDomain;
/// import com.pulumi.azure.containerapp.EnvironmentCustomDomainArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("acctest-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("my-environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleEnvironmentCustomDomain = new EnvironmentCustomDomain("exampleEnvironmentCustomDomain", EnvironmentCustomDomainArgs.builder()
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .certificateBlobBase64(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("testacc.pfx")
///                 .build()).result())
///             .certificatePassword("TestAcc")
///             .dnsSuffix("acceptancetest.contoso.com")
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: acctest-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: my-environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleEnvironmentCustomDomain:
///     type: azure:containerapp:EnvironmentCustomDomain
///     name: example
///     properties:
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       certificateBlobBase64:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: testacc.pfx
///           return: result
///       certificatePassword: TestAcc
///       dnsSuffix: acceptancetest.contoso.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// A Container App Environment Custom Domain Suffix can be imported using the `resource id` of its parent container App Environment, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/environmentCustomDomain:EnvironmentCustomDomain example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/managedEnvironments/myEnvironment"
/// ```
class EnvironmentCustomDomain extends pulumi.CustomResource {
  /// The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  late final pulumi.Output<String> certificateBlobBase64;
  /// The password for the Certificate bundle.
  late final pulumi.Output<String> certificatePassword;
  /// The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;
  /// Custom DNS Suffix for the Container App Environment.
  late final pulumi.Output<String> dnsSuffix;

  /// Creates a new [EnvironmentCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentCustomDomain]. {@macro pulumi_containerapp_environment_custom_domain_environment_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentCustomDomain(
    String name, {
    EnvironmentCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentCustomDomain:EnvironmentCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBlobBase64 = registerOutput<String>('certificateBlobBase64');
    certificatePassword = registerOutput<String>('certificatePassword');
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    dnsSuffix = registerOutput<String>('dnsSuffix');
  }

  /// Gets an existing [EnvironmentCustomDomain] resource's state with the given [name] and [id].
  static EnvironmentCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentCustomDomainState? state,
  }) {
    return EnvironmentCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentCustomDomain:EnvironmentCustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBlobBase64 = registerOutput<String>('certificateBlobBase64');
    certificatePassword = registerOutput<String>('certificatePassword');
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    dnsSuffix = registerOutput<String>('dnsSuffix');
  }
}
