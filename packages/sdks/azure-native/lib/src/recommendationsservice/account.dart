import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_resource_response_properties.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Account resource details.
///
/// Uses Azure REST API version 2022-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2022-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recommendationsservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update RecommendationsService Account resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.RecommendationsService.Account("account", new()
///     {
///         AccountName = "sampleAccount",
///         Location = "West US",
///         Properties = new AzureNative.RecommendationsService.Inputs.AccountResourcePropertiesArgs
///         {
///             Configuration = AzureNative.RecommendationsService.AccountConfiguration.Capacity,
///             EndpointAuthentications = new[]
///             {
///                 new AzureNative.RecommendationsService.Inputs.EndpointAuthenticationArgs
///                 {
///                     AadTenantID = "tenant",
///                     PrincipalID = "oid",
///                     PrincipalType = AzureNative.RecommendationsService.PrincipalType.User,
///                 },
///             },
///         },
///         ResourceGroupName = "rg",
///         Tags =
///         {
///             { "Environment", "Prod" },
///         },
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
/// 	recommendationsservice "github.com/pulumi/pulumi-azure-native-sdk/recommendationsservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recommendationsservice.NewAccount(ctx, "account", &recommendationsservice.AccountArgs{
/// 			AccountName: pulumi.String("sampleAccount"),
/// 			Location:    pulumi.String("West US"),
/// 			Properties: &recommendationsservice.AccountResourcePropertiesArgs{
/// 				Configuration: pulumi.String(recommendationsservice.AccountConfigurationCapacity),
/// 				EndpointAuthentications: recommendationsservice.EndpointAuthenticationArray{
/// 					&recommendationsservice.EndpointAuthenticationArgs{
/// 						AadTenantID:   pulumi.String("tenant"),
/// 						PrincipalID:   pulumi.String("oid"),
/// 						PrincipalType: pulumi.String(recommendationsservice.PrincipalTypeUser),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Prod"),
/// 			},
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
/// resource "azure-native_recommendationsservice_account" "account" {
///   account_name = "sampleAccount"
///   location     = "West US"
///   properties = {
///     configuration = "Capacity"
///     endpoint_authentications = [{
///       "aadTenantID"   = "tenant"
///       "principalID"   = "oid"
///       "principalType" = "User"
///     }]
///   }
///   resource_group_name = "rg"
///   tags = {
///     "Environment" = "Prod"
///   }
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
/// import com.pulumi.azurenative.recommendationsservice.Account;
/// import com.pulumi.azurenative.recommendationsservice.AccountArgs;
/// import com.pulumi.azurenative.recommendationsservice.inputs.AccountResourcePropertiesArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("sampleAccount")
///             .location("West US")
///             .properties(AccountResourcePropertiesArgs.builder()
///                 .configuration("Capacity")
///                 .endpointAuthentications(EndpointAuthenticationArgs.builder()
///                     .aadTenantID("tenant")
///                     .principalID("oid")
///                     .principalType("User")
///                     .build())
///                 .build())
///             .resourceGroupName("rg")
///             .tags(Map.of("Environment", "Prod"))
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
/// const account = new azure_native.recommendationsservice.Account("account", {
///     accountName: "sampleAccount",
///     location: "West US",
///     properties: {
///         configuration: azure_native.recommendationsservice.AccountConfiguration.Capacity,
///         endpointAuthentications: [{
///             aadTenantID: "tenant",
///             principalID: "oid",
///             principalType: azure_native.recommendationsservice.PrincipalType.User,
///         }],
///     },
///     resourceGroupName: "rg",
///     tags: {
///         Environment: "Prod",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.recommendationsservice.Account("account",
///     account_name="sampleAccount",
///     location="West US",
///     properties={
///         "configuration": azure_native.recommendationsservice.AccountConfiguration.CAPACITY,
///         "endpoint_authentications": [{
///             "aad_tenant_id": "tenant",
///             "principal_id": "oid",
///             "principal_type": azure_native.recommendationsservice.PrincipalType.USER,
///         }],
///     },
///     resource_group_name="rg",
///     tags={
///         "Environment": "Prod",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:recommendationsservice:Account
///     properties:
///       accountName: sampleAccount
///       location: West US
///       properties:
///         configuration: Capacity
///         endpointAuthentications:
///           - aadTenantID: tenant
///             principalID: oid
///             principalType: User
///       resourceGroupName: rg
///       tags:
///         Environment: Prod
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
/// $ pulumi import azure-native:recommendationsservice:Account sampleAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecommendationsService/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity used for the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Account resource properties.
  late final pulumi.Output<AccountResourceResponseProperties> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_recommendationsservice_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recommendationsservice:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccountResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:recommendationsservice:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccountResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
