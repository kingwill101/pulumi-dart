import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_authentication_configuration.dart';
import 'service_cors_configuration.dart';
import 'service_identity.dart';
import 'service_state.dart';

/// Manages a Healthcare Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.healthcare.Service("example", {
///     name: "uniquefhirname",
///     resourceGroupName: "sample-resource-group",
///     location: "westus2",
///     kind: "fhir-R4",
///     cosmosdbThroughput: 2000,
///     identity: {
///         type: "SystemAssigned",
///     },
///     accessPolicyObjectIds: current.then(current => current.objectId),
///     configurationExportStorageAccountName: "teststorage",
///     tags: {
///         environment: "testenv",
///         purpose: "AcceptanceTests",
///     },
///     authenticationConfiguration: {
///         authority: "https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D",
///         audience: "https://azurehealthcareapis.com/",
///         smartProxyEnabled: true,
///     },
///     corsConfiguration: {
///         allowedOrigins: [
///             "http://www.example.com",
///             "http://www.example2.com",
///         ],
///         allowedHeaders: [
///             "x-tempo-*",
///             "x-tempo2-*",
///         ],
///         allowedMethods: [
///             "GET",
///             "PUT",
///         ],
///         maxAgeInSeconds: 500,
///         allowCredentials: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.healthcare.Service("example",
///     name="uniquefhirname",
///     resource_group_name="sample-resource-group",
///     location="westus2",
///     kind="fhir-R4",
///     cosmosdb_throughput=2000,
///     identity={
///         "type": "SystemAssigned",
///     },
///     access_policy_object_ids=current.object_id,
///     configuration_export_storage_account_name="teststorage",
///     tags={
///         "environment": "testenv",
///         "purpose": "AcceptanceTests",
///     },
///     authentication_configuration={
///         "authority": "https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D",
///         "audience": "https://azurehealthcareapis.com/",
///         "smart_proxy_enabled": True,
///     },
///     cors_configuration={
///         "allowed_origins": [
///             "http://www.example.com",
///             "http://www.example2.com",
///         ],
///         "allowed_headers": [
///             "x-tempo-*",
///             "x-tempo2-*",
///         ],
///         "allowed_methods": [
///             "GET",
///             "PUT",
///         ],
///         "max_age_in_seconds": 500,
///         "allow_credentials": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Healthcare.Service("example", new()
///     {
///         Name = "uniquefhirname",
///         ResourceGroupName = "sample-resource-group",
///         Location = "westus2",
///         Kind = "fhir-R4",
///         CosmosdbThroughput = 2000,
///         Identity = new Azure.Healthcare.Inputs.ServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         AccessPolicyObjectIds = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         ConfigurationExportStorageAccountName = "teststorage",
///         Tags =
///         {
///             { "environment", "testenv" },
///             { "purpose", "AcceptanceTests" },
///         },
///         AuthenticationConfiguration = new Azure.Healthcare.Inputs.ServiceAuthenticationConfigurationArgs
///         {
///             Authority = "https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D",
///             Audience = "https://azurehealthcareapis.com/",
///             SmartProxyEnabled = true,
///         },
///         CorsConfiguration = new Azure.Healthcare.Inputs.ServiceCorsConfigurationArgs
///         {
///             AllowedOrigins = new[]
///             {
///                 "http://www.example.com",
///                 "http://www.example2.com",
///             },
///             AllowedHeaders = new[]
///             {
///                 "x-tempo-*",
///                 "x-tempo2-*",
///             },
///             AllowedMethods = new[]
///             {
///                 "GET",
///                 "PUT",
///             },
///             MaxAgeInSeconds = 500,
///             AllowCredentials = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewService(ctx, "example", &healthcare.ServiceArgs{
/// 			Name:               pulumi.String("uniquefhirname"),
/// 			ResourceGroupName:  pulumi.String("sample-resource-group"),
/// 			Location:           pulumi.String("westus2"),
/// 			Kind:               pulumi.String("fhir-R4"),
/// 			CosmosdbThroughput: pulumi.Int(2000),
/// 			Identity: &healthcare.ServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			AccessPolicyObjectIds:                 pulumi.String(current.ObjectId),
/// 			ConfigurationExportStorageAccountName: pulumi.String("teststorage"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("testenv"),
/// 				"purpose":     pulumi.String("AcceptanceTests"),
/// 			},
/// 			AuthenticationConfiguration: &healthcare.ServiceAuthenticationConfigurationArgs{
/// 				Authority:         pulumi.String("https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D"),
/// 				Audience:          pulumi.String("https://azurehealthcareapis.com/"),
/// 				SmartProxyEnabled: pulumi.Bool(true),
/// 			},
/// 			CorsConfiguration: &healthcare.ServiceCorsConfigurationArgs{
/// 				AllowedOrigins: pulumi.StringArray{
/// 					pulumi.String("http://www.example.com"),
/// 					pulumi.String("http://www.example2.com"),
/// 				},
/// 				AllowedHeaders: pulumi.StringArray{
/// 					pulumi.String("x-tempo-*"),
/// 					pulumi.String("x-tempo2-*"),
/// 				},
/// 				AllowedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("PUT"),
/// 				},
/// 				MaxAgeInSeconds:  pulumi.Int(500),
/// 				AllowCredentials: pulumi.Bool(true),
/// 			},
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_healthcare_service" "example" {
///   name                = "uniquefhirname"
///   resource_group_name = "sample-resource-group"
///   location            = "westus2"
///   kind                = "fhir-R4"
///   cosmosdb_throughput = "2000"
///   identity = {
///     type = "SystemAssigned"
///   }
///   access_policy_object_ids                  = data.azure_core_getclientconfig.current.object_id
///   configuration_export_storage_account_name = "teststorage"
///   tags = {
///     "environment" = "testenv"
///     "purpose"     = "AcceptanceTests"
///   }
///   authentication_configuration = {
///     authority           = "https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D"
///     audience            = "https://azurehealthcareapis.com/"
///     smart_proxy_enabled = "true"
///   }
///   cors_configuration = {
///     allowed_origins    = ["http://www.example.com", "http://www.example2.com"]
///     allowed_headers    = ["x-tempo-*", "x-tempo2-*"]
///     allowed_methods    = ["GET", "PUT"]
///     max_age_in_seconds = "500"
///     allow_credentials  = "true"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.healthcare.Service;
/// import com.pulumi.azure.healthcare.ServiceArgs;
/// import com.pulumi.azure.healthcare.inputs.ServiceIdentityArgs;
/// import com.pulumi.azure.healthcare.inputs.ServiceAuthenticationConfigurationArgs;
/// import com.pulumi.azure.healthcare.inputs.ServiceCorsConfigurationArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Service("example", ServiceArgs.builder()
///             .name("uniquefhirname")
///             .resourceGroupName("sample-resource-group")
///             .location("westus2")
///             .kind("fhir-R4")
///             .cosmosdbThroughput(2000)
///             .identity(ServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .accessPolicyObjectIds(current.objectId())
///             .configurationExportStorageAccountName("teststorage")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "testenv"),
///                 Map.entry("purpose", "AcceptanceTests")
///             ))
///             .authenticationConfiguration(ServiceAuthenticationConfigurationArgs.builder()
///                 .authority("https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D")
///                 .audience("https://azurehealthcareapis.com/")
///                 .smartProxyEnabled(true)
///                 .build())
///             .corsConfiguration(ServiceCorsConfigurationArgs.builder()
///                 .allowedOrigins(
///                     "http://www.example.com",
///                     "http://www.example2.com")
///                 .allowedHeaders(
///                     "x-tempo-*",
///                     "x-tempo2-*")
///                 .allowedMethods(
///                     "GET",
///                     "PUT")
///                 .maxAgeInSeconds(500)
///                 .allowCredentials(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:healthcare:Service
///     properties:
///       name: uniquefhirname
///       resourceGroupName: sample-resource-group
///       location: westus2
///       kind: fhir-R4
///       cosmosdbThroughput: '2000'
///       identity:
///         type: SystemAssigned
///       accessPolicyObjectIds: ${current.objectId}
///       configurationExportStorageAccountName: teststorage
///       tags:
///         environment: testenv
///         purpose: AcceptanceTests
///       authenticationConfiguration:
///         authority: https://login.microsoftonline.com/$%7Bdata.azurerm_client_config.current.tenant_id%7D
///         audience: https://azurehealthcareapis.com/
///         smartProxyEnabled: 'true'
///       corsConfiguration:
///         allowedOrigins:
///           - http://www.example.com
///           - http://www.example2.com
///         allowedHeaders:
///           - x-tempo-*
///           - x-tempo2-*
///         allowedMethods:
///           - GET
///           - PUT
///         maxAgeInSeconds: '500'
///         allowCredentials: 'true'
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2022-12-01
///
/// ## Import
///
/// Healthcare Service can be imported using the resource`id`, e.g.
///
/// ```sh
/// $ pulumi import azure:healthcare/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource_group/providers/Microsoft.HealthcareApis/services/service_name
/// ```
class Service extends pulumi.CustomResource {
  /// A set of Azure object IDs that are allowed to access the Service. If not configured, the default value is the object id of the service principal or user that is running Terraform.
  late final pulumi.Output<List<String>?> accessPolicyObjectIds;
  /// An `authenticationConfiguration` block as defined below.
  late final pulumi.Output<ServiceAuthenticationConfiguration> authenticationConfiguration;
  /// Specifies the name of the storage account which the operation configuration information is exported to.
  late final pulumi.Output<String?> configurationExportStorageAccountName;
  /// A `corsConfiguration` block as defined below.
  late final pulumi.Output<ServiceCorsConfiguration> corsConfiguration;
  /// A versionless Key Vault Key ID for CMK encryption of the backing database. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** In order to use a `Custom Key` from Key Vault for encryption you must grant Azure Cosmos DB Service access to your key vault. For instructions on how to configure your Key Vault correctly please refer to the [product documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-setup-cmk#add-an-access-policy-to-your-azure-key-vault-instance)
  late final pulumi.Output<String?> cosmosdbKeyVaultKeyVersionlessId;
  /// The provisioned throughput for the backing database. Range of `400`-`100000`. Defaults to `1000`.
  late final pulumi.Output<int?> cosmosdbThroughput;
  /// An `identity` block as defined below.
  late final pulumi.Output<ServiceIdentity?> identity;
  /// The type of the service. Values at time of publication are: `fhir`, `fhir-Stu3` and `fhir-R4`. Default value is `fhir`.
  late final pulumi.Output<String?> kind;
  /// Specifies the supported Azure Region where the Service should be created. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Not all locations support this resource. Some are `West US 2`, `North Central US`, and `UK West`.
  late final pulumi.Output<String> location;
  /// The name of the service instance. Used for service endpoint, must be unique within the audience. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether public network access is enabled or disabled for this service instance. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group in which to create the Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_healthcare_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyObjectIds = registerOutput<List<String>?>('accessPolicyObjectIds');
    authenticationConfiguration = registerOutput<ServiceAuthenticationConfiguration>('authenticationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAuthenticationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationExportStorageAccountName = registerOutput<String?>('configurationExportStorageAccountName');
    corsConfiguration = registerOutput<ServiceCorsConfiguration>('corsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceCorsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cosmosdbKeyVaultKeyVersionlessId = registerOutput<String?>('cosmosdbKeyVaultKeyVersionlessId');
    cosmosdbThroughput = registerOutput<int?>('cosmosdbThroughput');
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyObjectIds = registerOutput<List<String>?>('accessPolicyObjectIds');
    authenticationConfiguration = registerOutput<ServiceAuthenticationConfiguration>('authenticationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAuthenticationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationExportStorageAccountName = registerOutput<String?>('configurationExportStorageAccountName');
    corsConfiguration = registerOutput<ServiceCorsConfiguration>('corsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceCorsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cosmosdbKeyVaultKeyVersionlessId = registerOutput<String?>('cosmosdbKeyVaultKeyVersionlessId');
    cosmosdbThroughput = registerOutput<int?>('cosmosdbThroughput');
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
