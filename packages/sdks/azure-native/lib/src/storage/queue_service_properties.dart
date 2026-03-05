import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rules_response.dart';
import 'queue_service_properties_args.dart';

/// The properties of a storage account’s Queue service.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### QueueServicesPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queueServiceProperties = new AzureNative.Storage.QueueServiceProperties("queueServiceProperties", new()
///     {
///         AccountName = "sto8607",
///         Cors = new AzureNative.Storage.Inputs.CorsRulesArgs
///         {
///             CorsRules = new[]
///             {
///                 new AzureNative.Storage.Inputs.CorsRuleArgs
///                 {
///                     AllowedHeaders = new[]
///                     {
///                         "x-ms-meta-abc",
///                         "x-ms-meta-data*",
///                         "x-ms-meta-target*",
///                     },
///                     AllowedMethods = new[]
///                     {
///                         AzureNative.Storage.AllowedMethods.GET,
///                         AzureNative.Storage.AllowedMethods.HEAD,
///                         AzureNative.Storage.AllowedMethods.POST,
///                         AzureNative.Storage.AllowedMethods.OPTIONS,
///                         AzureNative.Storage.AllowedMethods.MERGE,
///                         AzureNative.Storage.AllowedMethods.PUT,
///                     },
///                     AllowedOrigins = new[]
///                     {
///                         "http://www.contoso.com",
///                         "http://www.fabrikam.com",
///                     },
///                     ExposedHeaders = new[]
///                     {
///                         "x-ms-meta-*",
///                     },
///                     MaxAgeInSeconds = 100,
///                 },
///                 new AzureNative.Storage.Inputs.CorsRuleArgs
///                 {
///                     AllowedHeaders = new[]
///                     {
///                         "*",
///                     },
///                     AllowedMethods = new[]
///                     {
///                         AzureNative.Storage.AllowedMethods.GET,
///                     },
///                     AllowedOrigins = new[]
///                     {
///                         "*",
///                     },
///                     ExposedHeaders = new[]
///                     {
///                         "*",
///                     },
///                     MaxAgeInSeconds = 2,
///                 },
///                 new AzureNative.Storage.Inputs.CorsRuleArgs
///                 {
///                     AllowedHeaders = new[]
///                     {
///                         "x-ms-meta-12345675754564*",
///                     },
///                     AllowedMethods = new[]
///                     {
///                         AzureNative.Storage.AllowedMethods.GET,
///                         AzureNative.Storage.AllowedMethods.PUT,
///                     },
///                     AllowedOrigins = new[]
///                     {
///                         "http://www.abc23.com",
///                         "https://www.fabrikam.com/*",
///                     },
///                     ExposedHeaders = new[]
///                     {
///                         "x-ms-meta-abc",
///                         "x-ms-meta-data*",
///                         "x-ms-meta-target*",
///                     },
///                     MaxAgeInSeconds = 2000,
///                 },
///             },
///         },
///         QueueServiceName = "default",
///         ResourceGroupName = "res4410",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewQueueServiceProperties(ctx, "queueServiceProperties", &storage.QueueServicePropertiesArgs{
/// 			AccountName: pulumi.String("sto8607"),
/// 			Cors: &storage.CorsRulesArgs{
/// 				CorsRules: storage.CorsRuleArray{
/// 					&storage.CorsRuleArgs{
/// 						AllowedHeaders: pulumi.StringArray{
/// 							pulumi.String("x-ms-meta-abc"),
/// 							pulumi.String("x-ms-meta-data*"),
/// 							pulumi.String("x-ms-meta-target*"),
/// 						},
/// 						AllowedMethods: pulumi.StringArray{
/// 							pulumi.String(storage.AllowedMethodsGET),
/// 							pulumi.String(storage.AllowedMethodsHEAD),
/// 							pulumi.String(storage.AllowedMethodsPOST),
/// 							pulumi.String(storage.AllowedMethodsOPTIONS),
/// 							pulumi.String(storage.AllowedMethodsMERGE),
/// 							pulumi.String(storage.AllowedMethodsPUT),
/// 						},
/// 						AllowedOrigins: pulumi.StringArray{
/// 							pulumi.String("http://www.contoso.com"),
/// 							pulumi.String("http://www.fabrikam.com"),
/// 						},
/// 						ExposedHeaders: pulumi.StringArray{
/// 							pulumi.String("x-ms-meta-*"),
/// 						},
/// 						MaxAgeInSeconds: pulumi.Int(100),
/// 					},
/// 					&storage.CorsRuleArgs{
/// 						AllowedHeaders: pulumi.StringArray{
/// 							pulumi.String("*"),
/// 						},
/// 						AllowedMethods: pulumi.StringArray{
/// 							pulumi.String(storage.AllowedMethodsGET),
/// 						},
/// 						AllowedOrigins: pulumi.StringArray{
/// 							pulumi.String("*"),
/// 						},
/// 						ExposedHeaders: pulumi.StringArray{
/// 							pulumi.String("*"),
/// 						},
/// 						MaxAgeInSeconds: pulumi.Int(2),
/// 					},
/// 					&storage.CorsRuleArgs{
/// 						AllowedHeaders: pulumi.StringArray{
/// 							pulumi.String("x-ms-meta-12345675754564*"),
/// 						},
/// 						AllowedMethods: pulumi.StringArray{
/// 							pulumi.String(storage.AllowedMethodsGET),
/// 							pulumi.String(storage.AllowedMethodsPUT),
/// 						},
/// 						AllowedOrigins: pulumi.StringArray{
/// 							pulumi.String("http://www.abc23.com"),
/// 							pulumi.String("https://www.fabrikam.com/*"),
/// 						},
/// 						ExposedHeaders: pulumi.StringArray{
/// 							pulumi.String("x-ms-meta-abc"),
/// 							pulumi.String("x-ms-meta-data*"),
/// 							pulumi.String("x-ms-meta-target*"),
/// 						},
/// 						MaxAgeInSeconds: pulumi.Int(2000),
/// 					},
/// 				},
/// 			},
/// 			QueueServiceName:  pulumi.String("default"),
/// 			ResourceGroupName: pulumi.String("res4410"),
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
/// import com.pulumi.azurenative.storage.QueueServiceProperties;
/// import com.pulumi.azurenative.storage.QueueServicePropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.CorsRulesArgs;
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
///         var queueServiceProperties = new QueueServiceProperties("queueServiceProperties", QueueServicePropertiesArgs.builder()
///             .accountName("sto8607")
///             .cors(CorsRulesArgs.builder()
///                 .corsRules(
///                     CorsRuleArgs.builder()
///                         .allowedHeaders(
///                             "x-ms-meta-abc",
///                             "x-ms-meta-data*",
///                             "x-ms-meta-target*")
///                         .allowedMethods(
///                             "GET",
///                             "HEAD",
///                             "POST",
///                             "OPTIONS",
///                             "MERGE",
///                             "PUT")
///                         .allowedOrigins(
///                             "http://www.contoso.com",
///                             "http://www.fabrikam.com")
///                         .exposedHeaders("x-ms-meta-*")
///                         .maxAgeInSeconds(100)
///                         .build(),
///                     CorsRuleArgs.builder()
///                         .allowedHeaders("*")
///                         .allowedMethods("GET")
///                         .allowedOrigins("*")
///                         .exposedHeaders("*")
///                         .maxAgeInSeconds(2)
///                         .build(),
///                     CorsRuleArgs.builder()
///                         .allowedHeaders("x-ms-meta-12345675754564*")
///                         .allowedMethods(
///                             "GET",
///                             "PUT")
///                         .allowedOrigins(
///                             "http://www.abc23.com",
///                             "https://www.fabrikam.com/*")
///                         .exposedHeaders(
///                             "x-ms-meta-abc",
///                             "x-ms-meta-data*",
///                             "x-ms-meta-target*")
///                         .maxAgeInSeconds(2000)
///                         .build())
///                 .build())
///             .queueServiceName("default")
///             .resourceGroupName("res4410")
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
/// const queueServiceProperties = new azure_native.storage.QueueServiceProperties("queueServiceProperties", {
///     accountName: "sto8607",
///     cors: {
///         corsRules: [
///             {
///                 allowedHeaders: [
///                     "x-ms-meta-abc",
///                     "x-ms-meta-data*",
///                     "x-ms-meta-target*",
///                 ],
///                 allowedMethods: [
///                     azure_native.storage.AllowedMethods.GET,
///                     azure_native.storage.AllowedMethods.HEAD,
///                     azure_native.storage.AllowedMethods.POST,
///                     azure_native.storage.AllowedMethods.OPTIONS,
///                     azure_native.storage.AllowedMethods.MERGE,
///                     azure_native.storage.AllowedMethods.PUT,
///                 ],
///                 allowedOrigins: [
///                     "http://www.contoso.com",
///                     "http://www.fabrikam.com",
///                 ],
///                 exposedHeaders: ["x-ms-meta-*"],
///                 maxAgeInSeconds: 100,
///             },
///             {
///                 allowedHeaders: ["*"],
///                 allowedMethods: [azure_native.storage.AllowedMethods.GET],
///                 allowedOrigins: ["*"],
///                 exposedHeaders: ["*"],
///                 maxAgeInSeconds: 2,
///             },
///             {
///                 allowedHeaders: ["x-ms-meta-12345675754564*"],
///                 allowedMethods: [
///                     azure_native.storage.AllowedMethods.GET,
///                     azure_native.storage.AllowedMethods.PUT,
///                 ],
///                 allowedOrigins: [
///                     "http://www.abc23.com",
///                     "https://www.fabrikam.com/*",
///                 ],
///                 exposedHeaders: [
///                     "x-ms-meta-abc",
///                     "x-ms-meta-data*",
///                     "x-ms-meta-target*",
///                 ],
///                 maxAgeInSeconds: 2000,
///             },
///         ],
///     },
///     queueServiceName: "default",
///     resourceGroupName: "res4410",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// queue_service_properties = azure_native.storage.QueueServiceProperties("queueServiceProperties",
///     account_name="sto8607",
///     cors={
///         "cors_rules": [
///             {
///                 "allowed_headers": [
///                     "x-ms-meta-abc",
///                     "x-ms-meta-data*",
///                     "x-ms-meta-target*",
///                 ],
///                 "allowed_methods": [
///                     azure_native.storage.AllowedMethods.GET,
///                     azure_native.storage.AllowedMethods.HEAD,
///                     azure_native.storage.AllowedMethods.POST,
///                     azure_native.storage.AllowedMethods.OPTIONS,
///                     azure_native.storage.AllowedMethods.MERGE,
///                     azure_native.storage.AllowedMethods.PUT,
///                 ],
///                 "allowed_origins": [
///                     "http://www.contoso.com",
///                     "http://www.fabrikam.com",
///                 ],
///                 "exposed_headers": ["x-ms-meta-*"],
///                 "max_age_in_seconds": 100,
///             },
///             {
///                 "allowed_headers": ["*"],
///                 "allowed_methods": [azure_native.storage.AllowedMethods.GET],
///                 "allowed_origins": ["*"],
///                 "exposed_headers": ["*"],
///                 "max_age_in_seconds": 2,
///             },
///             {
///                 "allowed_headers": ["x-ms-meta-12345675754564*"],
///                 "allowed_methods": [
///                     azure_native.storage.AllowedMethods.GET,
///                     azure_native.storage.AllowedMethods.PUT,
///                 ],
///                 "allowed_origins": [
///                     "http://www.abc23.com",
///                     "https://www.fabrikam.com/*",
///                 ],
///                 "exposed_headers": [
///                     "x-ms-meta-abc",
///                     "x-ms-meta-data*",
///                     "x-ms-meta-target*",
///                 ],
///                 "max_age_in_seconds": 2000,
///             },
///         ],
///     },
///     queue_service_name="default",
///     resource_group_name="res4410")
///
/// ```
///
/// ```yaml
/// resources:
///   queueServiceProperties:
///     type: azure-native:storage:QueueServiceProperties
///     properties:
///       accountName: sto8607
///       cors:
///         corsRules:
///           - allowedHeaders:
///               - x-ms-meta-abc
///               - x-ms-meta-data*
///               - x-ms-meta-target*
///             allowedMethods:
///               - GET
///               - HEAD
///               - POST
///               - OPTIONS
///               - MERGE
///               - PUT
///             allowedOrigins:
///               - http://www.contoso.com
///               - http://www.fabrikam.com
///             exposedHeaders:
///               - x-ms-meta-*
///             maxAgeInSeconds: 100
///           - allowedHeaders:
///               - '*'
///             allowedMethods:
///               - GET
///             allowedOrigins:
///               - '*'
///             exposedHeaders:
///               - '*'
///             maxAgeInSeconds: 2
///           - allowedHeaders:
///               - x-ms-meta-12345675754564*
///             allowedMethods:
///               - GET
///               - PUT
///             allowedOrigins:
///               - http://www.abc23.com
///               - https://www.fabrikam.com/*
///             exposedHeaders:
///               - x-ms-meta-abc
///               - x-ms-meta-data*
///               - x-ms-meta-target*
///             maxAgeInSeconds: 2000
///       queueServiceName: default
///       resourceGroupName: res4410
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
/// $ pulumi import azure-native:storage:QueueServiceProperties default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/{queueServiceName}
/// ```
class QueueServiceProperties extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies CORS rules for the Queue service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Queue service.
  late final pulumi.Output<CorsRulesResponse?> cors;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [QueueServiceProperties].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueueServiceProperties]. {@macro pulumi_storage_queue_service_properties_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueueServiceProperties(
    String name, {
    QueueServicePropertiesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:QueueServiceProperties',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cors = registerOutput<CorsRulesResponse?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
