import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'signal_rcustom_domain_args.dart';
import 'system_data_response.dart';

/// A custom domain
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalRCustomDomains_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalRCustomDomain = new AzureNative.SignalRService.SignalRCustomDomain("signalRCustomDomain", new()
///     {
///         CustomCertificate = new AzureNative.SignalRService.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService/customCertificates/myCert",
///         },
///         DomainName = "example.com",
///         Name = "myDomain",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "mySignalRService",
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
/// 	signalrservice "github.com/pulumi/pulumi-azure-native-sdk/signalrservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signalrservice.NewSignalRCustomDomain(ctx, "signalRCustomDomain", &signalrservice.SignalRCustomDomainArgs{
/// 			CustomCertificate: &signalrservice.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService/customCertificates/myCert"),
/// 			},
/// 			DomainName:        pulumi.String("example.com"),
/// 			Name:              pulumi.String("myDomain"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("mySignalRService"),
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
/// import com.pulumi.azurenative.signalrservice.SignalRCustomDomain;
/// import com.pulumi.azurenative.signalrservice.SignalRCustomDomainArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.ResourceReferenceArgs;
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
///         var signalRCustomDomain = new SignalRCustomDomain("signalRCustomDomain", SignalRCustomDomainArgs.builder()
///             .customCertificate(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService/customCertificates/myCert")
///                 .build())
///             .domainName("example.com")
///             .name("myDomain")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("mySignalRService")
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
/// const signalRCustomDomain = new azure_native.signalrservice.SignalRCustomDomain("signalRCustomDomain", {
///     customCertificate: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService/customCertificates/myCert",
///     },
///     domainName: "example.com",
///     name: "myDomain",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "mySignalRService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_r_custom_domain = azure_native.signalrservice.SignalRCustomDomain("signalRCustomDomain",
///     custom_certificate={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService/customCertificates/myCert",
///     },
///     domain_name="example.com",
///     name="myDomain",
///     resource_group_name="myResourceGroup",
///     resource_name_="mySignalRService")
///
/// ```
///
/// ```yaml
/// resources:
///   signalRCustomDomain:
///     type: azure-native:signalrservice:SignalRCustomDomain
///     properties:
///       customCertificate:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService/customCertificates/myCert
///       domainName: example.com
///       name: myDomain
///       resourceGroupName: myResourceGroup
///       resourceName: mySignalRService
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
/// $ pulumi import azure-native:signalrservice:SignalRCustomDomain myDomain /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/signalR/{resourceName}/customDomains/{name}
/// ```
class SignalRCustomDomain extends pulumi.CustomResource {
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

  /// Creates a new [SignalRCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalRCustomDomain]. {@macro pulumi_signalrservice_signal_rcustom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalRCustomDomain(
    String name, {
    SignalRCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:signalrservice:SignalRCustomDomain',
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
}
