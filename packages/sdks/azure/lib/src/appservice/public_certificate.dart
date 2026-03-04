import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_certificate_args.dart';
import 'public_certificate_state.dart';

/// Manages an App Service Public Certificate.
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
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "example-app-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: "example-app-service",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const examplePublicCertificate = new azure.appservice.PublicCertificate("example", {
///     resourceGroupName: example.name,
///     appServiceName: exampleAppService.name,
///     certificateName: "example-public-certificate",
///     certificateLocation: "Unknown",
///     blob: std.filebase64({
///         input: "app_service_public_certificate.cer",
///     }).then(invoke => invoke.result),
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
/// example_plan = azure.appservice.Plan("example",
///     name="example-app-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name="example-app-service",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id)
/// example_public_certificate = azure.appservice.PublicCertificate("example",
///     resource_group_name=example.name,
///     app_service_name=example_app_service.name,
///     certificate_name="example-public-certificate",
///     certificate_location="Unknown",
///     blob=std.filebase64(input="app_service_public_certificate.cer").result)
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
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "example-app-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = "example-app-service",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var examplePublicCertificate = new Azure.AppService.PublicCertificate("example", new()
///     {
///         ResourceGroupName = example.Name,
///         AppServiceName = exampleAppService.Name,
///         CertificateName = "example-public-certificate",
///         CertificateLocation = "Unknown",
///         Blob = Std.Filebase64.Invoke(new()
///         {
///             Input = "app_service_public_certificate.cer",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("example-app-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              pulumi.String("example-app-service"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "app_service_public_certificate.cer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewPublicCertificate(ctx, "example", &appservice.PublicCertificateArgs{
/// 			ResourceGroupName:   example.Name,
/// 			AppServiceName:      exampleAppService.Name,
/// 			CertificateName:     pulumi.String("example-public-certificate"),
/// 			CertificateLocation: pulumi.String("Unknown"),
/// 			Blob:                pulumi.String(invokeFilebase64.Result),
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.appservice.PublicCertificate;
/// import com.pulumi.azure.appservice.PublicCertificateArgs;
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
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("example-app-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name("example-app-service")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var examplePublicCertificate = new PublicCertificate("examplePublicCertificate", PublicCertificateArgs.builder()
///             .resourceGroupName(example.name())
///             .appServiceName(exampleAppService.name())
///             .certificateName("example-public-certificate")
///             .certificateLocation("Unknown")
///             .blob(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("app_service_public_certificate.cer")
///                 .build()).result())
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
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: example-app-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: example-app-service
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///   examplePublicCertificate:
///     type: azure:appservice:PublicCertificate
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       appServiceName: ${exampleAppService.name}
///       certificateName: example-public-certificate
///       certificateLocation: Unknown
///       blob:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: app_service_public_certificate.cer
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// App Service Public Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/publicCertificate:PublicCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Web/sites/site1/publicCertificates/publicCertificate1
/// ```
class PublicCertificate extends pulumi.CustomResource {
  /// The name of the App Service. Changing this forces a new App Service Public Certificate to be created.
  late final pulumi.Output<String> appServiceName;

  /// The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created.
  late final pulumi.Output<String> blob;

  /// The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created.
  late final pulumi.Output<String> certificateLocation;

  /// The name of the public certificate. Changing this forces a new App Service Public Certificate to be created.
  late final pulumi.Output<String> certificateName;

  /// The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The thumbprint of the public certificate.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [PublicCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicCertificate]. {@macro pulumi_appservice_public_certificate_public_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicCertificate(
    String name, {
    PublicCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/publicCertificate:PublicCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceName = registerOutput<String>('appServiceName');
    blob = registerOutput<String>('blob');
    certificateLocation = registerOutput<String>('certificateLocation');
    certificateName = registerOutput<String>('certificateName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Gets an existing [PublicCertificate] resource's state with the given [name] and [id].
  static PublicCertificate get(
    String name,
    pulumi.Input<String> id, {
    PublicCertificateState? state,
  }) {
    return PublicCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/publicCertificate:PublicCertificate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceName = registerOutput<String>('appServiceName');
    blob = registerOutput<String>('blob');
    certificateLocation = registerOutput<String>('certificateLocation');
    certificateName = registerOutput<String>('certificateName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    thumbprint = registerOutput<String>('thumbprint');
  }
}
