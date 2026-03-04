import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_certificate_authority_args.dart';
import 'gateway_certificate_authority_state.dart';

/// Manages an API Management Gateway Certificate Authority.
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
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Consumption_0",
/// });
/// const exampleGateway = new azure.apimanagement.Gateway("example", {
///     name: "example-gateway",
///     apiManagementId: exampleService.id,
///     description: "Example API Management gateway",
///     locationData: {
///         name: "example name",
///         city: "example city",
///         district: "example district",
///         region: "example region",
///     },
/// });
/// const exampleCertificate = new azure.apimanagement.Certificate("example", {
///     name: "example-cert",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     data: std.filebase64({
///         input: "example.pfx",
///     }).then(invoke => invoke.result),
/// });
/// const exampleGatewayCertificateAuthority = new azure.apimanagement.GatewayCertificateAuthority("example", {
///     apiManagementId: exampleService.id,
///     certificateName: exampleCertificate.name,
///     gatewayName: exampleGateway.name,
///     isTrusted: true,
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
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Consumption_0")
/// example_gateway = azure.apimanagement.Gateway("example",
///     name="example-gateway",
///     api_management_id=example_service.id,
///     description="Example API Management gateway",
///     location_data={
///         "name": "example name",
///         "city": "example city",
///         "district": "example district",
///         "region": "example region",
///     })
/// example_certificate = azure.apimanagement.Certificate("example",
///     name="example-cert",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     data=std.filebase64(input="example.pfx").result)
/// example_gateway_certificate_authority = azure.apimanagement.GatewayCertificateAuthority("example",
///     api_management_id=example_service.id,
///     certificate_name=example_certificate.name,
///     gateway_name=example_gateway.name,
///     is_trusted=True)
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
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Consumption_0",
///     });
///
///     var exampleGateway = new Azure.ApiManagement.Gateway("example", new()
///     {
///         Name = "example-gateway",
///         ApiManagementId = exampleService.Id,
///         Description = "Example API Management gateway",
///         LocationData = new Azure.ApiManagement.Inputs.GatewayLocationDataArgs
///         {
///             Name = "example name",
///             City = "example city",
///             District = "example district",
///             Region = "example region",
///         },
///     });
///
///     var exampleCertificate = new Azure.ApiManagement.Certificate("example", new()
///     {
///         Name = "example-cert",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         Data = Std.Filebase64.Invoke(new()
///         {
///             Input = "example.pfx",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var exampleGatewayCertificateAuthority = new Azure.ApiManagement.GatewayCertificateAuthority("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         CertificateName = exampleCertificate.Name,
///         GatewayName = exampleGateway.Name,
///         IsTrusted = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
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
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Consumption_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGateway, err := apimanagement.NewGateway(ctx, "example", &apimanagement.GatewayArgs{
/// 			Name:            pulumi.String("example-gateway"),
/// 			ApiManagementId: exampleService.ID(),
/// 			Description:     pulumi.String("Example API Management gateway"),
/// 			LocationData: &apimanagement.GatewayLocationDataArgs{
/// 				Name:     pulumi.String("example name"),
/// 				City:     pulumi.String("example city"),
/// 				District: pulumi.String("example district"),
/// 				Region:   pulumi.String("example region"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "example.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := apimanagement.NewCertificate(ctx, "example", &apimanagement.CertificateArgs{
/// 			Name:              pulumi.String("example-cert"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			Data:              pulumi.String(invokeFilebase64.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewGatewayCertificateAuthority(ctx, "example", &apimanagement.GatewayCertificateAuthorityArgs{
/// 			ApiManagementId: exampleService.ID(),
/// 			CertificateName: exampleCertificate.Name,
/// 			GatewayName:     exampleGateway.Name,
/// 			IsTrusted:       pulumi.Bool(true),
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Gateway;
/// import com.pulumi.azure.apimanagement.GatewayArgs;
/// import com.pulumi.azure.apimanagement.inputs.GatewayLocationDataArgs;
/// import com.pulumi.azure.apimanagement.Certificate;
/// import com.pulumi.azure.apimanagement.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.apimanagement.GatewayCertificateAuthority;
/// import com.pulumi.azure.apimanagement.GatewayCertificateAuthorityArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Consumption_0")
///             .build());
///
///         var exampleGateway = new Gateway("exampleGateway", GatewayArgs.builder()
///             .name("example-gateway")
///             .apiManagementId(exampleService.id())
///             .description("Example API Management gateway")
///             .locationData(GatewayLocationDataArgs.builder()
///                 .name("example name")
///                 .city("example city")
///                 .district("example district")
///                 .region("example region")
///                 .build())
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("example-cert")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .data(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("example.pfx")
///                 .build()).result())
///             .build());
///
///         var exampleGatewayCertificateAuthority = new GatewayCertificateAuthority("exampleGatewayCertificateAuthority", GatewayCertificateAuthorityArgs.builder()
///             .apiManagementId(exampleService.id())
///             .certificateName(exampleCertificate.name())
///             .gatewayName(exampleGateway.name())
///             .isTrusted(true)
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
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Consumption_0
///   exampleGateway:
///     type: azure:apimanagement:Gateway
///     name: example
///     properties:
///       name: example-gateway
///       apiManagementId: ${exampleService.id}
///       description: Example API Management gateway
///       locationData:
///         name: example name
///         city: example city
///         district: example district
///         region: example region
///   exampleCertificate:
///     type: azure:apimanagement:Certificate
///     name: example
///     properties:
///       name: example-cert
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       data:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: example.pfx
///           return: result
///   exampleGatewayCertificateAuthority:
///     type: azure:apimanagement:GatewayCertificateAuthority
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       certificateName: ${exampleCertificate.name}
///       gatewayName: ${exampleGateway.name}
///       isTrusted: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Gateway Certificate Authority can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/gatewayCertificateAuthority:GatewayCertificateAuthority example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/gateways/gateway1/certificateAuthorities/cert1
/// ```
class GatewayCertificateAuthority extends pulumi.CustomResource {
  /// The ID of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementId;

  /// The name of the API Management Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> certificateName;

  /// The name of the API Management Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> gatewayName;

  /// Whether the API Management Gateway Certificate Authority is trusted.
  late final pulumi.Output<bool?> isTrusted;

  /// Creates a new [GatewayCertificateAuthority].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayCertificateAuthority]. {@macro pulumi_apimanagement_gateway_certificate_authority_gateway_certificate_authority_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayCertificateAuthority(
    String name, {
    GatewayCertificateAuthorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/gatewayCertificateAuthority:GatewayCertificateAuthority',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    certificateName = registerOutput<String>('certificateName');
    gatewayName = registerOutput<String>('gatewayName');
    isTrusted = registerOutput<bool?>('isTrusted');
  }

  /// Gets an existing [GatewayCertificateAuthority] resource's state with the given [name] and [id].
  static GatewayCertificateAuthority get(
    String name,
    pulumi.Input<String> id, {
    GatewayCertificateAuthorityState? state,
  }) {
    return GatewayCertificateAuthority._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayCertificateAuthority._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/gatewayCertificateAuthority:GatewayCertificateAuthority',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    certificateName = registerOutput<String>('certificateName');
    gatewayName = registerOutput<String>('gatewayName');
    isTrusted = registerOutput<bool?>('isTrusted');
  }
}
