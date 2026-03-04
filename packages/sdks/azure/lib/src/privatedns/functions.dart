import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aaaarecord_args.dart';
import 'get_aaaarecord_result.dart';
import 'get_arecord_args.dart';
import 'get_arecord_result.dart';
import 'get_cname_record_args.dart';
import 'get_cname_record_result.dart';
import 'get_dns_zone_args.dart';
import 'get_dns_zone_result.dart';
import 'get_mx_record_args.dart';
import 'get_mx_record_result.dart';
import 'get_ptr_record_args.dart';
import 'get_ptr_record_result.dart';
import 'get_resolver_args.dart';
import 'get_resolver_dns_forwarding_ruleset_args.dart';
import 'get_resolver_dns_forwarding_ruleset_result.dart';
import 'get_resolver_forwarding_rule_args.dart';
import 'get_resolver_forwarding_rule_result.dart';
import 'get_resolver_inbound_endpoint_args.dart';
import 'get_resolver_inbound_endpoint_result.dart';
import 'get_resolver_outbound_endpoint_args.dart';
import 'get_resolver_outbound_endpoint_result.dart';
import 'get_resolver_result.dart';
import 'get_resolver_virtual_network_link_args.dart';
import 'get_resolver_virtual_network_link_result.dart';
import 'get_soa_record_args.dart';
import 'get_soa_record_result.dart';
import 'get_srv_record_args.dart';
import 'get_srv_record_result.dart';
import 'get_txt_record_args.dart';
import 'get_txt_record_result.dart';
import 'get_zone_virtual_network_link_args.dart';
import 'get_zone_virtual_network_link_result.dart';

/// Use this data source to access information about an existing Private DNS AAAA Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.privatedns.AAAARecord("example", {
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsAaaaRecordId = exampleAzurermPrivateDnsAaaaRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.AAAARecord("example",
///     name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsAaaaRecordId", example_azurerm_private_dns_aaaa_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.PrivateDns.AAAARecord("example", new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsAaaaRecordId"] = exampleAzurermPrivateDnsAaaaRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewAAAARecord(ctx, "example", &privatedns.AAAARecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          pulumi.String("test-zone"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsAaaaRecordId", exampleAzurermPrivateDnsAaaaRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.AAAARecord;
/// import com.pulumi.azure.privatedns.AAAARecordArgs;
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
///         var example = new AAAARecord("example", AAAARecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsAaaaRecordId", exampleAzurermPrivateDnsAaaaRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:privatedns:AAAARecord
///     properties:
///       name: test
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsAaaaRecordId: ${exampleAzurermPrivateDnsAaaaRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_aaaarecord_get_aaaarecord_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAAAARecordResult> getAAAARecord(
  GetAAAARecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getAAAARecord:getAAAARecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAAAARecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS A Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getARecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsARecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_a_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsARecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetARecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsARecordId"] = example.Apply(getARecordResult => getARecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatedns.LookupARecord(ctx, &privatedns.LookupARecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsARecordId", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetARecordArgs;
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
///         final var example = PrivatednsFunctions.getARecord(GetARecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsARecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getARecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   privateDnsARecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_arecord_get_arecord_args_doc}
/// [options] Invoke options controlling this call.
Future<GetARecordResult> getARecord(
  GetARecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getARecord:getARecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetARecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS CNAME Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.privatedns.CnameRecord("example", {
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsCnameRecordId = exampleAzurermPrivateDnsCnameRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.CnameRecord("example",
///     name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsCnameRecordId", example_azurerm_private_dns_cname_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.PrivateDns.CnameRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsCnameRecordId"] = exampleAzurermPrivateDnsCnameRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewCnameRecord(ctx, "example", &privatedns.CnameRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          pulumi.String("test-zone"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsCnameRecordId", exampleAzurermPrivateDnsCnameRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.CnameRecord;
/// import com.pulumi.azure.privatedns.CnameRecordArgs;
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
///         var example = new CnameRecord("example", CnameRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsCnameRecordId", exampleAzurermPrivateDnsCnameRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:privatedns:CnameRecord
///     properties:
///       name: test
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsCnameRecordId: ${exampleAzurermPrivateDnsCnameRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_cname_record_get_cname_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCnameRecordResult> getCnameRecord(
  GetCnameRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getCnameRecord:getCnameRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCnameRecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS Zone.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getDnsZone({
///     name: "contoso.internal",
///     resourceGroupName: "contoso-dns",
/// });
/// export const privateDnsZoneId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_dns_zone(name="contoso.internal",
///     resource_group_name="contoso-dns")
/// pulumi.export("privateDnsZoneId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetDnsZone.Invoke(new()
///     {
///         Name = "contoso.internal",
///         ResourceGroupName = "contoso-dns",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsZoneId"] = example.Apply(getDnsZoneResult => getDnsZoneResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatedns.GetDnsZone(ctx, &privatedns.GetDnsZoneArgs{
/// 			Name:              "contoso.internal",
/// 			ResourceGroupName: pulumi.StringRef("contoso-dns"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsZoneId", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetDnsZoneArgs;
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
///         final var example = PrivatednsFunctions.getDnsZone(GetDnsZoneArgs.builder()
///             .name("contoso.internal")
///             .resourceGroupName("contoso-dns")
///             .build());
///
///         ctx.export("privateDnsZoneId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getDnsZone
///       arguments:
///         name: contoso.internal
///         resourceGroupName: contoso-dns
/// outputs:
///   privateDnsZoneId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_dns_zone_get_dns_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsZoneResult> getDnsZone(
  GetDnsZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getDnsZone:getDnsZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsZoneResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS MX Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.privatedns.MxRecord("example", {
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsMxRecordId = exampleAzurermPrivateDnsMxRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.MxRecord("example",
///     name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsMxRecordId", example_azurerm_private_dns_mx_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.PrivateDns.MxRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsMxRecordId"] = exampleAzurermPrivateDnsMxRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewMxRecord(ctx, "example", &privatedns.MxRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          pulumi.String("test-zone"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsMxRecordId", exampleAzurermPrivateDnsMxRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.MxRecord;
/// import com.pulumi.azure.privatedns.MxRecordArgs;
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
///         var example = new MxRecord("example", MxRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsMxRecordId", exampleAzurermPrivateDnsMxRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:privatedns:MxRecord
///     properties:
///       name: test
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsMxRecordId: ${exampleAzurermPrivateDnsMxRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_mx_record_get_mx_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMxRecordResult> getMxRecord(
  GetMxRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getMxRecord:getMxRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMxRecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS PTR Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.privatedns.PTRRecord("example", {
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsPtrRecordId = exampleAzurermPrivateDnsPtrRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.PTRRecord("example",
///     name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsPtrRecordId", example_azurerm_private_dns_ptr_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.PrivateDns.PTRRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsPtrRecordId"] = exampleAzurermPrivateDnsPtrRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewPTRRecord(ctx, "example", &privatedns.PTRRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          pulumi.String("test-zone"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsPtrRecordId", exampleAzurermPrivateDnsPtrRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PTRRecord;
/// import com.pulumi.azure.privatedns.PTRRecordArgs;
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
///         var example = new PTRRecord("example", PTRRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsPtrRecordId", exampleAzurermPrivateDnsPtrRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:privatedns:PTRRecord
///     properties:
///       name: test
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsPtrRecordId: ${exampleAzurermPrivateDnsPtrRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_ptr_record_get_ptr_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPtrRecordResult> getPtrRecord(
  GetPtrRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getPtrRecord:getPtrRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPtrRecordResult.fromMap(result);
}

/// Gets information about an existing Private DNS Resolver.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.privatedns.getResolver({
///     name: "example",
///     resourceGroupName: "example-resourcegroup-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.privatedns.get_resolver(name="example",
///     resource_group_name="example-resourcegroup-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.PrivateDns.GetResolver.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resourcegroup-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.LookupResolver(ctx, &privatedns.LookupResolverArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resourcegroup-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetResolverArgs;
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
///         final var test = PrivatednsFunctions.getResolver(GetResolverArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resourcegroup-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:privatedns:getResolver
///       arguments:
///         name: example
///         resourceGroupName: example-resourcegroup-name
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_resolver_get_resolver_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverResult> getResolver(
  GetResolverArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getResolver:getResolver',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverResult.fromMap(result);
}

/// Gets information about an existing Private DNS Resolver Dns Forwarding Ruleset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getResolverDnsForwardingRuleset({
///     name: "example-ruleset",
///     resourceGroupName: "example-ruleset-resourcegroup",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_resolver_dns_forwarding_ruleset(name="example-ruleset",
///     resource_group_name="example-ruleset-resourcegroup")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetResolverDnsForwardingRuleset.Invoke(new()
///     {
///         Name = "example-ruleset",
///         ResourceGroupName = "example-ruleset-resourcegroup",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.LookupResolverDnsForwardingRuleset(ctx, &privatedns.LookupResolverDnsForwardingRulesetArgs{
/// 			Name:              "example-ruleset",
/// 			ResourceGroupName: "example-ruleset-resourcegroup",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetResolverDnsForwardingRulesetArgs;
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
///         final var example = PrivatednsFunctions.getResolverDnsForwardingRuleset(GetResolverDnsForwardingRulesetArgs.builder()
///             .name("example-ruleset")
///             .resourceGroupName("example-ruleset-resourcegroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getResolverDnsForwardingRuleset
///       arguments:
///         name: example-ruleset
///         resourceGroupName: example-ruleset-resourcegroup
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_resolver_dns_forwarding_ruleset_get_resolver_dns_forwarding_ruleset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverDnsForwardingRulesetResult> getResolverDnsForwardingRuleset(
  GetResolverDnsForwardingRulesetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getResolverDnsForwardingRuleset:getResolverDnsForwardingRuleset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverDnsForwardingRulesetResult.fromMap(result);
}

/// Gets information about an existing Private DNS Resolver Forwarding Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getResolverForwardingRule({
///     name: "example-rule",
///     dnsForwardingRulesetId: "example-forwarding-rulset-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_resolver_forwarding_rule(name="example-rule",
///     dns_forwarding_ruleset_id="example-forwarding-rulset-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetResolverForwardingRule.Invoke(new()
///     {
///         Name = "example-rule",
///         DnsForwardingRulesetId = "example-forwarding-rulset-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.LookupResolverForwardingRule(ctx, &privatedns.LookupResolverForwardingRuleArgs{
/// 			Name:                   "example-rule",
/// 			DnsForwardingRulesetId: "example-forwarding-rulset-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetResolverForwardingRuleArgs;
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
///         final var example = PrivatednsFunctions.getResolverForwardingRule(GetResolverForwardingRuleArgs.builder()
///             .name("example-rule")
///             .dnsForwardingRulesetId("example-forwarding-rulset-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getResolverForwardingRule
///       arguments:
///         name: example-rule
///         dnsForwardingRulesetId: example-forwarding-rulset-id
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_resolver_forwarding_rule_get_resolver_forwarding_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverForwardingRuleResult> getResolverForwardingRule(
  GetResolverForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getResolverForwardingRule:getResolverForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverForwardingRuleResult.fromMap(result);
}

/// Gets information about an existing Private DNS Resolver Inbound Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getResolverInboundEndpoint({
///     name: "example-drie",
///     privateDnsResolverId: "example-private-dns-resolver-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_resolver_inbound_endpoint(name="example-drie",
///     private_dns_resolver_id="example-private-dns-resolver-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetResolverInboundEndpoint.Invoke(new()
///     {
///         Name = "example-drie",
///         PrivateDnsResolverId = "example-private-dns-resolver-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.LookupResolverInboundEndpoint(ctx, &privatedns.LookupResolverInboundEndpointArgs{
/// 			Name:                 "example-drie",
/// 			PrivateDnsResolverId: "example-private-dns-resolver-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetResolverInboundEndpointArgs;
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
///         final var example = PrivatednsFunctions.getResolverInboundEndpoint(GetResolverInboundEndpointArgs.builder()
///             .name("example-drie")
///             .privateDnsResolverId("example-private-dns-resolver-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getResolverInboundEndpoint
///       arguments:
///         name: example-drie
///         privateDnsResolverId: example-private-dns-resolver-id
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_resolver_inbound_endpoint_get_resolver_inbound_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverInboundEndpointResult> getResolverInboundEndpoint(
  GetResolverInboundEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getResolverInboundEndpoint:getResolverInboundEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverInboundEndpointResult.fromMap(result);
}

/// Gets information about an existing Private DNS Resolver Outbound Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getResolverOutboundEndpoint({
///     name: "example-endpoint",
///     privateDnsResolverId: "example-private-dns-resolver-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_resolver_outbound_endpoint(name="example-endpoint",
///     private_dns_resolver_id="example-private-dns-resolver-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetResolverOutboundEndpoint.Invoke(new()
///     {
///         Name = "example-endpoint",
///         PrivateDnsResolverId = "example-private-dns-resolver-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.LookupResolverOutboundEndpoint(ctx, &privatedns.LookupResolverOutboundEndpointArgs{
/// 			Name:                 "example-endpoint",
/// 			PrivateDnsResolverId: "example-private-dns-resolver-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetResolverOutboundEndpointArgs;
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
///         final var example = PrivatednsFunctions.getResolverOutboundEndpoint(GetResolverOutboundEndpointArgs.builder()
///             .name("example-endpoint")
///             .privateDnsResolverId("example-private-dns-resolver-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getResolverOutboundEndpoint
///       arguments:
///         name: example-endpoint
///         privateDnsResolverId: example-private-dns-resolver-id
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_resolver_outbound_endpoint_get_resolver_outbound_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverOutboundEndpointResult> getResolverOutboundEndpoint(
  GetResolverOutboundEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getResolverOutboundEndpoint:getResolverOutboundEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverOutboundEndpointResult.fromMap(result);
}

/// Gets information about an existing Private DNS Resolver Virtual Network Link.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getResolverVirtualNetworkLink({
///     name: "example-link",
///     dnsForwardingRulesetId: "example-dns-forwarding-ruleset-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_resolver_virtual_network_link(name="example-link",
///     dns_forwarding_ruleset_id="example-dns-forwarding-ruleset-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetResolverVirtualNetworkLink.Invoke(new()
///     {
///         Name = "example-link",
///         DnsForwardingRulesetId = "example-dns-forwarding-ruleset-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.LookupResolverVirtualNetworkLink(ctx, &privatedns.LookupResolverVirtualNetworkLinkArgs{
/// 			Name:                   "example-link",
/// 			DnsForwardingRulesetId: "example-dns-forwarding-ruleset-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetResolverVirtualNetworkLinkArgs;
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
///         final var example = PrivatednsFunctions.getResolverVirtualNetworkLink(GetResolverVirtualNetworkLinkArgs.builder()
///             .name("example-link")
///             .dnsForwardingRulesetId("example-dns-forwarding-ruleset-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getResolverVirtualNetworkLink
///       arguments:
///         name: example-link
///         dnsForwardingRulesetId: example-dns-forwarding-ruleset-id
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_resolver_virtual_network_link_get_resolver_virtual_network_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolverVirtualNetworkLinkResult> getResolverVirtualNetworkLink(
  GetResolverVirtualNetworkLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getResolverVirtualNetworkLink:getResolverVirtualNetworkLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverVirtualNetworkLinkResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS SOA Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azurerm from "@pulumi/azurerm";
///
/// const example = new azurerm.index.PrivateDnsSoaRecord("example", {
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsSoaRecordId = exampleAzurermPrivateDnsSoaRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azurerm as azurerm
///
/// example = azurerm.index.PrivateDnsSoaRecord("example",
///     zone_name=test-zone,
///     resource_group_name=test-rg)
/// pulumi.export("privateDnsSoaRecordId", example_azurerm_private_dns_soa_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azurerm = Pulumi.Azurerm;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azurerm.Index.PrivateDnsSoaRecord("example", new()
///     {
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsSoaRecordId"] = exampleAzurermPrivateDnsSoaRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurerm.NewPrivateDnsSoaRecord(ctx, "example", &azurerm.PrivateDnsSoaRecordArgs{
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsSoaRecordId", exampleAzurermPrivateDnsSoaRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurerm.PrivateDnsSoaRecord;
/// import com.pulumi.azurerm.PrivateDnsSoaRecordArgs;
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
///         var example = new PrivateDnsSoaRecord("example", PrivateDnsSoaRecordArgs.builder()
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsSoaRecordId", exampleAzurermPrivateDnsSoaRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azurerm:PrivateDnsSoaRecord
///     properties:
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsSoaRecordId: ${exampleAzurermPrivateDnsSoaRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_soa_record_get_soa_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSoaRecordResult> getSoaRecord(
  GetSoaRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getSoaRecord:getSoaRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSoaRecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS SRV Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.privatedns.SRVRecord("example", {
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsSrvRecordId = exampleAzurermPrivateDnsSrvRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.SRVRecord("example",
///     name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsSrvRecordId", example_azurerm_private_dns_srv_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.PrivateDns.SRVRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsSrvRecordId"] = exampleAzurermPrivateDnsSrvRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewSRVRecord(ctx, "example", &privatedns.SRVRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          pulumi.String("test-zone"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsSrvRecordId", exampleAzurermPrivateDnsSrvRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.SRVRecord;
/// import com.pulumi.azure.privatedns.SRVRecordArgs;
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
///         var example = new SRVRecord("example", SRVRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsSrvRecordId", exampleAzurermPrivateDnsSrvRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:privatedns:SRVRecord
///     properties:
///       name: test
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsSrvRecordId: ${exampleAzurermPrivateDnsSrvRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_srv_record_get_srv_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSrvRecordResult> getSrvRecord(
  GetSrvRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getSrvRecord:getSrvRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSrvRecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS TXT Record within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.privatedns.TxtRecord("example", {
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const privateDnsTxtRecordId = exampleAzurermPrivateDnsTxtRecord.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.TxtRecord("example",
///     name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("privateDnsTxtRecordId", example_azurerm_private_dns_txt_record["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.PrivateDns.TxtRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsTxtRecordId"] = exampleAzurermPrivateDnsTxtRecord.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewTxtRecord(ctx, "example", &privatedns.TxtRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          pulumi.String("test-zone"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsTxtRecordId", exampleAzurermPrivateDnsTxtRecord.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.TxtRecord;
/// import com.pulumi.azure.privatedns.TxtRecordArgs;
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
///         var example = new TxtRecord("example", TxtRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("privateDnsTxtRecordId", exampleAzurermPrivateDnsTxtRecord.id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:privatedns:TxtRecord
///     properties:
///       name: test
///       zoneName: test-zone
///       resourceGroupName: test-rg
/// outputs:
///   privateDnsTxtRecordId: ${exampleAzurermPrivateDnsTxtRecord.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_txt_record_get_txt_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTxtRecordResult> getTxtRecord(
  GetTxtRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getTxtRecord:getTxtRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTxtRecordResult.fromMap(result);
}

/// Use this data source to access information about an existing Private DNS zone Virtual Network Link. These Links enable DNS resolution and registration inside Azure Virtual Networks using Azure Private DNS.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.privatedns.getZoneVirtualNetworkLink({
///     name: "test",
///     resourceGroupName: "test-rg",
///     privateDnsZoneName: "test-zone",
/// });
/// export const privateDnsARecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.privatedns.get_zone_virtual_network_link(name="test",
///     resource_group_name="test-rg",
///     private_dns_zone_name="test-zone")
/// pulumi.export("privateDnsARecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.PrivateDns.GetZoneVirtualNetworkLink.Invoke(new()
///     {
///         Name = "test",
///         ResourceGroupName = "test-rg",
///         PrivateDnsZoneName = "test-zone",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privateDnsARecordId"] = example.Apply(getZoneVirtualNetworkLinkResult => getZoneVirtualNetworkLinkResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatedns.LookupZoneVirtualNetworkLink(ctx, &privatedns.LookupZoneVirtualNetworkLinkArgs{
/// 			Name:               "test",
/// 			ResourceGroupName:  "test-rg",
/// 			PrivateDnsZoneName: "test-zone",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("privateDnsARecordId", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.privatedns.PrivatednsFunctions;
/// import com.pulumi.azure.privatedns.inputs.GetZoneVirtualNetworkLinkArgs;
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
///         final var example = PrivatednsFunctions.getZoneVirtualNetworkLink(GetZoneVirtualNetworkLinkArgs.builder()
///             .name("test")
///             .resourceGroupName("test-rg")
///             .privateDnsZoneName("test-zone")
///             .build());
///
///         ctx.export("privateDnsARecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:privatedns:getZoneVirtualNetworkLink
///       arguments:
///         name: test
///         resourceGroupName: test-rg
///         privateDnsZoneName: test-zone
/// outputs:
///   privateDnsARecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_privatedns_get_zone_virtual_network_link_get_zone_virtual_network_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneVirtualNetworkLinkResult> getZoneVirtualNetworkLink(
  GetZoneVirtualNetworkLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:privatedns/getZoneVirtualNetworkLink:getZoneVirtualNetworkLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneVirtualNetworkLinkResult.fromMap(result);
}
