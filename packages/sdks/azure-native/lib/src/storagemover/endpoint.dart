import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'system_data_response.dart';

/// The Endpoint resource, which contains information about file sources and targets.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01, 2025-12-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Endpoints_CreateOrUpdate_AzureStorageBlobContainer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.StorageMover.Endpoint("endpoint", new()
///     {
///         EndpointName = "examples-endpointName",
///         Properties = new AzureNative.StorageMover.Inputs.AzureStorageBlobContainerEndpointPropertiesArgs
///         {
///             BlobContainerName = "examples-blobcontainer",
///             Description = "Example Storage Blob Container Endpoint Description",
///             EndpointType = "AzureStorageBlobContainer",
///             StorageAccountResourceId = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa",
///         },
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewEndpoint(ctx, "endpoint", &storagemover.EndpointArgs{
/// 			EndpointName: pulumi.String("examples-endpointName"),
/// 			Properties: &storagemover.AzureStorageBlobContainerEndpointPropertiesArgs{
/// 				BlobContainerName:        pulumi.String("examples-blobcontainer"),
/// 				Description:              pulumi.String("Example Storage Blob Container Endpoint Description"),
/// 				EndpointType:             pulumi.String("AzureStorageBlobContainer"),
/// 				StorageAccountResourceId: pulumi.String("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
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
/// resource "azure-native_storagemover_endpoint" "endpoint" {
///   endpoint_name = "examples-endpointName"
///   properties = {
///     "blobContainerName"        = "examples-blobcontainer"
///     "description"              = "Example Storage Blob Container Endpoint Description"
///     "endpointType"             = "AzureStorageBlobContainer"
///     "storageAccountResourceId" = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa"
///   }
///   resource_group_name = "examples-rg"
///   storage_mover_name  = "examples-storageMoverName"
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
/// import com.pulumi.azurenative.storagemover.Endpoint;
/// import com.pulumi.azurenative.storagemover.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointName("examples-endpointName")
///             .properties(AzureStorageBlobContainerEndpointPropertiesArgs.builder()
///                 .blobContainerName("examples-blobcontainer")
///                 .description("Example Storage Blob Container Endpoint Description")
///                 .endpointType("AzureStorageBlobContainer")
///                 .storageAccountResourceId("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa")
///                 .build())
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
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
/// const endpoint = new azure_native.storagemover.Endpoint("endpoint", {
///     endpointName: "examples-endpointName",
///     properties: {
///         blobContainerName: "examples-blobcontainer",
///         description: "Example Storage Blob Container Endpoint Description",
///         endpointType: "AzureStorageBlobContainer",
///         storageAccountResourceId: "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa",
///     },
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.storagemover.Endpoint("endpoint",
///     endpoint_name="examples-endpointName",
///     properties={
///         "blob_container_name": "examples-blobcontainer",
///         "description": "Example Storage Blob Container Endpoint Description",
///         "endpoint_type": "AzureStorageBlobContainer",
///         "storage_account_resource_id": "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa",
///     },
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:storagemover:Endpoint
///     properties:
///       endpointName: examples-endpointName
///       properties:
///         blobContainerName: examples-blobcontainer
///         description: Example Storage Blob Container Endpoint Description
///         endpointType: AzureStorageBlobContainer
///         storageAccountResourceId: /subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoints_CreateOrUpdate_AzureStorageSmbFileShare
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.StorageMover.Endpoint("endpoint", new()
///     {
///         EndpointName = "examples-endpointName",
///         Properties = new AzureNative.StorageMover.Inputs.AzureStorageSmbFileShareEndpointPropertiesArgs
///         {
///             Description = "Example Storage File Share Endpoint Description",
///             EndpointType = "AzureStorageSmbFileShare",
///             FileShareName = "examples-fileshare",
///             StorageAccountResourceId = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa",
///         },
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewEndpoint(ctx, "endpoint", &storagemover.EndpointArgs{
/// 			EndpointName: pulumi.String("examples-endpointName"),
/// 			Properties: &storagemover.AzureStorageSmbFileShareEndpointPropertiesArgs{
/// 				Description:              pulumi.String("Example Storage File Share Endpoint Description"),
/// 				EndpointType:             pulumi.String("AzureStorageSmbFileShare"),
/// 				FileShareName:            pulumi.String("examples-fileshare"),
/// 				StorageAccountResourceId: pulumi.String("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
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
/// resource "azure-native_storagemover_endpoint" "endpoint" {
///   endpoint_name = "examples-endpointName"
///   properties = {
///     "description"              = "Example Storage File Share Endpoint Description"
///     "endpointType"             = "AzureStorageSmbFileShare"
///     "fileShareName"            = "examples-fileshare"
///     "storageAccountResourceId" = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa"
///   }
///   resource_group_name = "examples-rg"
///   storage_mover_name  = "examples-storageMoverName"
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
/// import com.pulumi.azurenative.storagemover.Endpoint;
/// import com.pulumi.azurenative.storagemover.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointName("examples-endpointName")
///             .properties(AzureStorageSmbFileShareEndpointPropertiesArgs.builder()
///                 .description("Example Storage File Share Endpoint Description")
///                 .endpointType("AzureStorageSmbFileShare")
///                 .fileShareName("examples-fileshare")
///                 .storageAccountResourceId("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa")
///                 .build())
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
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
/// const endpoint = new azure_native.storagemover.Endpoint("endpoint", {
///     endpointName: "examples-endpointName",
///     properties: {
///         description: "Example Storage File Share Endpoint Description",
///         endpointType: "AzureStorageSmbFileShare",
///         fileShareName: "examples-fileshare",
///         storageAccountResourceId: "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa",
///     },
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.storagemover.Endpoint("endpoint",
///     endpoint_name="examples-endpointName",
///     properties={
///         "description": "Example Storage File Share Endpoint Description",
///         "endpoint_type": "AzureStorageSmbFileShare",
///         "file_share_name": "examples-fileshare",
///         "storage_account_resource_id": "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa",
///     },
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:storagemover:Endpoint
///     properties:
///       endpointName: examples-endpointName
///       properties:
///         description: Example Storage File Share Endpoint Description
///         endpointType: AzureStorageSmbFileShare
///         fileShareName: examples-fileshare
///         storageAccountResourceId: /subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.Storage/storageAccounts/examplesa
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoints_CreateOrUpdate_NfsMount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.StorageMover.Endpoint("endpoint", new()
///     {
///         EndpointName = "examples-endpointName",
///         Properties = new AzureNative.StorageMover.Inputs.NfsMountEndpointPropertiesArgs
///         {
///             Description = "Example NFS Mount Endpoint Description",
///             EndpointType = "NfsMount",
///             Export = "examples-exportName",
///             Host = "0.0.0.0",
///         },
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewEndpoint(ctx, "endpoint", &storagemover.EndpointArgs{
/// 			EndpointName: pulumi.String("examples-endpointName"),
/// 			Properties: &storagemover.NfsMountEndpointPropertiesArgs{
/// 				Description:  pulumi.String("Example NFS Mount Endpoint Description"),
/// 				EndpointType: pulumi.String("NfsMount"),
/// 				Export:       pulumi.String("examples-exportName"),
/// 				Host:         pulumi.String("0.0.0.0"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
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
/// resource "azure-native_storagemover_endpoint" "endpoint" {
///   endpoint_name = "examples-endpointName"
///   properties = {
///     "description"  = "Example NFS Mount Endpoint Description"
///     "endpointType" = "NfsMount"
///     "export"       = "examples-exportName"
///     "host"         = "0.0.0.0"
///   }
///   resource_group_name = "examples-rg"
///   storage_mover_name  = "examples-storageMoverName"
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
/// import com.pulumi.azurenative.storagemover.Endpoint;
/// import com.pulumi.azurenative.storagemover.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointName("examples-endpointName")
///             .properties(NfsMountEndpointPropertiesArgs.builder()
///                 .description("Example NFS Mount Endpoint Description")
///                 .endpointType("NfsMount")
///                 .export("examples-exportName")
///                 .host("0.0.0.0")
///                 .build())
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
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
/// const endpoint = new azure_native.storagemover.Endpoint("endpoint", {
///     endpointName: "examples-endpointName",
///     properties: {
///         description: "Example NFS Mount Endpoint Description",
///         endpointType: "NfsMount",
///         "export": "examples-exportName",
///         host: "0.0.0.0",
///     },
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.storagemover.Endpoint("endpoint",
///     endpoint_name="examples-endpointName",
///     properties={
///         "description": "Example NFS Mount Endpoint Description",
///         "endpoint_type": "NfsMount",
///         "export": "examples-exportName",
///         "host": "0.0.0.0",
///     },
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:storagemover:Endpoint
///     properties:
///       endpointName: examples-endpointName
///       properties:
///         description: Example NFS Mount Endpoint Description
///         endpointType: NfsMount
///         export: examples-exportName
///         host: 0.0.0.0
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoints_CreateOrUpdate_SmbMount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.StorageMover.Endpoint("endpoint", new()
///     {
///         EndpointName = "examples-endpointName",
///         Properties = new AzureNative.StorageMover.Inputs.SmbMountEndpointPropertiesArgs
///         {
///             Credentials = new AzureNative.StorageMover.Inputs.AzureKeyVaultSmbCredentialsArgs
///             {
///                 PasswordUri = "https://examples-azureKeyVault.vault.azure.net/secrets/examples-password",
///                 Type = "AzureKeyVaultSmb",
///                 UsernameUri = "https://examples-azureKeyVault.vault.azure.net/secrets/examples-username",
///             },
///             Description = "Example SMB Mount Endpoint Description",
///             EndpointType = "SmbMount",
///             Host = "0.0.0.0",
///             ShareName = "examples-shareName",
///         },
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewEndpoint(ctx, "endpoint", &storagemover.EndpointArgs{
/// 			EndpointName: pulumi.String("examples-endpointName"),
/// 			Properties: &storagemover.SmbMountEndpointPropertiesArgs{
/// 				Credentials: &storagemover.AzureKeyVaultSmbCredentialsArgs{
/// 					PasswordUri: pulumi.String("https://examples-azureKeyVault.vault.azure.net/secrets/examples-password"),
/// 					Type:        pulumi.String("AzureKeyVaultSmb"),
/// 					UsernameUri: pulumi.String("https://examples-azureKeyVault.vault.azure.net/secrets/examples-username"),
/// 				},
/// 				Description:  pulumi.String("Example SMB Mount Endpoint Description"),
/// 				EndpointType: pulumi.String("SmbMount"),
/// 				Host:         pulumi.String("0.0.0.0"),
/// 				ShareName:    pulumi.String("examples-shareName"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
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
/// resource "azure-native_storagemover_endpoint" "endpoint" {
///   endpoint_name = "examples-endpointName"
///   properties = {
///     "credentials" = {
///       "passwordUri" = "https://examples-azureKeyVault.vault.azure.net/secrets/examples-password"
///       "type"        = "AzureKeyVaultSmb"
///       "usernameUri" = "https://examples-azureKeyVault.vault.azure.net/secrets/examples-username"
///     }
///     "description"  = "Example SMB Mount Endpoint Description"
///     "endpointType" = "SmbMount"
///     "host"         = "0.0.0.0"
///     "shareName"    = "examples-shareName"
///   }
///   resource_group_name = "examples-rg"
///   storage_mover_name  = "examples-storageMoverName"
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
/// import com.pulumi.azurenative.storagemover.Endpoint;
/// import com.pulumi.azurenative.storagemover.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointName("examples-endpointName")
///             .properties(SmbMountEndpointPropertiesArgs.builder()
///                 .credentials(Map.ofEntries(
///                     Map.entry("passwordUri", "https://examples-azureKeyVault.vault.azure.net/secrets/examples-password"),
///                     Map.entry("type", "AzureKeyVaultSmb"),
///                     Map.entry("usernameUri", "https://examples-azureKeyVault.vault.azure.net/secrets/examples-username")
///                 ))
///                 .description("Example SMB Mount Endpoint Description")
///                 .endpointType("SmbMount")
///                 .host("0.0.0.0")
///                 .shareName("examples-shareName")
///                 .build())
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
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
/// const endpoint = new azure_native.storagemover.Endpoint("endpoint", {
///     endpointName: "examples-endpointName",
///     properties: {
///         credentials: {
///             passwordUri: "https://examples-azureKeyVault.vault.azure.net/secrets/examples-password",
///             type: "AzureKeyVaultSmb",
///             usernameUri: "https://examples-azureKeyVault.vault.azure.net/secrets/examples-username",
///         },
///         description: "Example SMB Mount Endpoint Description",
///         endpointType: "SmbMount",
///         host: "0.0.0.0",
///         shareName: "examples-shareName",
///     },
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.storagemover.Endpoint("endpoint",
///     endpoint_name="examples-endpointName",
///     properties={
///         "credentials": {
///             "password_uri": "https://examples-azureKeyVault.vault.azure.net/secrets/examples-password",
///             "type": "AzureKeyVaultSmb",
///             "username_uri": "https://examples-azureKeyVault.vault.azure.net/secrets/examples-username",
///         },
///         "description": "Example SMB Mount Endpoint Description",
///         "endpoint_type": "SmbMount",
///         "host": "0.0.0.0",
///         "share_name": "examples-shareName",
///     },
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:storagemover:Endpoint
///     properties:
///       endpointName: examples-endpointName
///       properties:
///         credentials:
///           passwordUri: https://examples-azureKeyVault.vault.azure.net/secrets/examples-password
///           type: AzureKeyVaultSmb
///           usernameUri: https://examples-azureKeyVault.vault.azure.net/secrets/examples-username
///         description: Example SMB Mount Endpoint Description
///         endpointType: SmbMount
///         host: 0.0.0.0
///         shareName: examples-shareName
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
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
/// $ pulumi import azure-native:storagemover:Endpoint examples-endpointName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageMover/storageMovers/{storageMoverName}/endpoints/{endpointName}
/// ```
class Endpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource specific properties for the Storage Mover resource.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_storagemover_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagemover:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Endpoint] resource.
  Endpoint.reference(String urn)
    : super(
        'azure-native:storagemover:Endpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
