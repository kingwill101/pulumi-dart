import 'package:pulumi/pulumi.dart' as pulumi;
import 'cname_record_response.dart';
import 'private_record_set_args.dart';
import 'soa_record_response.dart';
import 'system_data_response.dart';

/// Describes a DNS record set (a collection of DNS records with the same name and type) in a Private DNS zone.
///
/// Uses Azure REST API version 2024-06-01.
///
/// Other available API versions: 2018-09-01, 2020-01-01, 2020-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native privatedns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PUT Private DNS Zone A Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         ARecords = new[]
///         {
///             new AzureNative.PrivateDns.Inputs.ARecordArgs
///             {
///                 Ipv4Address = "1.2.3.4",
///             },
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "A",
///         RelativeRecordSetName = "recordA",
///         ResourceGroupName = "resourceGroup1",
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			ARecords: privatedns.ARecordArray{
/// 				&privatedns.ARecordArgs{
/// 					Ipv4Address: pulumi.String("1.2.3.4"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("A"),
/// 			RelativeRecordSetName: pulumi.String("recordA"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			Ttl:                   pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.ARecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .aRecords(ARecordArgs.builder()
///                 .ipv4Address("1.2.3.4")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("privatezone1.com")
///             .recordType("A")
///             .relativeRecordSetName("recordA")
///             .resourceGroupName("resourceGroup1")
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     aRecords: [{
///         ipv4Address: "1.2.3.4",
///     }],
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "privatezone1.com",
///     recordType: "A",
///     relativeRecordSetName: "recordA",
///     resourceGroupName: "resourceGroup1",
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     a_records=[{
///         "ipv4_address": "1.2.3.4",
///     }],
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="privatezone1.com",
///     record_type="A",
///     relative_record_set_name="recordA",
///     resource_group_name="resourceGroup1",
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       aRecords:
///         - ipv4Address: 1.2.3.4
///       metadata:
///         key1: value1
///       privateZoneName: privatezone1.com
///       recordType: A
///       relativeRecordSetName: recordA
///       resourceGroupName: resourceGroup1
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone AAAA Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         AaaaRecords = new[]
///         {
///             new AzureNative.PrivateDns.Inputs.AaaaRecordArgs
///             {
///                 Ipv6Address = "::1",
///             },
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "AAAA",
///         RelativeRecordSetName = "recordAAAA",
///         ResourceGroupName = "resourceGroup1",
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			AaaaRecords: privatedns.AaaaRecordArray{
/// 				&privatedns.AaaaRecordArgs{
/// 					Ipv6Address: pulumi.String("::1"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("AAAA"),
/// 			RelativeRecordSetName: pulumi.String("recordAAAA"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			Ttl:                   pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.AaaaRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .aaaaRecords(AaaaRecordArgs.builder()
///                 .ipv6Address("::1")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("privatezone1.com")
///             .recordType("AAAA")
///             .relativeRecordSetName("recordAAAA")
///             .resourceGroupName("resourceGroup1")
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     aaaaRecords: [{
///         ipv6Address: "::1",
///     }],
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "privatezone1.com",
///     recordType: "AAAA",
///     relativeRecordSetName: "recordAAAA",
///     resourceGroupName: "resourceGroup1",
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     aaaa_records=[{
///         "ipv6_address": "::1",
///     }],
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="privatezone1.com",
///     record_type="AAAA",
///     relative_record_set_name="recordAAAA",
///     resource_group_name="resourceGroup1",
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       aaaaRecords:
///         - ipv6Address: ::1
///       metadata:
///         key1: value1
///       privateZoneName: privatezone1.com
///       recordType: AAAA
///       relativeRecordSetName: recordAAAA
///       resourceGroupName: resourceGroup1
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone CNAME Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         CnameRecord = new AzureNative.PrivateDns.Inputs.CnameRecordArgs
///         {
///             Cname = "contoso.com",
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "CNAME",
///         RelativeRecordSetName = "recordCNAME",
///         ResourceGroupName = "resourceGroup1",
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			CnameRecord: &privatedns.CnameRecordArgs{
/// 				Cname: pulumi.String("contoso.com"),
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("CNAME"),
/// 			RelativeRecordSetName: pulumi.String("recordCNAME"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			Ttl:                   pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.CnameRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .cnameRecord(CnameRecordArgs.builder()
///                 .cname("contoso.com")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("privatezone1.com")
///             .recordType("CNAME")
///             .relativeRecordSetName("recordCNAME")
///             .resourceGroupName("resourceGroup1")
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     cnameRecord: {
///         cname: "contoso.com",
///     },
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "privatezone1.com",
///     recordType: "CNAME",
///     relativeRecordSetName: "recordCNAME",
///     resourceGroupName: "resourceGroup1",
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     cname_record={
///         "cname": "contoso.com",
///     },
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="privatezone1.com",
///     record_type="CNAME",
///     relative_record_set_name="recordCNAME",
///     resource_group_name="resourceGroup1",
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       cnameRecord:
///         cname: contoso.com
///       metadata:
///         key1: value1
///       privateZoneName: privatezone1.com
///       recordType: CNAME
///       relativeRecordSetName: recordCNAME
///       resourceGroupName: resourceGroup1
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone MX Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         MxRecords = new[]
///         {
///             new AzureNative.PrivateDns.Inputs.MxRecordArgs
///             {
///                 Exchange = "mail.privatezone1.com",
///                 Preference = 0,
///             },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "MX",
///         RelativeRecordSetName = "recordMX",
///         ResourceGroupName = "resourceGroup1",
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			MxRecords: privatedns.MxRecordArray{
/// 				&privatedns.MxRecordArgs{
/// 					Exchange:   pulumi.String("mail.privatezone1.com"),
/// 					Preference: pulumi.Int(0),
/// 				},
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("MX"),
/// 			RelativeRecordSetName: pulumi.String("recordMX"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			Ttl:                   pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.MxRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .mxRecords(MxRecordArgs.builder()
///                 .exchange("mail.privatezone1.com")
///                 .preference(0)
///                 .build())
///             .privateZoneName("privatezone1.com")
///             .recordType("MX")
///             .relativeRecordSetName("recordMX")
///             .resourceGroupName("resourceGroup1")
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     mxRecords: [{
///         exchange: "mail.privatezone1.com",
///         preference: 0,
///     }],
///     privateZoneName: "privatezone1.com",
///     recordType: "MX",
///     relativeRecordSetName: "recordMX",
///     resourceGroupName: "resourceGroup1",
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     metadata={
///         "key1": "value1",
///     },
///     mx_records=[{
///         "exchange": "mail.privatezone1.com",
///         "preference": 0,
///     }],
///     private_zone_name="privatezone1.com",
///     record_type="MX",
///     relative_record_set_name="recordMX",
///     resource_group_name="resourceGroup1",
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       metadata:
///         key1: value1
///       mxRecords:
///         - exchange: mail.privatezone1.com
///           preference: 0
///       privateZoneName: privatezone1.com
///       recordType: MX
///       relativeRecordSetName: recordMX
///       resourceGroupName: resourceGroup1
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone PTR Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "0.0.127.in-addr.arpa",
///         PtrRecords = new[]
///         {
///             new AzureNative.PrivateDns.Inputs.PtrRecordArgs
///             {
///                 Ptrdname = "localhost",
///             },
///         },
///         RecordType = "PTR",
///         RelativeRecordSetName = "1",
///         ResourceGroupName = "resourceGroup1",
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName: pulumi.String("0.0.127.in-addr.arpa"),
/// 			PtrRecords: privatedns.PtrRecordArray{
/// 				&privatedns.PtrRecordArgs{
/// 					Ptrdname: pulumi.String("localhost"),
/// 				},
/// 			},
/// 			RecordType:            pulumi.String("PTR"),
/// 			RelativeRecordSetName: pulumi.String("1"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			Ttl:                   pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.PtrRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("0.0.127.in-addr.arpa")
///             .ptrRecords(PtrRecordArgs.builder()
///                 .ptrdname("localhost")
///                 .build())
///             .recordType("PTR")
///             .relativeRecordSetName("1")
///             .resourceGroupName("resourceGroup1")
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "0.0.127.in-addr.arpa",
///     ptrRecords: [{
///         ptrdname: "localhost",
///     }],
///     recordType: "PTR",
///     relativeRecordSetName: "1",
///     resourceGroupName: "resourceGroup1",
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="0.0.127.in-addr.arpa",
///     ptr_records=[{
///         "ptrdname": "localhost",
///     }],
///     record_type="PTR",
///     relative_record_set_name="1",
///     resource_group_name="resourceGroup1",
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       metadata:
///         key1: value1
///       privateZoneName: 0.0.127.in-addr.arpa
///       ptrRecords:
///         - ptrdname: localhost
///       recordType: PTR
///       relativeRecordSetName: '1'
///       resourceGroupName: resourceGroup1
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone SOA Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "SOA",
///         RelativeRecordSetName = "@",
///         ResourceGroupName = "resourceGroup1",
///         SoaRecord = new AzureNative.PrivateDns.Inputs.SoaRecordArgs
///         {
///             Email = "azureprivatedns-hostmaster.microsoft.com",
///             ExpireTime = 2419200,
///             Host = "azureprivatedns.net",
///             MinimumTtl = 300,
///             RefreshTime = 3600,
///             RetryTime = 300,
///             SerialNumber = 1,
///         },
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("SOA"),
/// 			RelativeRecordSetName: pulumi.String("@"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			SoaRecord: &privatedns.SoaRecordArgs{
/// 				Email:        pulumi.String("azureprivatedns-hostmaster.microsoft.com"),
/// 				ExpireTime:   pulumi.Float64(2419200),
/// 				Host:         pulumi.String("azureprivatedns.net"),
/// 				MinimumTtl:   pulumi.Float64(300),
/// 				RefreshTime:  pulumi.Float64(3600),
/// 				RetryTime:    pulumi.Float64(300),
/// 				SerialNumber: pulumi.Float64(1),
/// 			},
/// 			Ttl: pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.SoaRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("privatezone1.com")
///             .recordType("SOA")
///             .relativeRecordSetName("@")
///             .resourceGroupName("resourceGroup1")
///             .soaRecord(SoaRecordArgs.builder()
///                 .email("azureprivatedns-hostmaster.microsoft.com")
///                 .expireTime(2419200.0)
///                 .host("azureprivatedns.net")
///                 .minimumTtl(300.0)
///                 .refreshTime(3600.0)
///                 .retryTime(300.0)
///                 .serialNumber(1.0)
///                 .build())
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "privatezone1.com",
///     recordType: "SOA",
///     relativeRecordSetName: "@",
///     resourceGroupName: "resourceGroup1",
///     soaRecord: {
///         email: "azureprivatedns-hostmaster.microsoft.com",
///         expireTime: 2419200,
///         host: "azureprivatedns.net",
///         minimumTtl: 300,
///         refreshTime: 3600,
///         retryTime: 300,
///         serialNumber: 1,
///     },
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="privatezone1.com",
///     record_type="SOA",
///     relative_record_set_name="@",
///     resource_group_name="resourceGroup1",
///     soa_record={
///         "email": "azureprivatedns-hostmaster.microsoft.com",
///         "expire_time": 2419200,
///         "host": "azureprivatedns.net",
///         "minimum_ttl": 300,
///         "refresh_time": 3600,
///         "retry_time": 300,
///         "serial_number": 1,
///     },
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       metadata:
///         key1: value1
///       privateZoneName: privatezone1.com
///       recordType: SOA
///       relativeRecordSetName: '@'
///       resourceGroupName: resourceGroup1
///       soaRecord:
///         email: azureprivatedns-hostmaster.microsoft.com
///         expireTime: 2.4192e+06
///         host: azureprivatedns.net
///         minimumTtl: 300
///         refreshTime: 3600
///         retryTime: 300
///         serialNumber: 1
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone SRV Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "SRV",
///         RelativeRecordSetName = "recordSRV",
///         ResourceGroupName = "resourceGroup1",
///         SrvRecords = new[]
///         {
///             new AzureNative.PrivateDns.Inputs.SrvRecordArgs
///             {
///                 Port = 80,
///                 Priority = 0,
///                 Target = "contoso.com",
///                 Weight = 10,
///             },
///         },
///         Ttl = 3600,
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("SRV"),
/// 			RelativeRecordSetName: pulumi.String("recordSRV"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			SrvRecords: privatedns.SrvRecordArray{
/// 				&privatedns.SrvRecordArgs{
/// 					Port:     pulumi.Int(80),
/// 					Priority: pulumi.Int(0),
/// 					Target:   pulumi.String("contoso.com"),
/// 					Weight:   pulumi.Int(10),
/// 				},
/// 			},
/// 			Ttl: pulumi.Float64(3600),
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
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.SrvRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("privatezone1.com")
///             .recordType("SRV")
///             .relativeRecordSetName("recordSRV")
///             .resourceGroupName("resourceGroup1")
///             .srvRecords(SrvRecordArgs.builder()
///                 .port(80)
///                 .priority(0)
///                 .target("contoso.com")
///                 .weight(10)
///                 .build())
///             .ttl(3600.0)
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "privatezone1.com",
///     recordType: "SRV",
///     relativeRecordSetName: "recordSRV",
///     resourceGroupName: "resourceGroup1",
///     srvRecords: [{
///         port: 80,
///         priority: 0,
///         target: "contoso.com",
///         weight: 10,
///     }],
///     ttl: 3600,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="privatezone1.com",
///     record_type="SRV",
///     relative_record_set_name="recordSRV",
///     resource_group_name="resourceGroup1",
///     srv_records=[{
///         "port": 80,
///         "priority": 0,
///         "target": "contoso.com",
///         "weight": 10,
///     }],
///     ttl=3600)
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       metadata:
///         key1: value1
///       privateZoneName: privatezone1.com
///       recordType: SRV
///       relativeRecordSetName: recordSRV
///       resourceGroupName: resourceGroup1
///       srvRecords:
///         - port: 80
///           priority: 0
///           target: contoso.com
///           weight: 10
///       ttl: 3600
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PUT Private DNS Zone TXT Record Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateRecordSet = new AzureNative.PrivateDns.PrivateRecordSet("privateRecordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PrivateZoneName = "privatezone1.com",
///         RecordType = "TXT",
///         RelativeRecordSetName = "recordTXT",
///         ResourceGroupName = "resourceGroup1",
///         Ttl = 3600,
///         TxtRecords = new[]
///         {
///             new AzureNative.PrivateDns.Inputs.TxtRecordArgs
///             {
///                 Value = new[]
///                 {
///                     "string1",
///                     "string2",
///                 },
///             },
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPrivateRecordSet(ctx, "privateRecordSet", &privatedns.PrivateRecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PrivateZoneName:       pulumi.String("privatezone1.com"),
/// 			RecordType:            pulumi.String("TXT"),
/// 			RelativeRecordSetName: pulumi.String("recordTXT"),
/// 			ResourceGroupName:     pulumi.String("resourceGroup1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			TxtRecords: privatedns.TxtRecordArray{
/// 				&privatedns.TxtRecordArgs{
/// 					Value: pulumi.StringArray{
/// 						pulumi.String("string1"),
/// 						pulumi.String("string2"),
/// 					},
/// 				},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSet;
/// import com.pulumi.azurenative.privatedns.PrivateRecordSetArgs;
/// import com.pulumi.azurenative.privatedns.inputs.TxtRecordArgs;
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
///         var privateRecordSet = new PrivateRecordSet("privateRecordSet", PrivateRecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .privateZoneName("privatezone1.com")
///             .recordType("TXT")
///             .relativeRecordSetName("recordTXT")
///             .resourceGroupName("resourceGroup1")
///             .ttl(3600.0)
///             .txtRecords(TxtRecordArgs.builder()
///                 .value(
///                     "string1",
///                     "string2")
///                 .build())
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
/// const privateRecordSet = new azure_native.privatedns.PrivateRecordSet("privateRecordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     privateZoneName: "privatezone1.com",
///     recordType: "TXT",
///     relativeRecordSetName: "recordTXT",
///     resourceGroupName: "resourceGroup1",
///     ttl: 3600,
///     txtRecords: [{
///         value: [
///             "string1",
///             "string2",
///         ],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_record_set = azure_native.privatedns.PrivateRecordSet("privateRecordSet",
///     metadata={
///         "key1": "value1",
///     },
///     private_zone_name="privatezone1.com",
///     record_type="TXT",
///     relative_record_set_name="recordTXT",
///     resource_group_name="resourceGroup1",
///     ttl=3600,
///     txt_records=[{
///         "value": [
///             "string1",
///             "string2",
///         ],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   privateRecordSet:
///     type: azure-native:privatedns:PrivateRecordSet
///     properties:
///       metadata:
///         key1: value1
///       privateZoneName: privatezone1.com
///       recordType: TXT
///       relativeRecordSetName: recordTXT
///       resourceGroupName: resourceGroup1
///       ttl: 3600
///       txtRecords:
///         - value:
///             - string1
///             - string2
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
/// $ pulumi import azure-native:privatedns:PrivateRecordSet recordtxt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateDnsZones/{privateZoneName}/{recordType}/{relativeRecordSetName}
/// ```
class PrivateRecordSet extends pulumi.CustomResource {
  /// The list of A records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> aRecords;

  /// The list of AAAA records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> aaaaRecords;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The CNAME record in the record set.
  late final pulumi.Output<CnameRecordResponse?> cnameRecord;

  /// The ETag of the record set.
  late final pulumi.Output<String?> etag;

  /// Fully qualified domain name of the record set.
  late final pulumi.Output<String> fqdn;

  /// Is the record set auto-registered in the Private DNS zone through a virtual network link?
  late final pulumi.Output<bool> isAutoRegistered;

  /// The metadata attached to the record set.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// The list of MX records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> mxRecords;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The list of PTR records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> ptrRecords;

  /// The SOA record in the record set.
  late final pulumi.Output<SoaRecordResponse?> soaRecord;

  /// The list of SRV records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> srvRecords;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The TTL (time-to-live) of the records in the record set.
  late final pulumi.Output<double?> ttl;

  /// The list of TXT records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> txtRecords;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateRecordSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateRecordSet]. {@macro pulumi_privatedns_private_record_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateRecordSet(
    String name, {
    PrivateRecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:privatedns:PrivateRecordSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aRecords = registerOutput<List<Map<String, dynamic>>?>('aRecords');
    aaaaRecords = registerOutput<List<Map<String, dynamic>>?>('aaaaRecords');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cnameRecord = registerOutput<CnameRecordResponse?>(
      'cnameRecord',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CnameRecordResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String?>('etag');
    fqdn = registerOutput<String>('fqdn');
    isAutoRegistered = registerOutput<bool>('isAutoRegistered');
    metadata = registerOutput<Map<String, String>?>('metadata');
    mxRecords = registerOutput<List<Map<String, dynamic>>?>('mxRecords');
    this.name = registerOutput<String>('name');
    ptrRecords = registerOutput<List<Map<String, dynamic>>?>('ptrRecords');
    soaRecord = registerOutput<SoaRecordResponse?>(
      'soaRecord',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SoaRecordResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    srvRecords = registerOutput<List<Map<String, dynamic>>?>('srvRecords');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ttl = registerOutput<double?>('ttl');
    txtRecords = registerOutput<List<Map<String, dynamic>>?>('txtRecords');
    type = registerOutput<String>('type');
  }
}
