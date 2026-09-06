import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'health_response.dart';
import 'provider_instance_args.dart';
import 'system_data_response.dart';

/// A provider instance associated with SAP monitor.
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-10-01-preview, 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Db2 provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.Db2ProviderInstancePropertiesArgs
///         {
///             DbName = "dbName",
///             DbPassword = "password",
///             DbPasswordUri = "",
///             DbPort = "dbPort",
///             DbUsername = "username",
///             Hostname = "hostname",
///             ProviderType = "Db2",
///             SapSid = "SID",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.Db2ProviderInstancePropertiesArgs{
/// 				DbName:            pulumi.String("dbName"),
/// 				DbPassword:        pulumi.String("password"),
/// 				DbPasswordUri:     pulumi.String(""),
/// 				DbPort:            pulumi.String("dbPort"),
/// 				DbUsername:        pulumi.String("username"),
/// 				Hostname:          pulumi.String("hostname"),
/// 				ProviderType:      pulumi.String("Db2"),
/// 				SapSid:            pulumi.String("SID"),
/// 				SslCertificateUri: pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslPreference:     pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbName"            = "dbName"
///     "dbPassword"        = "password"
///     "dbPasswordUri"     = ""
///     "dbPort"            = "dbPort"
///     "dbUsername"        = "username"
///     "hostname"          = "hostname"
///     "providerType"      = "Db2"
///     "sapSid"            = "SID"
///     "sslCertificateUri" = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslPreference"     = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(Db2ProviderInstancePropertiesArgs.builder()
///                 .dbName("dbName")
///                 .dbPassword("password")
///                 .dbPasswordUri("")
///                 .dbPort("dbPort")
///                 .dbUsername("username")
///                 .hostname("hostname")
///                 .providerType("Db2")
///                 .sapSid("SID")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbName: "dbName",
///         dbPassword: "password",
///         dbPasswordUri: "",
///         dbPort: "dbPort",
///         dbUsername: "username",
///         hostname: "hostname",
///         providerType: "Db2",
///         sapSid: "SID",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_name": "dbName",
///         "db_password": "password",
///         "db_password_uri": "",
///         "db_port": "dbPort",
///         "db_username": "username",
///         "hostname": "hostname",
///         "provider_type": "Db2",
///         "sap_sid": "SID",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbName: dbName
///         dbPassword: password
///         dbPasswordUri: ""
///         dbPort: dbPort
///         dbUsername: username
///         hostname: hostname
///         providerType: Db2
///         sapSid: SID
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Db2 provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.Db2ProviderInstancePropertiesArgs
///         {
///             DbName = "dbName",
///             DbPassword = "password",
///             DbPasswordUri = "",
///             DbPort = "dbPort",
///             DbUsername = "username",
///             Hostname = "hostname",
///             ProviderType = "Db2",
///             SapSid = "SID",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.Db2ProviderInstancePropertiesArgs{
/// 				DbName:        pulumi.String("dbName"),
/// 				DbPassword:    pulumi.String("password"),
/// 				DbPasswordUri: pulumi.String(""),
/// 				DbPort:        pulumi.String("dbPort"),
/// 				DbUsername:    pulumi.String("username"),
/// 				Hostname:      pulumi.String("hostname"),
/// 				ProviderType:  pulumi.String("Db2"),
/// 				SapSid:        pulumi.String("SID"),
/// 				SslPreference: pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbName"        = "dbName"
///     "dbPassword"    = "password"
///     "dbPasswordUri" = ""
///     "dbPort"        = "dbPort"
///     "dbUsername"    = "username"
///     "hostname"      = "hostname"
///     "providerType"  = "Db2"
///     "sapSid"        = "SID"
///     "sslPreference" = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(Db2ProviderInstancePropertiesArgs.builder()
///                 .dbName("dbName")
///                 .dbPassword("password")
///                 .dbPasswordUri("")
///                 .dbPort("dbPort")
///                 .dbUsername("username")
///                 .hostname("hostname")
///                 .providerType("Db2")
///                 .sapSid("SID")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbName: "dbName",
///         dbPassword: "password",
///         dbPasswordUri: "",
///         dbPort: "dbPort",
///         dbUsername: "username",
///         hostname: "hostname",
///         providerType: "Db2",
///         sapSid: "SID",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_name": "dbName",
///         "db_password": "password",
///         "db_password_uri": "",
///         "db_port": "dbPort",
///         "db_username": "username",
///         "hostname": "hostname",
///         "provider_type": "Db2",
///         "sap_sid": "SID",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbName: dbName
///         dbPassword: password
///         dbPasswordUri: ""
///         dbPort: dbPort
///         dbUsername: username
///         hostname: hostname
///         providerType: Db2
///         sapSid: SID
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a MsSqlServer provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.MsSqlServerProviderInstancePropertiesArgs
///         {
///             DbPassword = "****",
///             DbPasswordUri = "",
///             DbPort = "5912",
///             DbUsername = "user",
///             Hostname = "hostname",
///             ProviderType = "MsSqlServer",
///             SapSid = "sid",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.MsSqlServerProviderInstancePropertiesArgs{
/// 				DbPassword:        pulumi.String("****"),
/// 				DbPasswordUri:     pulumi.String(""),
/// 				DbPort:            pulumi.String("5912"),
/// 				DbUsername:        pulumi.String("user"),
/// 				Hostname:          pulumi.String("hostname"),
/// 				ProviderType:      pulumi.String("MsSqlServer"),
/// 				SapSid:            pulumi.String("sid"),
/// 				SslCertificateUri: pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslPreference:     pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbPassword"        = "****"
///     "dbPasswordUri"     = ""
///     "dbPort"            = "5912"
///     "dbUsername"        = "user"
///     "hostname"          = "hostname"
///     "providerType"      = "MsSqlServer"
///     "sapSid"            = "sid"
///     "sslCertificateUri" = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslPreference"     = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(MsSqlServerProviderInstancePropertiesArgs.builder()
///                 .dbPassword("****")
///                 .dbPasswordUri("")
///                 .dbPort("5912")
///                 .dbUsername("user")
///                 .hostname("hostname")
///                 .providerType("MsSqlServer")
///                 .sapSid("sid")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbPassword: "****",
///         dbPasswordUri: "",
///         dbPort: "5912",
///         dbUsername: "user",
///         hostname: "hostname",
///         providerType: "MsSqlServer",
///         sapSid: "sid",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_password": "****",
///         "db_password_uri": "",
///         "db_port": "5912",
///         "db_username": "user",
///         "hostname": "hostname",
///         "provider_type": "MsSqlServer",
///         "sap_sid": "sid",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbPassword: '****'
///         dbPasswordUri: ""
///         dbPort: '5912'
///         dbUsername: user
///         hostname: hostname
///         providerType: MsSqlServer
///         sapSid: sid
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a MsSqlServer provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.MsSqlServerProviderInstancePropertiesArgs
///         {
///             DbPassword = "****",
///             DbPasswordUri = "",
///             DbPort = "5912",
///             DbUsername = "user",
///             Hostname = "hostname",
///             ProviderType = "MsSqlServer",
///             SapSid = "sid",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.MsSqlServerProviderInstancePropertiesArgs{
/// 				DbPassword:    pulumi.String("****"),
/// 				DbPasswordUri: pulumi.String(""),
/// 				DbPort:        pulumi.String("5912"),
/// 				DbUsername:    pulumi.String("user"),
/// 				Hostname:      pulumi.String("hostname"),
/// 				ProviderType:  pulumi.String("MsSqlServer"),
/// 				SapSid:        pulumi.String("sid"),
/// 				SslPreference: pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbPassword"    = "****"
///     "dbPasswordUri" = ""
///     "dbPort"        = "5912"
///     "dbUsername"    = "user"
///     "hostname"      = "hostname"
///     "providerType"  = "MsSqlServer"
///     "sapSid"        = "sid"
///     "sslPreference" = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(MsSqlServerProviderInstancePropertiesArgs.builder()
///                 .dbPassword("****")
///                 .dbPasswordUri("")
///                 .dbPort("5912")
///                 .dbUsername("user")
///                 .hostname("hostname")
///                 .providerType("MsSqlServer")
///                 .sapSid("sid")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbPassword: "****",
///         dbPasswordUri: "",
///         dbPort: "5912",
///         dbUsername: "user",
///         hostname: "hostname",
///         providerType: "MsSqlServer",
///         sapSid: "sid",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_password": "****",
///         "db_password_uri": "",
///         "db_port": "5912",
///         "db_username": "user",
///         "hostname": "hostname",
///         "provider_type": "MsSqlServer",
///         "sap_sid": "sid",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbPassword: '****'
///         dbPasswordUri: ""
///         dbPort: '5912'
///         dbUsername: user
///         hostname: hostname
///         providerType: MsSqlServer
///         sapSid: sid
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a OS provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.PrometheusOsProviderInstancePropertiesArgs
///         {
///             PrometheusUrl = "http://192.168.0.0:9090/metrics",
///             ProviderType = "PrometheusOS",
///             SapSid = "SID",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.PrometheusOsProviderInstancePropertiesArgs{
/// 				PrometheusUrl:     pulumi.String("http://192.168.0.0:9090/metrics"),
/// 				ProviderType:      pulumi.String("PrometheusOS"),
/// 				SapSid:            pulumi.String("SID"),
/// 				SslCertificateUri: pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslPreference:     pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "prometheusUrl"     = "http://192.168.0.0:9090/metrics"
///     "providerType"      = "PrometheusOS"
///     "sapSid"            = "SID"
///     "sslCertificateUri" = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslPreference"     = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(PrometheusOsProviderInstancePropertiesArgs.builder()
///                 .prometheusUrl("http://192.168.0.0:9090/metrics")
///                 .providerType("PrometheusOS")
///                 .sapSid("SID")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         prometheusUrl: "http://192.168.0.0:9090/metrics",
///         providerType: "PrometheusOS",
///         sapSid: "SID",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "prometheus_url": "http://192.168.0.0:9090/metrics",
///         "provider_type": "PrometheusOS",
///         "sap_sid": "SID",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         prometheusUrl: http://192.168.0.0:9090/metrics
///         providerType: PrometheusOS
///         sapSid: SID
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a OS provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.PrometheusOsProviderInstancePropertiesArgs
///         {
///             PrometheusUrl = "http://192.168.0.0:9090/metrics",
///             ProviderType = "PrometheusOS",
///             SapSid = "SID",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.PrometheusOsProviderInstancePropertiesArgs{
/// 				PrometheusUrl: pulumi.String("http://192.168.0.0:9090/metrics"),
/// 				ProviderType:  pulumi.String("PrometheusOS"),
/// 				SapSid:        pulumi.String("SID"),
/// 				SslPreference: pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "prometheusUrl" = "http://192.168.0.0:9090/metrics"
///     "providerType"  = "PrometheusOS"
///     "sapSid"        = "SID"
///     "sslPreference" = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(PrometheusOsProviderInstancePropertiesArgs.builder()
///                 .prometheusUrl("http://192.168.0.0:9090/metrics")
///                 .providerType("PrometheusOS")
///                 .sapSid("SID")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         prometheusUrl: "http://192.168.0.0:9090/metrics",
///         providerType: "PrometheusOS",
///         sapSid: "SID",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "prometheus_url": "http://192.168.0.0:9090/metrics",
///         "provider_type": "PrometheusOS",
///         "sap_sid": "SID",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         prometheusUrl: http://192.168.0.0:9090/metrics
///         providerType: PrometheusOS
///         sapSid: SID
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Oracle provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.OracleProviderInstancePropertiesArgs
///         {
///             DbName = "dbName",
///             DbPassword = "password",
///             DbPasswordUri = "",
///             DbPort = "dbPort",
///             DbUsername = "username",
///             Hostname = "hostname",
///             ProviderType = "Oracle",
///             SapSid = "SID",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.OracleProviderInstancePropertiesArgs{
/// 				DbName:            pulumi.String("dbName"),
/// 				DbPassword:        pulumi.String("password"),
/// 				DbPasswordUri:     pulumi.String(""),
/// 				DbPort:            pulumi.String("dbPort"),
/// 				DbUsername:        pulumi.String("username"),
/// 				Hostname:          pulumi.String("hostname"),
/// 				ProviderType:      pulumi.String("Oracle"),
/// 				SapSid:            pulumi.String("SID"),
/// 				SslCertificateUri: pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslPreference:     pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbName"            = "dbName"
///     "dbPassword"        = "password"
///     "dbPasswordUri"     = ""
///     "dbPort"            = "dbPort"
///     "dbUsername"        = "username"
///     "hostname"          = "hostname"
///     "providerType"      = "Oracle"
///     "sapSid"            = "SID"
///     "sslCertificateUri" = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslPreference"     = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(OracleProviderInstancePropertiesArgs.builder()
///                 .dbName("dbName")
///                 .dbPassword("password")
///                 .dbPasswordUri("")
///                 .dbPort("dbPort")
///                 .dbUsername("username")
///                 .hostname("hostname")
///                 .providerType("Oracle")
///                 .sapSid("SID")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbName: "dbName",
///         dbPassword: "password",
///         dbPasswordUri: "",
///         dbPort: "dbPort",
///         dbUsername: "username",
///         hostname: "hostname",
///         providerType: "Oracle",
///         sapSid: "SID",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_name": "dbName",
///         "db_password": "password",
///         "db_password_uri": "",
///         "db_port": "dbPort",
///         "db_username": "username",
///         "hostname": "hostname",
///         "provider_type": "Oracle",
///         "sap_sid": "SID",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbName: dbName
///         dbPassword: password
///         dbPasswordUri: ""
///         dbPort: dbPort
///         dbUsername: username
///         hostname: hostname
///         providerType: Oracle
///         sapSid: SID
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a PrometheusHaCluster provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.PrometheusHaClusterProviderInstancePropertiesArgs
///         {
///             ClusterName = "clusterName",
///             Hostname = "hostname",
///             PrometheusUrl = "http://192.168.0.0:9090/metrics",
///             ProviderType = "PrometheusHaCluster",
///             Sid = "sid",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.PrometheusHaClusterProviderInstancePropertiesArgs{
/// 				ClusterName:       pulumi.String("clusterName"),
/// 				Hostname:          pulumi.String("hostname"),
/// 				PrometheusUrl:     pulumi.String("http://192.168.0.0:9090/metrics"),
/// 				ProviderType:      pulumi.String("PrometheusHaCluster"),
/// 				Sid:               pulumi.String("sid"),
/// 				SslCertificateUri: pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslPreference:     pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "clusterName"       = "clusterName"
///     "hostname"          = "hostname"
///     "prometheusUrl"     = "http://192.168.0.0:9090/metrics"
///     "providerType"      = "PrometheusHaCluster"
///     "sid"               = "sid"
///     "sslCertificateUri" = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslPreference"     = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(PrometheusHaClusterProviderInstancePropertiesArgs.builder()
///                 .clusterName("clusterName")
///                 .hostname("hostname")
///                 .prometheusUrl("http://192.168.0.0:9090/metrics")
///                 .providerType("PrometheusHaCluster")
///                 .sid("sid")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         clusterName: "clusterName",
///         hostname: "hostname",
///         prometheusUrl: "http://192.168.0.0:9090/metrics",
///         providerType: "PrometheusHaCluster",
///         sid: "sid",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "cluster_name": "clusterName",
///         "hostname": "hostname",
///         "prometheus_url": "http://192.168.0.0:9090/metrics",
///         "provider_type": "PrometheusHaCluster",
///         "sid": "sid",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         clusterName: clusterName
///         hostname: hostname
///         prometheusUrl: http://192.168.0.0:9090/metrics
///         providerType: PrometheusHaCluster
///         sid: sid
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a PrometheusHaCluster provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.PrometheusHaClusterProviderInstancePropertiesArgs
///         {
///             ClusterName = "clusterName",
///             Hostname = "hostname",
///             PrometheusUrl = "http://192.168.0.0:9090/metrics",
///             ProviderType = "PrometheusHaCluster",
///             Sid = "sid",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.PrometheusHaClusterProviderInstancePropertiesArgs{
/// 				ClusterName:   pulumi.String("clusterName"),
/// 				Hostname:      pulumi.String("hostname"),
/// 				PrometheusUrl: pulumi.String("http://192.168.0.0:9090/metrics"),
/// 				ProviderType:  pulumi.String("PrometheusHaCluster"),
/// 				Sid:           pulumi.String("sid"),
/// 				SslPreference: pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "clusterName"   = "clusterName"
///     "hostname"      = "hostname"
///     "prometheusUrl" = "http://192.168.0.0:9090/metrics"
///     "providerType"  = "PrometheusHaCluster"
///     "sid"           = "sid"
///     "sslPreference" = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(PrometheusHaClusterProviderInstancePropertiesArgs.builder()
///                 .clusterName("clusterName")
///                 .hostname("hostname")
///                 .prometheusUrl("http://192.168.0.0:9090/metrics")
///                 .providerType("PrometheusHaCluster")
///                 .sid("sid")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         clusterName: "clusterName",
///         hostname: "hostname",
///         prometheusUrl: "http://192.168.0.0:9090/metrics",
///         providerType: "PrometheusHaCluster",
///         sid: "sid",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "cluster_name": "clusterName",
///         "hostname": "hostname",
///         "prometheus_url": "http://192.168.0.0:9090/metrics",
///         "provider_type": "PrometheusHaCluster",
///         "sid": "sid",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         clusterName: clusterName
///         hostname: hostname
///         prometheusUrl: http://192.168.0.0:9090/metrics
///         providerType: PrometheusHaCluster
///         sid: sid
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SAP monitor Hana provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.HanaDbProviderInstancePropertiesArgs
///         {
///             DbName = "db",
///             DbPassword = "****",
///             DbPasswordUri = "",
///             DbUsername = "user",
///             Hostname = "name",
///             InstanceNumber = "00",
///             ProviderType = "SapHana",
///             SapSid = "SID",
///             SqlPort = "0000",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslHostNameInCertificate = "xyz.domain.com",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.HanaDbProviderInstancePropertiesArgs{
/// 				DbName:                   pulumi.String("db"),
/// 				DbPassword:               pulumi.String("****"),
/// 				DbPasswordUri:            pulumi.String(""),
/// 				DbUsername:               pulumi.String("user"),
/// 				Hostname:                 pulumi.String("name"),
/// 				InstanceNumber:           pulumi.String("00"),
/// 				ProviderType:             pulumi.String("SapHana"),
/// 				SapSid:                   pulumi.String("SID"),
/// 				SqlPort:                  pulumi.String("0000"),
/// 				SslCertificateUri:        pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslHostNameInCertificate: pulumi.String("xyz.domain.com"),
/// 				SslPreference:            pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbName"                   = "db"
///     "dbPassword"               = "****"
///     "dbPasswordUri"            = ""
///     "dbUsername"               = "user"
///     "hostname"                 = "name"
///     "instanceNumber"           = "00"
///     "providerType"             = "SapHana"
///     "sapSid"                   = "SID"
///     "sqlPort"                  = "0000"
///     "sslCertificateUri"        = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslHostNameInCertificate" = "xyz.domain.com"
///     "sslPreference"            = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(HanaDbProviderInstancePropertiesArgs.builder()
///                 .dbName("db")
///                 .dbPassword("****")
///                 .dbPasswordUri("")
///                 .dbUsername("user")
///                 .hostname("name")
///                 .instanceNumber("00")
///                 .providerType("SapHana")
///                 .sapSid("SID")
///                 .sqlPort("0000")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslHostNameInCertificate("xyz.domain.com")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbName: "db",
///         dbPassword: "****",
///         dbPasswordUri: "",
///         dbUsername: "user",
///         hostname: "name",
///         instanceNumber: "00",
///         providerType: "SapHana",
///         sapSid: "SID",
///         sqlPort: "0000",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslHostNameInCertificate: "xyz.domain.com",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_name": "db",
///         "db_password": "****",
///         "db_password_uri": "",
///         "db_username": "user",
///         "hostname": "name",
///         "instance_number": "00",
///         "provider_type": "SapHana",
///         "sap_sid": "SID",
///         "sql_port": "0000",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_host_name_in_certificate": "xyz.domain.com",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbName: db
///         dbPassword: '****'
///         dbPasswordUri: ""
///         dbUsername: user
///         hostname: name
///         instanceNumber: '00'
///         providerType: SapHana
///         sapSid: SID
///         sqlPort: '0000'
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslHostNameInCertificate: xyz.domain.com
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SAP monitor Hana provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.HanaDbProviderInstancePropertiesArgs
///         {
///             DbName = "db",
///             DbPassword = "****",
///             DbPasswordUri = "",
///             DbUsername = "user",
///             Hostname = "name",
///             InstanceNumber = "00",
///             ProviderType = "SapHana",
///             SapSid = "SID",
///             SqlPort = "0000",
///             SslHostNameInCertificate = "xyz.domain.com",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.HanaDbProviderInstancePropertiesArgs{
/// 				DbName:                   pulumi.String("db"),
/// 				DbPassword:               pulumi.String("****"),
/// 				DbPasswordUri:            pulumi.String(""),
/// 				DbUsername:               pulumi.String("user"),
/// 				Hostname:                 pulumi.String("name"),
/// 				InstanceNumber:           pulumi.String("00"),
/// 				ProviderType:             pulumi.String("SapHana"),
/// 				SapSid:                   pulumi.String("SID"),
/// 				SqlPort:                  pulumi.String("0000"),
/// 				SslHostNameInCertificate: pulumi.String("xyz.domain.com"),
/// 				SslPreference:            pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbName"                   = "db"
///     "dbPassword"               = "****"
///     "dbPasswordUri"            = ""
///     "dbUsername"               = "user"
///     "hostname"                 = "name"
///     "instanceNumber"           = "00"
///     "providerType"             = "SapHana"
///     "sapSid"                   = "SID"
///     "sqlPort"                  = "0000"
///     "sslHostNameInCertificate" = "xyz.domain.com"
///     "sslPreference"            = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(HanaDbProviderInstancePropertiesArgs.builder()
///                 .dbName("db")
///                 .dbPassword("****")
///                 .dbPasswordUri("")
///                 .dbUsername("user")
///                 .hostname("name")
///                 .instanceNumber("00")
///                 .providerType("SapHana")
///                 .sapSid("SID")
///                 .sqlPort("0000")
///                 .sslHostNameInCertificate("xyz.domain.com")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbName: "db",
///         dbPassword: "****",
///         dbPasswordUri: "",
///         dbUsername: "user",
///         hostname: "name",
///         instanceNumber: "00",
///         providerType: "SapHana",
///         sapSid: "SID",
///         sqlPort: "0000",
///         sslHostNameInCertificate: "xyz.domain.com",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_name": "db",
///         "db_password": "****",
///         "db_password_uri": "",
///         "db_username": "user",
///         "hostname": "name",
///         "instance_number": "00",
///         "provider_type": "SapHana",
///         "sap_sid": "SID",
///         "sql_port": "0000",
///         "ssl_host_name_in_certificate": "xyz.domain.com",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbName: db
///         dbPassword: '****'
///         dbPasswordUri: ""
///         dbUsername: user
///         hostname: name
///         instanceNumber: '00'
///         providerType: SapHana
///         sapSid: SID
///         sqlPort: '0000'
///         sslHostNameInCertificate: xyz.domain.com
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SAP monitor NetWeaver provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.SapNetWeaverProviderInstancePropertiesArgs
///         {
///             ProviderType = "SapNetWeaver",
///             SapClientId = "111",
///             SapHostFileEntries = new[]
///             {
///                 "127.0.0.1 name fqdn",
///             },
///             SapHostname = "name",
///             SapInstanceNr = "00",
///             SapPassword = "****",
///             SapPasswordUri = "",
///             SapPortNumber = "1234",
///             SapSid = "SID",
///             SapUsername = "username",
///             SslCertificateUri = "https://storageaccount.blob.core.windows.net/containername/filename",
///             SslPreference = AzureNative.Workloads.SslPreference.ServerCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.SapNetWeaverProviderInstancePropertiesArgs{
/// 				ProviderType: pulumi.String("SapNetWeaver"),
/// 				SapClientId:  pulumi.String("111"),
/// 				SapHostFileEntries: pulumi.StringArray{
/// 					pulumi.String("127.0.0.1 name fqdn"),
/// 				},
/// 				SapHostname:       pulumi.String("name"),
/// 				SapInstanceNr:     pulumi.String("00"),
/// 				SapPassword:       pulumi.String("****"),
/// 				SapPasswordUri:    pulumi.String(""),
/// 				SapPortNumber:     pulumi.String("1234"),
/// 				SapSid:            pulumi.String("SID"),
/// 				SapUsername:       pulumi.String("username"),
/// 				SslCertificateUri: pulumi.String("https://storageaccount.blob.core.windows.net/containername/filename"),
/// 				SslPreference:     pulumi.String(workloads.SslPreferenceServerCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "providerType"       = "SapNetWeaver"
///     "sapClientId"        = "111"
///     "sapHostFileEntries" = ["127.0.0.1 name fqdn"]
///     "sapHostname"        = "name"
///     "sapInstanceNr"      = "00"
///     "sapPassword"        = "****"
///     "sapPasswordUri"     = ""
///     "sapPortNumber"      = "1234"
///     "sapSid"             = "SID"
///     "sapUsername"        = "username"
///     "sslCertificateUri"  = "https://storageaccount.blob.core.windows.net/containername/filename"
///     "sslPreference"      = "ServerCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(SapNetWeaverProviderInstancePropertiesArgs.builder()
///                 .providerType("SapNetWeaver")
///                 .sapClientId("111")
///                 .sapHostFileEntries("127.0.0.1 name fqdn")
///                 .sapHostname("name")
///                 .sapInstanceNr("00")
///                 .sapPassword("****")
///                 .sapPasswordUri("")
///                 .sapPortNumber("1234")
///                 .sapSid("SID")
///                 .sapUsername("username")
///                 .sslCertificateUri("https://storageaccount.blob.core.windows.net/containername/filename")
///                 .sslPreference("ServerCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         providerType: "SapNetWeaver",
///         sapClientId: "111",
///         sapHostFileEntries: ["127.0.0.1 name fqdn"],
///         sapHostname: "name",
///         sapInstanceNr: "00",
///         sapPassword: "****",
///         sapPasswordUri: "",
///         sapPortNumber: "1234",
///         sapSid: "SID",
///         sapUsername: "username",
///         sslCertificateUri: "https://storageaccount.blob.core.windows.net/containername/filename",
///         sslPreference: azure_native.workloads.SslPreference.ServerCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "provider_type": "SapNetWeaver",
///         "sap_client_id": "111",
///         "sap_host_file_entries": ["127.0.0.1 name fqdn"],
///         "sap_hostname": "name",
///         "sap_instance_nr": "00",
///         "sap_password": "****",
///         "sap_password_uri": "",
///         "sap_port_number": "1234",
///         "sap_sid": "SID",
///         "sap_username": "username",
///         "ssl_certificate_uri": "https://storageaccount.blob.core.windows.net/containername/filename",
///         "ssl_preference": azure_native.workloads.SslPreference.SERVER_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         providerType: SapNetWeaver
///         sapClientId: '111'
///         sapHostFileEntries:
///           - 127.0.0.1 name fqdn
///         sapHostname: name
///         sapInstanceNr: '00'
///         sapPassword: '****'
///         sapPasswordUri: ""
///         sapPortNumber: '1234'
///         sapSid: SID
///         sapUsername: username
///         sslCertificateUri: https://storageaccount.blob.core.windows.net/containername/filename
///         sslPreference: ServerCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SAP monitor NetWeaver provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.SapNetWeaverProviderInstancePropertiesArgs
///         {
///             ProviderType = "SapNetWeaver",
///             SapClientId = "111",
///             SapHostFileEntries = new[]
///             {
///                 "127.0.0.1 name fqdn",
///             },
///             SapHostname = "name",
///             SapInstanceNr = "00",
///             SapPassword = "****",
///             SapPasswordUri = "",
///             SapPortNumber = "1234",
///             SapSid = "SID",
///             SapUsername = "username",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.SapNetWeaverProviderInstancePropertiesArgs{
/// 				ProviderType: pulumi.String("SapNetWeaver"),
/// 				SapClientId:  pulumi.String("111"),
/// 				SapHostFileEntries: pulumi.StringArray{
/// 					pulumi.String("127.0.0.1 name fqdn"),
/// 				},
/// 				SapHostname:    pulumi.String("name"),
/// 				SapInstanceNr:  pulumi.String("00"),
/// 				SapPassword:    pulumi.String("****"),
/// 				SapPasswordUri: pulumi.String(""),
/// 				SapPortNumber:  pulumi.String("1234"),
/// 				SapSid:         pulumi.String("SID"),
/// 				SapUsername:    pulumi.String("username"),
/// 				SslPreference:  pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "providerType"       = "SapNetWeaver"
///     "sapClientId"        = "111"
///     "sapHostFileEntries" = ["127.0.0.1 name fqdn"]
///     "sapHostname"        = "name"
///     "sapInstanceNr"      = "00"
///     "sapPassword"        = "****"
///     "sapPasswordUri"     = ""
///     "sapPortNumber"      = "1234"
///     "sapSid"             = "SID"
///     "sapUsername"        = "username"
///     "sslPreference"      = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(SapNetWeaverProviderInstancePropertiesArgs.builder()
///                 .providerType("SapNetWeaver")
///                 .sapClientId("111")
///                 .sapHostFileEntries("127.0.0.1 name fqdn")
///                 .sapHostname("name")
///                 .sapInstanceNr("00")
///                 .sapPassword("****")
///                 .sapPasswordUri("")
///                 .sapPortNumber("1234")
///                 .sapSid("SID")
///                 .sapUsername("username")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         providerType: "SapNetWeaver",
///         sapClientId: "111",
///         sapHostFileEntries: ["127.0.0.1 name fqdn"],
///         sapHostname: "name",
///         sapInstanceNr: "00",
///         sapPassword: "****",
///         sapPasswordUri: "",
///         sapPortNumber: "1234",
///         sapSid: "SID",
///         sapUsername: "username",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "provider_type": "SapNetWeaver",
///         "sap_client_id": "111",
///         "sap_host_file_entries": ["127.0.0.1 name fqdn"],
///         "sap_hostname": "name",
///         "sap_instance_nr": "00",
///         "sap_password": "****",
///         "sap_password_uri": "",
///         "sap_port_number": "1234",
///         "sap_sid": "SID",
///         "sap_username": "username",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         providerType: SapNetWeaver
///         sapClientId: '111'
///         sapHostFileEntries:
///           - 127.0.0.1 name fqdn
///         sapHostname: name
///         sapInstanceNr: '00'
///         sapPassword: '****'
///         sapPasswordUri: ""
///         sapPortNumber: '1234'
///         sapSid: SID
///         sapUsername: username
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SAP monitor Oracle provider with Root Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var providerInstance = new AzureNative.Workloads.ProviderInstance("providerInstance", new()
///     {
///         MonitorName = "mySapMonitor",
///         ProviderInstanceName = "myProviderInstance",
///         ProviderSettings = new AzureNative.Workloads.Inputs.OracleProviderInstancePropertiesArgs
///         {
///             DbName = "dbName",
///             DbPassword = "password",
///             DbPasswordUri = "",
///             DbPort = "dbPort",
///             DbUsername = "username",
///             Hostname = "hostname",
///             ProviderType = "Oracle",
///             SapSid = "SID",
///             SslPreference = AzureNative.Workloads.SslPreference.RootCertificate,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewProviderInstance(ctx, "providerInstance", &workloads.ProviderInstanceArgs{
/// 			MonitorName:          pulumi.String("mySapMonitor"),
/// 			ProviderInstanceName: pulumi.String("myProviderInstance"),
/// 			ProviderSettings: &workloads.OracleProviderInstancePropertiesArgs{
/// 				DbName:        pulumi.String("dbName"),
/// 				DbPassword:    pulumi.String("password"),
/// 				DbPasswordUri: pulumi.String(""),
/// 				DbPort:        pulumi.String("dbPort"),
/// 				DbUsername:    pulumi.String("username"),
/// 				Hostname:      pulumi.String("hostname"),
/// 				ProviderType:  pulumi.String("Oracle"),
/// 				SapSid:        pulumi.String("SID"),
/// 				SslPreference: pulumi.String(workloads.SslPreferenceRootCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_workloads_providerinstance" "providerInstance" {
///   monitor_name           = "mySapMonitor"
///   provider_instance_name = "myProviderInstance"
///   provider_settings = {
///     "dbName"        = "dbName"
///     "dbPassword"    = "password"
///     "dbPasswordUri" = ""
///     "dbPort"        = "dbPort"
///     "dbUsername"    = "username"
///     "hostname"      = "hostname"
///     "providerType"  = "Oracle"
///     "sapSid"        = "SID"
///     "sslPreference" = "RootCertificate"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.workloads.ProviderInstance;
/// import com.pulumi.azurenative.workloads.ProviderInstanceArgs;
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
///         var providerInstance = new ProviderInstance("providerInstance", ProviderInstanceArgs.builder()
///             .monitorName("mySapMonitor")
///             .providerInstanceName("myProviderInstance")
///             .providerSettings(OracleProviderInstancePropertiesArgs.builder()
///                 .dbName("dbName")
///                 .dbPassword("password")
///                 .dbPasswordUri("")
///                 .dbPort("dbPort")
///                 .dbUsername("username")
///                 .hostname("hostname")
///                 .providerType("Oracle")
///                 .sapSid("SID")
///                 .sslPreference("RootCertificate")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const providerInstance = new azure_native.workloads.ProviderInstance("providerInstance", {
///     monitorName: "mySapMonitor",
///     providerInstanceName: "myProviderInstance",
///     providerSettings: {
///         dbName: "dbName",
///         dbPassword: "password",
///         dbPasswordUri: "",
///         dbPort: "dbPort",
///         dbUsername: "username",
///         hostname: "hostname",
///         providerType: "Oracle",
///         sapSid: "SID",
///         sslPreference: azure_native.workloads.SslPreference.RootCertificate,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provider_instance = azure_native.workloads.ProviderInstance("providerInstance",
///     monitor_name="mySapMonitor",
///     provider_instance_name="myProviderInstance",
///     provider_settings={
///         "db_name": "dbName",
///         "db_password": "password",
///         "db_password_uri": "",
///         "db_port": "dbPort",
///         "db_username": "username",
///         "hostname": "hostname",
///         "provider_type": "Oracle",
///         "sap_sid": "SID",
///         "ssl_preference": azure_native.workloads.SslPreference.ROOT_CERTIFICATE,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   providerInstance:
///     type: azure-native:workloads:ProviderInstance
///     properties:
///       monitorName: mySapMonitor
///       providerInstanceName: myProviderInstance
///       providerSettings:
///         dbName: dbName
///         dbPassword: password
///         dbPasswordUri: ""
///         dbPort: dbPort
///         dbUsername: username
///         hostname: hostname
///         providerType: Oracle
///         sapSid: SID
///         sslPreference: RootCertificate
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:workloads:ProviderInstance myProviderInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/monitors/{monitorName}/providerInstances/{providerInstanceName}
/// ```
class ProviderInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Defines the provider instance errors.
  late final pulumi.Output<ErrorDetailResponse> errors;
  /// Resource health details
  late final pulumi.Output<HealthResponse> health;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the provider specific properties.
  late final pulumi.Output<dynamic> providerSettings;
  /// State of provisioning of the provider instance
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProviderInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderInstance]. {@macro pulumi_workloads_provider_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderInstance(
    String name, {
    ProviderInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:ProviderInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errors = registerOutput<ErrorDetailResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<HealthResponse>('health', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    providerSettings = registerOutput<dynamic>('providerSettings');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ProviderInstance] resource.
  ProviderInstance.reference(String urn)
    : super(
        'azure-native:workloads:ProviderInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errors = registerOutput<ErrorDetailResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<HealthResponse>('health', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    providerSettings = registerOutput<dynamic>('providerSettings');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
