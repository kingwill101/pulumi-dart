import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aaaarecord_args.dart';
import 'get_aaaarecord_result.dart';
import 'get_arecord_args.dart';
import 'get_arecord_result.dart';
import 'get_caarecord_args.dart';
import 'get_caarecord_result.dart';
import 'get_cname_record_args.dart';
import 'get_cname_record_result.dart';
import 'get_mx_record_args.dart';
import 'get_mx_record_result.dart';
import 'get_ns_record_args.dart';
import 'get_ns_record_result.dart';
import 'get_ptr_record_args.dart';
import 'get_ptr_record_result.dart';
import 'get_soa_record_args.dart';
import 'get_soa_record_result.dart';
import 'get_srv_record_args.dart';
import 'get_srv_record_result.dart';
import 'get_txt_record_args.dart';
import 'get_txt_record_result.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';

/// Use this data source to access information about an existing DNS AAAA Record within Azure DNS.
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
/// const example = azure.dns.getAAAARecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsAaaaRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_aaaa_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsAaaaRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetAAAARecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsAaaaRecordId"] = example.Apply(getAAAARecordResult => getAAAARecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetAAAARecord(ctx, &dns.GetAAAARecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsAaaaRecordId", example.Id)
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
/// data "azure_dns_getaaaarecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsAaaaRecordId" {
///   value = data.azure_dns_getaaaarecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetAAAARecordArgs;
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
///         final var example = DnsFunctions.getAAAARecord(GetAAAARecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsAaaaRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getAAAARecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsAaaaRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_aaaarecord_get_aaaarecord_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAAAARecordResult> getAAAARecord(
  GetAAAARecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getAAAARecord:getAAAARecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAAAARecordResult.fromMap(result);
}

pulumi.Output<GetAAAARecordResult> getAAAARecordOutput(
  GetAAAARecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getAAAARecord:getAAAARecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAAAARecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS A Record within Azure DNS.
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
/// const example = azure.dns.getARecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsARecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_a_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsARecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetARecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsARecordId"] = example.Apply(getARecordResult => getARecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupARecord(ctx, &dns.LookupARecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsARecordId", example.Id)
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
/// data "azure_dns_getarecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsARecordId" {
///   value = data.azure_dns_getarecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetARecordArgs;
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
///         final var example = DnsFunctions.getARecord(GetARecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsARecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getARecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsARecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_arecord_get_arecord_args_doc}
/// [options] Invoke options controlling this call.
Future<GetARecordResult> getARecord(
  GetARecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getARecord:getARecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetARecordResult.fromMap(result);
}

pulumi.Output<GetARecordResult> getARecordOutput(
  GetARecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getARecord:getARecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetARecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS CAA Record within Azure DNS.
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
/// const example = azure.dns.getCAARecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsCaaRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_caa_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsCaaRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetCAARecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsCaaRecordId"] = example.Apply(getCAARecordResult => getCAARecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetCAARecord(ctx, &dns.GetCAARecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsCaaRecordId", example.Id)
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
/// data "azure_dns_getcaarecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsCaaRecordId" {
///   value = data.azure_dns_getcaarecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetCAARecordArgs;
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
///         final var example = DnsFunctions.getCAARecord(GetCAARecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsCaaRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getCAARecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsCaaRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_caarecord_get_caarecord_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCAARecordResult> getCAARecord(
  GetCAARecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getCAARecord:getCAARecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCAARecordResult.fromMap(result);
}

pulumi.Output<GetCAARecordResult> getCAARecordOutput(
  GetCAARecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getCAARecord:getCAARecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCAARecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS CNAME Record within Azure DNS.
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
/// const example = azure.dns.getCnameRecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsCnameRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_cname_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsCnameRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetCnameRecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsCnameRecordId"] = example.Apply(getCnameRecordResult => getCnameRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetCnameRecord(ctx, &dns.GetCnameRecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsCnameRecordId", example.Id)
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
/// data "azure_dns_getcnamerecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsCnameRecordId" {
///   value = data.azure_dns_getcnamerecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetCnameRecordArgs;
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
///         final var example = DnsFunctions.getCnameRecord(GetCnameRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsCnameRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getCnameRecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsCnameRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_cname_record_get_cname_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCnameRecordResult> getCnameRecord(
  GetCnameRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getCnameRecord:getCnameRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCnameRecordResult.fromMap(result);
}

pulumi.Output<GetCnameRecordResult> getCnameRecordOutput(
  GetCnameRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getCnameRecord:getCnameRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCnameRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS MX Record within Azure DNS.
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
/// const example = azure.dns.getMxRecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsMxRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_mx_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsMxRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetMxRecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsMxRecordId"] = example.Apply(getMxRecordResult => getMxRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupMxRecord(ctx, &dns.LookupMxRecordArgs{
/// 			Name:              pulumi.StringRef("test"),
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsMxRecordId", example.Id)
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
/// data "azure_dns_getmxrecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsMxRecordId" {
///   value = data.azure_dns_getmxrecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetMxRecordArgs;
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
///         final var example = DnsFunctions.getMxRecord(GetMxRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsMxRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getMxRecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsMxRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_mx_record_get_mx_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMxRecordResult> getMxRecord(
  GetMxRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getMxRecord:getMxRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMxRecordResult.fromMap(result);
}

pulumi.Output<GetMxRecordResult> getMxRecordOutput(
  GetMxRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getMxRecord:getMxRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMxRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS NS Record within Azure DNS.
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
/// const example = azure.dns.getNsRecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsNsRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_ns_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsNsRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetNsRecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsNsRecordId"] = example.Apply(getNsRecordResult => getNsRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupNsRecord(ctx, &dns.LookupNsRecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsNsRecordId", example.Id)
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
/// data "azure_dns_getnsrecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsNsRecordId" {
///   value = data.azure_dns_getnsrecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetNsRecordArgs;
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
///         final var example = DnsFunctions.getNsRecord(GetNsRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsNsRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getNsRecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsNsRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_ns_record_get_ns_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNsRecordResult> getNsRecord(
  GetNsRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getNsRecord:getNsRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNsRecordResult.fromMap(result);
}

pulumi.Output<GetNsRecordResult> getNsRecordOutput(
  GetNsRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getNsRecord:getNsRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNsRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS PTR Record within Azure DNS.
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
/// const example = azure.dns.getPtrRecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsPtrRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_ptr_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsPtrRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetPtrRecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsPtrRecordId"] = example.Apply(getPtrRecordResult => getPtrRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupPtrRecord(ctx, &dns.LookupPtrRecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsPtrRecordId", example.Id)
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
/// data "azure_dns_getptrrecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsPtrRecordId" {
///   value = data.azure_dns_getptrrecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetPtrRecordArgs;
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
///         final var example = DnsFunctions.getPtrRecord(GetPtrRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsPtrRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getPtrRecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsPtrRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_ptr_record_get_ptr_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPtrRecordResult> getPtrRecord(
  GetPtrRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getPtrRecord:getPtrRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPtrRecordResult.fromMap(result);
}

pulumi.Output<GetPtrRecordResult> getPtrRecordOutput(
  GetPtrRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getPtrRecord:getPtrRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPtrRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS SOA Record within Azure DNS.
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
/// const example = azure.dns.getSoaRecord({
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsSoaRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_soa_record(zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsSoaRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetSoaRecord.Invoke(new()
///     {
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsSoaRecordId"] = example.Apply(getSoaRecordResult => getSoaRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetSoaRecord(ctx, &dns.GetSoaRecordArgs{
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsSoaRecordId", example.Id)
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
/// data "azure_dns_getsoarecord" "example" {
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsSoaRecordId" {
///   value = data.azure_dns_getsoarecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetSoaRecordArgs;
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
///         final var example = DnsFunctions.getSoaRecord(GetSoaRecordArgs.builder()
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsSoaRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getSoaRecord
///       arguments:
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsSoaRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_soa_record_get_soa_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSoaRecordResult> getSoaRecord(
  GetSoaRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getSoaRecord:getSoaRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSoaRecordResult.fromMap(result);
}

pulumi.Output<GetSoaRecordResult> getSoaRecordOutput(
  GetSoaRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getSoaRecord:getSoaRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSoaRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS SRV Record within Azure DNS.
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
/// const example = azure.dns.getSrvRecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsSrvRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_srv_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsSrvRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetSrvRecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsSrvRecordId"] = example.Apply(getSrvRecordResult => getSrvRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupSrvRecord(ctx, &dns.LookupSrvRecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsSrvRecordId", example.Id)
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
/// data "azure_dns_getsrvrecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsSrvRecordId" {
///   value = data.azure_dns_getsrvrecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetSrvRecordArgs;
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
///         final var example = DnsFunctions.getSrvRecord(GetSrvRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsSrvRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getSrvRecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsSrvRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_srv_record_get_srv_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSrvRecordResult> getSrvRecord(
  GetSrvRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getSrvRecord:getSrvRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSrvRecordResult.fromMap(result);
}

pulumi.Output<GetSrvRecordResult> getSrvRecordOutput(
  GetSrvRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getSrvRecord:getSrvRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSrvRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS TXT Record within Azure DNS.
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
/// const example = azure.dns.getTxtRecord({
///     name: "test",
///     zoneName: "test-zone",
///     resourceGroupName: "test-rg",
/// });
/// export const dnsTxtRecordId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_txt_record(name="test",
///     zone_name="test-zone",
///     resource_group_name="test-rg")
/// pulumi.export("dnsTxtRecordId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetTxtRecord.Invoke(new()
///     {
///         Name = "test",
///         ZoneName = "test-zone",
///         ResourceGroupName = "test-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsTxtRecordId"] = example.Apply(getTxtRecordResult => getTxtRecordResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupTxtRecord(ctx, &dns.LookupTxtRecordArgs{
/// 			Name:              "test",
/// 			ZoneName:          "test-zone",
/// 			ResourceGroupName: "test-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsTxtRecordId", example.Id)
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
/// data "azure_dns_gettxtrecord" "example" {
///   name                = "test"
///   zone_name           = "test-zone"
///   resource_group_name = "test-rg"
/// }
///
/// output "dnsTxtRecordId" {
///   value = data.azure_dns_gettxtrecord.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetTxtRecordArgs;
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
///         final var example = DnsFunctions.getTxtRecord(GetTxtRecordArgs.builder()
///             .name("test")
///             .zoneName("test-zone")
///             .resourceGroupName("test-rg")
///             .build());
///
///         ctx.export("dnsTxtRecordId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getTxtRecord
///       arguments:
///         name: test
///         zoneName: test-zone
///         resourceGroupName: test-rg
/// outputs:
///   dnsTxtRecordId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_txt_record_get_txt_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTxtRecordResult> getTxtRecord(
  GetTxtRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getTxtRecord:getTxtRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTxtRecordResult.fromMap(result);
}

pulumi.Output<GetTxtRecordResult> getTxtRecordOutput(
  GetTxtRecordArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getTxtRecord:getTxtRecord',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTxtRecordResult.fromMap);
}

/// Use this data source to access information about an existing DNS Zone.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.dns.getZone({
///     name: "search-eventhubns",
///     resourceGroupName: "search-service",
/// });
/// export const dnsZoneId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dns.get_zone(name="search-eventhubns",
///     resource_group_name="search-service")
/// pulumi.export("dnsZoneId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dns.GetZone.Invoke(new()
///     {
///         Name = "search-eventhubns",
///         ResourceGroupName = "search-service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dnsZoneId"] = example.Apply(getZoneResult => getZoneResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.LookupZone(ctx, &dns.LookupZoneArgs{
/// 			Name:              "search-eventhubns",
/// 			ResourceGroupName: pulumi.StringRef("search-service"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dnsZoneId", example.Id)
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
/// data "azure_dns_getzone" "example" {
///   name                = "search-eventhubns"
///   resource_group_name = "search-service"
/// }
///
/// output "dnsZoneId" {
///   value = data.azure_dns_getzone.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetZoneArgs;
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
///         final var example = DnsFunctions.getZone(GetZoneArgs.builder()
///             .name("search-eventhubns")
///             .resourceGroupName("search-service")
///             .build());
///
///         ctx.export("dnsZoneId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getZone
///       arguments:
///         name: search-eventhubns
///         resourceGroupName: search-service
/// outputs:
///   dnsZoneId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_zone_get_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dns/getZone:getZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}

pulumi.Output<GetZoneResult> getZoneOutput(
  GetZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dns/getZone:getZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetZoneResult.fromMap);
}
