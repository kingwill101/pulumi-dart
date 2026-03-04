import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_services_for_edmupload_args.dart';
import 'services_properties_response.dart';
import 'services_resource_response_identity.dart';
import 'system_data_response.dart';

/// The description of the service.
///
/// Uses Azure REST API version 2021-03-08.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a service with all parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkServicesForEDMUpload = new AzureNative.SecurityAndCompliance.PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload", new()
///     {
///         Identity = new AzureNative.SecurityAndCompliance.Inputs.ServicesResourceIdentityArgs
///         {
///             Type = AzureNative.SecurityAndCompliance.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.SecurityAndCompliance.Kind.Fhir_R4,
///         Location = "westus2",
///         Properties = new AzureNative.SecurityAndCompliance.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.SecurityAndCompliance.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///                 },
///                 new AzureNative.SecurityAndCompliance.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "5b307da8-43d4-492b-8b66-b0294ade872f",
///                 },
///             },
///             AuthenticationConfiguration = new AzureNative.SecurityAndCompliance.Inputs.ServiceAuthenticationConfigurationInfoArgs
///             {
///                 Audience = "https://azurehealthcareapis.com",
///                 Authority = "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///                 SmartProxyEnabled = true,
///             },
///             CorsConfiguration = new AzureNative.SecurityAndCompliance.Inputs.ServiceCorsConfigurationInfoArgs
///             {
///                 AllowCredentials = false,
///                 Headers = new[]
///                 {
///                     "*",
///                 },
///                 MaxAge = 1440,
///                 Methods = new[]
///                 {
///                     "DELETE",
///                     "GET",
///                     "OPTIONS",
///                     "PATCH",
///                     "POST",
///                     "PUT",
///                 },
///                 Origins = new[]
///                 {
///                     "*",
///                 },
///             },
///             CosmosDbConfiguration = new AzureNative.SecurityAndCompliance.Inputs.ServiceCosmosDbConfigurationInfoArgs
///             {
///                 KeyVaultKeyUri = "https://my-vault.vault.azure.net/keys/my-key",
///                 OfferThroughput = 1000,
///             },
///             ExportConfiguration = new AzureNative.SecurityAndCompliance.Inputs.ServiceExportConfigurationInfoArgs
///             {
///                 StorageAccountName = "existingStorageAccount",
///             },
///             PrivateEndpointConnections = new() { },
///             PublicNetworkAccess = AzureNative.SecurityAndCompliance.PublicNetworkAccess.Disabled,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "service1",
///         Tags = null,
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
/// 	securityandcompliance "github.com/pulumi/pulumi-azure-native-sdk/securityandcompliance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityandcompliance.NewPrivateLinkServicesForEDMUpload(ctx, "privateLinkServicesForEDMUpload", &securityandcompliance.PrivateLinkServicesForEDMUploadArgs{
/// 			Identity: &securityandcompliance.ServicesResourceIdentityArgs{
/// 				Type: pulumi.String(securityandcompliance.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Kind:     securityandcompliance.Kind_Fhir_R4,
/// 			Location: pulumi.String("westus2"),
/// 			Properties: &securityandcompliance.ServicesPropertiesArgs{
/// 				AccessPolicies: securityandcompliance.ServiceAccessPolicyEntryArray{
/// 					&securityandcompliance.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("c487e7d1-3210-41a3-8ccc-e9372b78da47"),
/// 					},
/// 					&securityandcompliance.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("5b307da8-43d4-492b-8b66-b0294ade872f"),
/// 					},
/// 				},
/// 				AuthenticationConfiguration: &securityandcompliance.ServiceAuthenticationConfigurationInfoArgs{
/// 					Audience:          pulumi.String("https://azurehealthcareapis.com"),
/// 					Authority:         pulumi.String("https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc"),
/// 					SmartProxyEnabled: pulumi.Bool(true),
/// 				},
/// 				CorsConfiguration: &securityandcompliance.ServiceCorsConfigurationInfoArgs{
/// 					AllowCredentials: pulumi.Bool(false),
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAge: pulumi.Float64(1440),
/// 					Methods: pulumi.StringArray{
/// 						pulumi.String("DELETE"),
/// 						pulumi.String("GET"),
/// 						pulumi.String("OPTIONS"),
/// 						pulumi.String("PATCH"),
/// 						pulumi.String("POST"),
/// 						pulumi.String("PUT"),
/// 					},
/// 					Origins: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				CosmosDbConfiguration: &securityandcompliance.ServiceCosmosDbConfigurationInfoArgs{
/// 					KeyVaultKeyUri:  pulumi.String("https://my-vault.vault.azure.net/keys/my-key"),
/// 					OfferThroughput: pulumi.Float64(1000),
/// 				},
/// 				ExportConfiguration: &securityandcompliance.ServiceExportConfigurationInfoArgs{
/// 					StorageAccountName: pulumi.String("existingStorageAccount"),
/// 				},
/// 				PrivateEndpointConnections: securityandcompliance.PrivateEndpointConnectionArray{},
/// 				PublicNetworkAccess:        pulumi.String(securityandcompliance.PublicNetworkAccessDisabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("service1"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.securityandcompliance.PrivateLinkServicesForEDMUpload;
/// import com.pulumi.azurenative.securityandcompliance.PrivateLinkServicesForEDMUploadArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServicesResourceIdentityArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServicesPropertiesArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServiceAuthenticationConfigurationInfoArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServiceCorsConfigurationInfoArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServiceCosmosDbConfigurationInfoArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServiceExportConfigurationInfoArgs;
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
///         var privateLinkServicesForEDMUpload = new PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload", PrivateLinkServicesForEDMUploadArgs.builder()
///             .identity(ServicesResourceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("fhir-R4")
///             .location("westus2")
///             .properties(ServicesPropertiesArgs.builder()
///                 .accessPolicies(
///                     ServiceAccessPolicyEntryArgs.builder()
///                         .objectId("c487e7d1-3210-41a3-8ccc-e9372b78da47")
///                         .build(),
///                     ServiceAccessPolicyEntryArgs.builder()
///                         .objectId("5b307da8-43d4-492b-8b66-b0294ade872f")
///                         .build())
///                 .authenticationConfiguration(ServiceAuthenticationConfigurationInfoArgs.builder()
///                     .audience("https://azurehealthcareapis.com")
///                     .authority("https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc")
///                     .smartProxyEnabled(true)
///                     .build())
///                 .corsConfiguration(ServiceCorsConfigurationInfoArgs.builder()
///                     .allowCredentials(false)
///                     .headers("*")
///                     .maxAge(1440.0)
///                     .methods(
///                         "DELETE",
///                         "GET",
///                         "OPTIONS",
///                         "PATCH",
///                         "POST",
///                         "PUT")
///                     .origins("*")
///                     .build())
///                 .cosmosDbConfiguration(ServiceCosmosDbConfigurationInfoArgs.builder()
///                     .keyVaultKeyUri("https://my-vault.vault.azure.net/keys/my-key")
///                     .offerThroughput(1000.0)
///                     .build())
///                 .exportConfiguration(ServiceExportConfigurationInfoArgs.builder()
///                     .storageAccountName("existingStorageAccount")
///                     .build())
///                 .privateEndpointConnections()
///                 .publicNetworkAccess("Disabled")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("service1")
///             .tags(Map.ofEntries(
///             ))
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
/// const privateLinkServicesForEDMUpload = new azure_native.securityandcompliance.PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload", {
///     identity: {
///         type: azure_native.securityandcompliance.ManagedServiceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.securityandcompliance.Kind.Fhir_R4,
///     location: "westus2",
///     properties: {
///         accessPolicies: [
///             {
///                 objectId: "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///             },
///             {
///                 objectId: "5b307da8-43d4-492b-8b66-b0294ade872f",
///             },
///         ],
///         authenticationConfiguration: {
///             audience: "https://azurehealthcareapis.com",
///             authority: "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///             smartProxyEnabled: true,
///         },
///         corsConfiguration: {
///             allowCredentials: false,
///             headers: ["*"],
///             maxAge: 1440,
///             methods: [
///                 "DELETE",
///                 "GET",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             ],
///             origins: ["*"],
///         },
///         cosmosDbConfiguration: {
///             keyVaultKeyUri: "https://my-vault.vault.azure.net/keys/my-key",
///             offerThroughput: 1000,
///         },
///         exportConfiguration: {
///             storageAccountName: "existingStorageAccount",
///         },
///         privateEndpointConnections: [],
///         publicNetworkAccess: azure_native.securityandcompliance.PublicNetworkAccess.Disabled,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "service1",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_services_for_edm_upload = azure_native.securityandcompliance.PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload",
///     identity={
///         "type": azure_native.securityandcompliance.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.securityandcompliance.Kind.FHIR_R4,
///     location="westus2",
///     properties={
///         "access_policies": [
///             {
///                 "object_id": "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///             },
///             {
///                 "object_id": "5b307da8-43d4-492b-8b66-b0294ade872f",
///             },
///         ],
///         "authentication_configuration": {
///             "audience": "https://azurehealthcareapis.com",
///             "authority": "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///             "smart_proxy_enabled": True,
///         },
///         "cors_configuration": {
///             "allow_credentials": False,
///             "headers": ["*"],
///             "max_age": 1440,
///             "methods": [
///                 "DELETE",
///                 "GET",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             ],
///             "origins": ["*"],
///         },
///         "cosmos_db_configuration": {
///             "key_vault_key_uri": "https://my-vault.vault.azure.net/keys/my-key",
///             "offer_throughput": 1000,
///         },
///         "export_configuration": {
///             "storage_account_name": "existingStorageAccount",
///         },
///         "private_endpoint_connections": [],
///         "public_network_access": azure_native.securityandcompliance.PublicNetworkAccess.DISABLED,
///     },
///     resource_group_name="rg1",
///     resource_name_="service1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkServicesForEDMUpload:
///     type: azure-native:securityandcompliance:PrivateLinkServicesForEDMUpload
///     properties:
///       identity:
///         type: SystemAssigned
///       kind: fhir-R4
///       location: westus2
///       properties:
///         accessPolicies:
///           - objectId: c487e7d1-3210-41a3-8ccc-e9372b78da47
///           - objectId: 5b307da8-43d4-492b-8b66-b0294ade872f
///         authenticationConfiguration:
///           audience: https://azurehealthcareapis.com
///           authority: https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc
///           smartProxyEnabled: true
///         corsConfiguration:
///           allowCredentials: false
///           headers:
///             - '*'
///           maxAge: 1440
///           methods:
///             - DELETE
///             - GET
///             - OPTIONS
///             - PATCH
///             - POST
///             - PUT
///           origins:
///             - '*'
///         cosmosDbConfiguration:
///           keyVaultKeyUri: https://my-vault.vault.azure.net/keys/my-key
///           offerThroughput: 1000
///         exportConfiguration:
///           storageAccountName: existingStorageAccount
///         privateEndpointConnections: []
///         publicNetworkAccess: Disabled
///       resourceGroupName: rg1
///       resourceName: service1
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update a service with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkServicesForEDMUpload = new AzureNative.SecurityAndCompliance.PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload", new()
///     {
///         Kind = AzureNative.SecurityAndCompliance.Kind.Fhir_R4,
///         Location = "westus2",
///         Properties = new AzureNative.SecurityAndCompliance.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.SecurityAndCompliance.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "service2",
///         Tags = null,
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
/// 	securityandcompliance "github.com/pulumi/pulumi-azure-native-sdk/securityandcompliance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityandcompliance.NewPrivateLinkServicesForEDMUpload(ctx, "privateLinkServicesForEDMUpload", &securityandcompliance.PrivateLinkServicesForEDMUploadArgs{
/// 			Kind:     securityandcompliance.Kind_Fhir_R4,
/// 			Location: pulumi.String("westus2"),
/// 			Properties: &securityandcompliance.ServicesPropertiesArgs{
/// 				AccessPolicies: securityandcompliance.ServiceAccessPolicyEntryArray{
/// 					&securityandcompliance.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("c487e7d1-3210-41a3-8ccc-e9372b78da47"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("service2"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.securityandcompliance.PrivateLinkServicesForEDMUpload;
/// import com.pulumi.azurenative.securityandcompliance.PrivateLinkServicesForEDMUploadArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.ServicesPropertiesArgs;
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
///         var privateLinkServicesForEDMUpload = new PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload", PrivateLinkServicesForEDMUploadArgs.builder()
///             .kind("fhir-R4")
///             .location("westus2")
///             .properties(ServicesPropertiesArgs.builder()
///                 .accessPolicies(ServiceAccessPolicyEntryArgs.builder()
///                     .objectId("c487e7d1-3210-41a3-8ccc-e9372b78da47")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("service2")
///             .tags(Map.ofEntries(
///             ))
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
/// const privateLinkServicesForEDMUpload = new azure_native.securityandcompliance.PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload", {
///     kind: azure_native.securityandcompliance.Kind.Fhir_R4,
///     location: "westus2",
///     properties: {
///         accessPolicies: [{
///             objectId: "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///         }],
///     },
///     resourceGroupName: "rg1",
///     resourceName: "service2",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_services_for_edm_upload = azure_native.securityandcompliance.PrivateLinkServicesForEDMUpload("privateLinkServicesForEDMUpload",
///     kind=azure_native.securityandcompliance.Kind.FHIR_R4,
///     location="westus2",
///     properties={
///         "access_policies": [{
///             "object_id": "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///         }],
///     },
///     resource_group_name="rg1",
///     resource_name_="service2",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkServicesForEDMUpload:
///     type: azure-native:securityandcompliance:PrivateLinkServicesForEDMUpload
///     properties:
///       kind: fhir-R4
///       location: westus2
///       properties:
///         accessPolicies:
///           - objectId: c487e7d1-3210-41a3-8ccc-e9372b78da47
///       resourceGroupName: rg1
///       resourceName: service2
///       tags: {}
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
/// $ pulumi import azure-native:securityandcompliance:PrivateLinkServicesForEDMUpload service2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SecurityAndCompliance/privateLinkServicesForEDMUpload/{resourceName}
/// ```
class PrivateLinkServicesForEDMUpload extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;

  /// Setting indicating whether the service has a managed identity associated with it.
  late final pulumi.Output<ServicesResourceResponseIdentity?> identity;

  /// The kind of the service.
  late final pulumi.Output<String> kind;

  /// The resource location.
  late final pulumi.Output<String> location;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// The common properties of a service.
  late final pulumi.Output<ServicesPropertiesResponse> properties;

  /// Required property for system data
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkServicesForEDMUpload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkServicesForEDMUpload]. {@macro pulumi_securityandcompliance_private_link_services_for_edmupload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkServicesForEDMUpload(
    String name, {
    PrivateLinkServicesForEDMUploadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityandcompliance:PrivateLinkServicesForEDMUpload',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ServicesResourceResponseIdentity?>('identity');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServicesPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
