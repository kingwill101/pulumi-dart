import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_service_properties_args.dart';
import 'change_feed_response.dart';
import 'cors_rules_response.dart';
import 'delete_retention_policy_response.dart';
import 'last_access_time_tracking_policy_response.dart';
import 'restore_policy_properties_response.dart';
import 'sku_response.dart';

/// The properties of a storage account’s Blob service.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BlobServicesPutAllowPermanentDelete
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobServiceProperties = new AzureNative.Storage.BlobServiceProperties("blobServiceProperties", new()
///     {
///         AccountName = "sto8607",
///         BlobServicesName = "default",
///         DeleteRetentionPolicy = new AzureNative.Storage.Inputs.DeleteRetentionPolicyArgs
///         {
///             AllowPermanentDelete = true,
///             Days = 300,
///             Enabled = true,
///         },
///         IsVersioningEnabled = true,
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
/// 		_, err := storage.NewBlobServiceProperties(ctx, "blobServiceProperties", &storage.BlobServicePropertiesArgs{
/// 			AccountName:      pulumi.String("sto8607"),
/// 			BlobServicesName: pulumi.String("default"),
/// 			DeleteRetentionPolicy: &storage.DeleteRetentionPolicyArgs{
/// 				AllowPermanentDelete: pulumi.Bool(true),
/// 				Days:                 pulumi.Int(300),
/// 				Enabled:              pulumi.Bool(true),
/// 			},
/// 			IsVersioningEnabled: pulumi.Bool(true),
/// 			ResourceGroupName:   pulumi.String("res4410"),
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
/// resource "azure-native_storage_blobserviceproperties" "blobServiceProperties" {
///   account_name       = "sto8607"
///   blob_services_name = "default"
///   delete_retention_policy = {
///     allow_permanent_delete = true
///     days                   = 300
///     enabled                = true
///   }
///   is_versioning_enabled = true
///   resource_group_name   = "res4410"
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
/// import com.pulumi.azurenative.storage.BlobServiceProperties;
/// import com.pulumi.azurenative.storage.BlobServicePropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.DeleteRetentionPolicyArgs;
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
///         var blobServiceProperties = new BlobServiceProperties("blobServiceProperties", BlobServicePropertiesArgs.builder()
///             .accountName("sto8607")
///             .blobServicesName("default")
///             .deleteRetentionPolicy(DeleteRetentionPolicyArgs.builder()
///                 .allowPermanentDelete(true)
///                 .days(300)
///                 .enabled(true)
///                 .build())
///             .isVersioningEnabled(true)
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
/// const blobServiceProperties = new azure_native.storage.BlobServiceProperties("blobServiceProperties", {
///     accountName: "sto8607",
///     blobServicesName: "default",
///     deleteRetentionPolicy: {
///         allowPermanentDelete: true,
///         days: 300,
///         enabled: true,
///     },
///     isVersioningEnabled: true,
///     resourceGroupName: "res4410",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_service_properties = azure_native.storage.BlobServiceProperties("blobServiceProperties",
///     account_name="sto8607",
///     blob_services_name="default",
///     delete_retention_policy={
///         "allow_permanent_delete": True,
///         "days": 300,
///         "enabled": True,
///     },
///     is_versioning_enabled=True,
///     resource_group_name="res4410")
///
/// ```
///
/// ```yaml
/// resources:
///   blobServiceProperties:
///     type: azure-native:storage:BlobServiceProperties
///     properties:
///       accountName: sto8607
///       blobServicesName: default
///       deleteRetentionPolicy:
///         allowPermanentDelete: true
///         days: 300
///         enabled: true
///       isVersioningEnabled: true
///       resourceGroupName: res4410
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BlobServicesPutLastAccessTimeBasedTracking
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobServiceProperties = new AzureNative.Storage.BlobServiceProperties("blobServiceProperties", new()
///     {
///         AccountName = "sto8607",
///         BlobServicesName = "default",
///         LastAccessTimeTrackingPolicy = new AzureNative.Storage.Inputs.LastAccessTimeTrackingPolicyArgs
///         {
///             BlobType = new[]
///             {
///                 "blockBlob",
///             },
///             Enable = true,
///             Name = AzureNative.Storage.Name.AccessTimeTracking,
///             TrackingGranularityInDays = 1,
///         },
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
/// 		_, err := storage.NewBlobServiceProperties(ctx, "blobServiceProperties", &storage.BlobServicePropertiesArgs{
/// 			AccountName:      pulumi.String("sto8607"),
/// 			BlobServicesName: pulumi.String("default"),
/// 			LastAccessTimeTrackingPolicy: &storage.LastAccessTimeTrackingPolicyArgs{
/// 				BlobType: pulumi.StringArray{
/// 					pulumi.String("blockBlob"),
/// 				},
/// 				Enable:                    pulumi.Bool(true),
/// 				Name:                      pulumi.String(storage.NameAccessTimeTracking),
/// 				TrackingGranularityInDays: pulumi.Int(1),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_blobserviceproperties" "blobServiceProperties" {
///   account_name       = "sto8607"
///   blob_services_name = "default"
///   last_access_time_tracking_policy = {
///     blob_type                    = ["blockBlob"]
///     enable                       = true
///     name                         = "AccessTimeTracking"
///     tracking_granularity_in_days = 1
///   }
///   resource_group_name = "res4410"
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
/// import com.pulumi.azurenative.storage.BlobServiceProperties;
/// import com.pulumi.azurenative.storage.BlobServicePropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.LastAccessTimeTrackingPolicyArgs;
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
///         var blobServiceProperties = new BlobServiceProperties("blobServiceProperties", BlobServicePropertiesArgs.builder()
///             .accountName("sto8607")
///             .blobServicesName("default")
///             .lastAccessTimeTrackingPolicy(LastAccessTimeTrackingPolicyArgs.builder()
///                 .blobType("blockBlob")
///                 .enable(true)
///                 .name("AccessTimeTracking")
///                 .trackingGranularityInDays(1)
///                 .build())
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
/// const blobServiceProperties = new azure_native.storage.BlobServiceProperties("blobServiceProperties", {
///     accountName: "sto8607",
///     blobServicesName: "default",
///     lastAccessTimeTrackingPolicy: {
///         blobType: ["blockBlob"],
///         enable: true,
///         name: azure_native.storage.Name.AccessTimeTracking,
///         trackingGranularityInDays: 1,
///     },
///     resourceGroupName: "res4410",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_service_properties = azure_native.storage.BlobServiceProperties("blobServiceProperties",
///     account_name="sto8607",
///     blob_services_name="default",
///     last_access_time_tracking_policy={
///         "blob_type": ["blockBlob"],
///         "enable": True,
///         "name": azure_native.storage.Name.ACCESS_TIME_TRACKING,
///         "tracking_granularity_in_days": 1,
///     },
///     resource_group_name="res4410")
///
/// ```
///
/// ```yaml
/// resources:
///   blobServiceProperties:
///     type: azure-native:storage:BlobServiceProperties
///     properties:
///       accountName: sto8607
///       blobServicesName: default
///       lastAccessTimeTrackingPolicy:
///         blobType:
///           - blockBlob
///         enable: true
///         name: AccessTimeTracking
///         trackingGranularityInDays: 1
///       resourceGroupName: res4410
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutBlobServices
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobServiceProperties = new AzureNative.Storage.BlobServiceProperties("blobServiceProperties", new()
///     {
///         AccountName = "sto8607",
///         BlobServicesName = "default",
///         ChangeFeed = new AzureNative.Storage.Inputs.ChangeFeedArgs
///         {
///             Enabled = true,
///             RetentionInDays = 7,
///         },
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
///                         "x -ms-meta-target*",
///                     },
///                     MaxAgeInSeconds = 2000,
///                 },
///             },
///         },
///         DefaultServiceVersion = "2017-07-29",
///         DeleteRetentionPolicy = new AzureNative.Storage.Inputs.DeleteRetentionPolicyArgs
///         {
///             Days = 300,
///             Enabled = true,
///         },
///         IsVersioningEnabled = true,
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
/// 		_, err := storage.NewBlobServiceProperties(ctx, "blobServiceProperties", &storage.BlobServicePropertiesArgs{
/// 			AccountName:      pulumi.String("sto8607"),
/// 			BlobServicesName: pulumi.String("default"),
/// 			ChangeFeed: &storage.ChangeFeedArgs{
/// 				Enabled:         pulumi.Bool(true),
/// 				RetentionInDays: pulumi.Int(7),
/// 			},
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
/// 							pulumi.String("x -ms-meta-target*"),
/// 						},
/// 						MaxAgeInSeconds: pulumi.Int(2000),
/// 					},
/// 				},
/// 			},
/// 			DefaultServiceVersion: pulumi.String("2017-07-29"),
/// 			DeleteRetentionPolicy: &storage.DeleteRetentionPolicyArgs{
/// 				Days:    pulumi.Int(300),
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			IsVersioningEnabled: pulumi.Bool(true),
/// 			ResourceGroupName:   pulumi.String("res4410"),
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
/// resource "azure-native_storage_blobserviceproperties" "blobServiceProperties" {
///   account_name       = "sto8607"
///   blob_services_name = "default"
///   change_feed = {
///     enabled           = true
///     retention_in_days = 7
///   }
///   cors = {
///     cors_rules = [{
///       "allowedHeaders"  = ["x-ms-meta-abc", "x-ms-meta-data*", "x-ms-meta-target*"]
///       "allowedMethods"  = ["GET", "HEAD", "POST", "OPTIONS", "MERGE", "PUT"]
///       "allowedOrigins"  = ["http://www.contoso.com", "http://www.fabrikam.com"]
///       "exposedHeaders"  = ["x-ms-meta-*"]
///       "maxAgeInSeconds" = 100
///       }, {
///       "allowedHeaders"  = ["*"]
///       "allowedMethods"  = ["GET"]
///       "allowedOrigins"  = ["*"]
///       "exposedHeaders"  = ["*"]
///       "maxAgeInSeconds" = 2
///       }, {
///       "allowedHeaders"  = ["x-ms-meta-12345675754564*"]
///       "allowedMethods"  = ["GET", "PUT"]
///       "allowedOrigins"  = ["http://www.abc23.com", "https://www.fabrikam.com/*"]
///       "exposedHeaders"  = ["x-ms-meta-abc", "x-ms-meta-data*", "x -ms-meta-target*"]
///       "maxAgeInSeconds" = 2000
///     }]
///   }
///   default_service_version = "2017-07-29"
///   delete_retention_policy = {
///     days    = 300
///     enabled = true
///   }
///   is_versioning_enabled = true
///   resource_group_name   = "res4410"
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
/// import com.pulumi.azurenative.storage.BlobServiceProperties;
/// import com.pulumi.azurenative.storage.BlobServicePropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.ChangeFeedArgs;
/// import com.pulumi.azurenative.storage.inputs.CorsRulesArgs;
/// import com.pulumi.azurenative.storage.inputs.DeleteRetentionPolicyArgs;
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
///         var blobServiceProperties = new BlobServiceProperties("blobServiceProperties", BlobServicePropertiesArgs.builder()
///             .accountName("sto8607")
///             .blobServicesName("default")
///             .changeFeed(ChangeFeedArgs.builder()
///                 .enabled(true)
///                 .retentionInDays(7)
///                 .build())
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
///                             "x -ms-meta-target*")
///                         .maxAgeInSeconds(2000)
///                         .build())
///                 .build())
///             .defaultServiceVersion("2017-07-29")
///             .deleteRetentionPolicy(DeleteRetentionPolicyArgs.builder()
///                 .days(300)
///                 .enabled(true)
///                 .build())
///             .isVersioningEnabled(true)
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
/// const blobServiceProperties = new azure_native.storage.BlobServiceProperties("blobServiceProperties", {
///     accountName: "sto8607",
///     blobServicesName: "default",
///     changeFeed: {
///         enabled: true,
///         retentionInDays: 7,
///     },
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
///                     "x -ms-meta-target*",
///                 ],
///                 maxAgeInSeconds: 2000,
///             },
///         ],
///     },
///     defaultServiceVersion: "2017-07-29",
///     deleteRetentionPolicy: {
///         days: 300,
///         enabled: true,
///     },
///     isVersioningEnabled: true,
///     resourceGroupName: "res4410",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_service_properties = azure_native.storage.BlobServiceProperties("blobServiceProperties",
///     account_name="sto8607",
///     blob_services_name="default",
///     change_feed={
///         "enabled": True,
///         "retention_in_days": 7,
///     },
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
///                     "x -ms-meta-target*",
///                 ],
///                 "max_age_in_seconds": 2000,
///             },
///         ],
///     },
///     default_service_version="2017-07-29",
///     delete_retention_policy={
///         "days": 300,
///         "enabled": True,
///     },
///     is_versioning_enabled=True,
///     resource_group_name="res4410")
///
/// ```
///
/// ```yaml
/// resources:
///   blobServiceProperties:
///     type: azure-native:storage:BlobServiceProperties
///     properties:
///       accountName: sto8607
///       blobServicesName: default
///       changeFeed:
///         enabled: true
///         retentionInDays: 7
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
///               - x -ms-meta-target*
///             maxAgeInSeconds: 2000
///       defaultServiceVersion: 2017-07-29
///       deleteRetentionPolicy:
///         days: 300
///         enabled: true
///       isVersioningEnabled: true
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
/// $ pulumi import azure-native:storage:BlobServiceProperties default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/{BlobServicesName}
/// ```
class BlobServiceProperties extends pulumi.CustomResource {
  /// Deprecated in favor of isVersioningEnabled property.
  late final pulumi.Output<bool?> automaticSnapshotPolicyEnabled;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The blob service properties for change feed events.
  late final pulumi.Output<ChangeFeedResponse?> changeFeed;
  /// The blob service properties for container soft delete.
  late final pulumi.Output<DeleteRetentionPolicyResponse?> containerDeleteRetentionPolicy;
  /// Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  late final pulumi.Output<CorsRulesResponse?> cors;
  /// DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  late final pulumi.Output<String?> defaultServiceVersion;
  /// The blob service properties for blob soft delete.
  late final pulumi.Output<DeleteRetentionPolicyResponse?> deleteRetentionPolicy;
  /// Versioning is enabled if set to true.
  late final pulumi.Output<bool?> isVersioningEnabled;
  /// The blob service property to configure last access time based tracking policy.
  late final pulumi.Output<LastAccessTimeTrackingPolicyResponse?> lastAccessTimeTrackingPolicy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The blob service properties for blob restore policy.
  late final pulumi.Output<RestorePolicyPropertiesResponse?> restorePolicy;
  /// Sku name and tier.
  late final pulumi.Output<SkuResponse> sku;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BlobServiceProperties].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobServiceProperties]. {@macro pulumi_storage_blob_service_properties_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobServiceProperties(
    String name, {
    BlobServicePropertiesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:BlobServiceProperties',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticSnapshotPolicyEnabled = registerOutput<bool?>('automaticSnapshotPolicyEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changeFeed = registerOutput<ChangeFeedResponse?>('changeFeed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChangeFeedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containerDeleteRetentionPolicy = registerOutput<DeleteRetentionPolicyResponse?>('containerDeleteRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<CorsRulesResponse?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultServiceVersion = registerOutput<String?>('defaultServiceVersion');
    deleteRetentionPolicy = registerOutput<DeleteRetentionPolicyResponse?>('deleteRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isVersioningEnabled = registerOutput<bool?>('isVersioningEnabled');
    lastAccessTimeTrackingPolicy = registerOutput<LastAccessTimeTrackingPolicyResponse?>('lastAccessTimeTrackingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LastAccessTimeTrackingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    restorePolicy = registerOutput<RestorePolicyPropertiesResponse?>('restorePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestorePolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [BlobServiceProperties] resource.
  BlobServiceProperties.reference(String urn)
    : super(
        'azure-native:storage:BlobServiceProperties',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automaticSnapshotPolicyEnabled = registerOutput<bool?>('automaticSnapshotPolicyEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changeFeed = registerOutput<ChangeFeedResponse?>('changeFeed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChangeFeedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containerDeleteRetentionPolicy = registerOutput<DeleteRetentionPolicyResponse?>('containerDeleteRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<CorsRulesResponse?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultServiceVersion = registerOutput<String?>('defaultServiceVersion');
    deleteRetentionPolicy = registerOutput<DeleteRetentionPolicyResponse?>('deleteRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isVersioningEnabled = registerOutput<bool?>('isVersioningEnabled');
    lastAccessTimeTrackingPolicy = registerOutput<LastAccessTimeTrackingPolicyResponse?>('lastAccessTimeTrackingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LastAccessTimeTrackingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    restorePolicy = registerOutput<RestorePolicyPropertiesResponse?>('restorePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestorePolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
