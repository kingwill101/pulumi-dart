import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'system_data_response.dart';
import 'web_pub_sub_custom_domain_args.dart';

/// A custom domain
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebPubSubCustomDomains_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webPubSubCustomDomain = new AzureNative.WebPubSub.WebPubSubCustomDomain("webPubSubCustomDomain", new()
///     {
///         CustomCertificate = new AzureNative.WebPubSub.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert",
///         },
///         DomainName = "example.com",
///         Name = "myDomain",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myWebPubSubService",
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
/// 	webpubsub "github.com/pulumi/pulumi-azure-native-sdk/webpubsub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := webpubsub.NewWebPubSubCustomDomain(ctx, "webPubSubCustomDomain", &webpubsub.WebPubSubCustomDomainArgs{
/// 			CustomCertificate: &webpubsub.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert"),
/// 			},
/// 			DomainName:        pulumi.String("example.com"),
/// 			Name:              pulumi.String("myDomain"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("myWebPubSubService"),
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
/// resource "azure-native_webpubsub_webpubsubcustomdomain" "webPubSubCustomDomain" {
///   custom_certificate = {
///     id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert"
///   }
///   domain_name         = "example.com"
///   name                = "myDomain"
///   resource_group_name = "myResourceGroup"
///   resource_name       = "myWebPubSubService"
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
/// import com.pulumi.azurenative.webpubsub.WebPubSubCustomDomain;
/// import com.pulumi.azurenative.webpubsub.WebPubSubCustomDomainArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.ResourceReferenceArgs;
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
///         var webPubSubCustomDomain = new WebPubSubCustomDomain("webPubSubCustomDomain", WebPubSubCustomDomainArgs.builder()
///             .customCertificate(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert")
///                 .build())
///             .domainName("example.com")
///             .name("myDomain")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myWebPubSubService")
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
/// const webPubSubCustomDomain = new azure_native.webpubsub.WebPubSubCustomDomain("webPubSubCustomDomain", {
///     customCertificate: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert",
///     },
///     domainName: "example.com",
///     name: "myDomain",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myWebPubSubService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_pub_sub_custom_domain = azure_native.webpubsub.WebPubSubCustomDomain("webPubSubCustomDomain",
///     custom_certificate={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert",
///     },
///     domain_name="example.com",
///     name="myDomain",
///     resource_group_name="myResourceGroup",
///     resource_name_="myWebPubSubService")
///
/// ```
///
/// ```yaml
/// resources:
///   webPubSubCustomDomain:
///     type: azure-native:webpubsub:WebPubSubCustomDomain
///     properties:
///       customCertificate:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/WebPubSub/myWebPubSubService/customCertificates/myCert
///       domainName: example.com
///       name: myDomain
///       resourceGroupName: myResourceGroup
///       resourceName: myWebPubSubService
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
/// $ pulumi import azure-native:webpubsub:WebPubSubCustomDomain myDomain /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/webPubSub/{resourceName}/customDomains/{name}
/// ```
class WebPubSubCustomDomain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Reference to a resource.
  late final pulumi.Output<ResourceReferenceResponse> customCertificate;
  /// The custom domain name.
  late final pulumi.Output<String> domainName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebPubSubCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebPubSubCustomDomain]. {@macro pulumi_webpubsub_web_pub_sub_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebPubSubCustomDomain(
    String name, {
    WebPubSubCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:webpubsub:WebPubSubCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customCertificate = registerOutput<ResourceReferenceResponse>('customCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebPubSubCustomDomain] resource.
  WebPubSubCustomDomain.reference(String urn)
    : super(
        'azure-native:webpubsub:WebPubSubCustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customCertificate = registerOutput<ResourceReferenceResponse>('customCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
