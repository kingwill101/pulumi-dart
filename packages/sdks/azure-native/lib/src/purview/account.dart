import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_merge_info_response.dart';
import 'account_properties_account_status_response.dart';
import 'account_properties_endpoints_response.dart';
import 'account_properties_managed_resources_response.dart';
import 'account_sku_response.dart';
import 'cloud_connectors_response.dart';
import 'identity_response.dart';
import 'ingestion_storage_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Account resource
///
/// Uses Azure REST API version 2024-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Accounts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.Purview.Account("account", new()
///     {
///         AccountName = "account1",
///         Location = "West US 2",
///         ResourceGroupName = "SampleResourceGroup",
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
/// 	purview "github.com/pulumi/pulumi-azure-native-sdk/purview/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := purview.NewAccount(ctx, "account", &purview.AccountArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Location:          pulumi.String("West US 2"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
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
/// resource "azure-native_purview_account" "account" {
///   account_name        = "account1"
///   location            = "West US 2"
///   resource_group_name = "SampleResourceGroup"
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
/// import com.pulumi.azurenative.purview.Account;
/// import com.pulumi.azurenative.purview.AccountArgs;
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
///             .accountName("account1")
///             .location("West US 2")
///             .resourceGroupName("SampleResourceGroup")
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
/// const account = new azure_native.purview.Account("account", {
///     accountName: "account1",
///     location: "West US 2",
///     resourceGroupName: "SampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.purview.Account("account",
///     account_name="account1",
///     location="West US 2",
///     resource_group_name="SampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:purview:Account
///     properties:
///       accountName: account1
///       location: West US 2
///       resourceGroupName: SampleResourceGroup
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
/// $ pulumi import azure-native:purview:Account account1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Purview/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// Gets or sets the status of the account.
  late final pulumi.Output<AccountPropertiesAccountStatusResponse> accountStatus;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// External Cloud Service connectors
  late final pulumi.Output<CloudConnectorsResponse?> cloudConnectors;
  /// Gets the time at which the entity was created.
  late final pulumi.Output<String> createdAt;
  /// Gets the creator of the entity.
  late final pulumi.Output<String> createdBy;
  /// Gets the creators of the entity's object id.
  late final pulumi.Output<String> createdByObjectId;
  /// Gets the default domain in the account.
  late final pulumi.Output<String> defaultDomain;
  /// The URIs that are the public endpoints of the account.
  late final pulumi.Output<AccountPropertiesEndpointsResponse> endpoints;
  /// Gets or sets the friendly name.
  late final pulumi.Output<String> friendlyName;
  /// The Managed Identity of the resource
  late final pulumi.Output<IdentityResponse?> identity;
  /// Ingestion Storage Account Info
  late final pulumi.Output<IngestionStorageResponse?> ingestionStorage;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  late final pulumi.Output<String?> managedEventHubState;
  /// Gets or sets the managed resource group name
  late final pulumi.Output<String?> managedResourceGroupName;
  /// Gets the resource identifiers of the managed resources.
  late final pulumi.Output<AccountPropertiesManagedResourcesResponse> managedResources;
  /// Gets or sets the public network access for managed resources.
  late final pulumi.Output<String?> managedResourcesPublicNetworkAccess;
  /// Gets or sets the Merge Info.
  late final pulumi.Output<AccountMergeInfoResponse?> mergeInfo;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the private endpoint connections information.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Gets or sets the state of the provisioning.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the public network access.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Gets or sets the Sku.
  late final pulumi.Output<AccountSkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the state of tenant endpoint.
  late final pulumi.Output<String?> tenantEndpointState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_purview_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:purview:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountStatus = registerOutput<AccountPropertiesAccountStatusResponse>('accountStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountPropertiesAccountStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudConnectors = registerOutput<CloudConnectorsResponse?>('cloudConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudConnectorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    createdByObjectId = registerOutput<String>('createdByObjectId');
    defaultDomain = registerOutput<String>('defaultDomain');
    endpoints = registerOutput<AccountPropertiesEndpointsResponse>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountPropertiesEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String>('friendlyName');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingestionStorage = registerOutput<IngestionStorageResponse?>('ingestionStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    managedEventHubState = registerOutput<String?>('managedEventHubState');
    managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    managedResources = registerOutput<AccountPropertiesManagedResourcesResponse>('managedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountPropertiesManagedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourcesPublicNetworkAccess = registerOutput<String?>('managedResourcesPublicNetworkAccess');
    mergeInfo = registerOutput<AccountMergeInfoResponse?>('mergeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountMergeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sku = registerOutput<AccountSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantEndpointState = registerOutput<String?>('tenantEndpointState');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:purview:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountStatus = registerOutput<AccountPropertiesAccountStatusResponse>('accountStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountPropertiesAccountStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudConnectors = registerOutput<CloudConnectorsResponse?>('cloudConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudConnectorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    createdByObjectId = registerOutput<String>('createdByObjectId');
    defaultDomain = registerOutput<String>('defaultDomain');
    endpoints = registerOutput<AccountPropertiesEndpointsResponse>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountPropertiesEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String>('friendlyName');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingestionStorage = registerOutput<IngestionStorageResponse?>('ingestionStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    managedEventHubState = registerOutput<String?>('managedEventHubState');
    managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    managedResources = registerOutput<AccountPropertiesManagedResourcesResponse>('managedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountPropertiesManagedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourcesPublicNetworkAccess = registerOutput<String?>('managedResourcesPublicNetworkAccess');
    mergeInfo = registerOutput<AccountMergeInfoResponse?>('mergeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountMergeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sku = registerOutput<AccountSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantEndpointState = registerOutput<String?>('tenantEndpointState');
    type = registerOutput<String>('type');
  }
}
