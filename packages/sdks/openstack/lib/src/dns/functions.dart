import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_zone_args.dart';
import 'get_dns_zone_result.dart';
import 'get_zone_share_v2_args.dart';
import 'get_zone_share_v2_result.dart';

/// Use this data source to get the ID of an available OpenStack DNS zone.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const zone1 = openstack.dns.getDnsZone({
///     name: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// zone1 = openstack.dns.get_dns_zone(name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone1 = OpenStack.Dns.GetDnsZone.Invoke(new()
///     {
///         Name = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.GetDnsZone(ctx, &dns.GetDnsZoneArgs{
/// 			Name: pulumi.StringRef("example.com"),
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
/// import com.pulumi.openstack.dns.DnsFunctions;
/// import com.pulumi.openstack.dns.inputs.GetDnsZoneArgs;
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
///         final var zone1 = DnsFunctions.getDnsZone(GetDnsZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zone1:
///     fn::invoke:
///       function: openstack:dns:getDnsZone
///       arguments:
///         name: example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_dns_zone_get_dns_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsZoneResult> getDnsZone(
  GetDnsZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:dns/getDnsZone:getDnsZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsZoneResult.fromMap(result);
}

/// Use this data source to get information about a DNS zone share.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const example = openstack.dns.getZoneShareV2({
///     zoneId: "00000000-0000-0000-0000-000000000000",
///     targetProjectId: "11111111-1111-1111-1111-111111111111",
///     projectId: "22222222-2222-2222-2222-222222222222",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example = openstack.dns.get_zone_share_v2(zone_id="00000000-0000-0000-0000-000000000000",
///     target_project_id="11111111-1111-1111-1111-111111111111",
///     project_id="22222222-2222-2222-2222-222222222222")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = OpenStack.Dns.GetZoneShareV2.Invoke(new()
///     {
///         ZoneId = "00000000-0000-0000-0000-000000000000",
///         TargetProjectId = "11111111-1111-1111-1111-111111111111",
///         ProjectId = "22222222-2222-2222-2222-222222222222",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.LookupZoneShareV2(ctx, &dns.LookupZoneShareV2Args{
/// 			ZoneId:          "00000000-0000-0000-0000-000000000000",
/// 			TargetProjectId: pulumi.StringRef("11111111-1111-1111-1111-111111111111"),
/// 			ProjectId:       pulumi.StringRef("22222222-2222-2222-2222-222222222222"),
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
/// import com.pulumi.openstack.dns.DnsFunctions;
/// import com.pulumi.openstack.dns.inputs.GetZoneShareV2Args;
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
///         final var example = DnsFunctions.getZoneShareV2(GetZoneShareV2Args.builder()
///             .zoneId("00000000-0000-0000-0000-000000000000")
///             .targetProjectId("11111111-1111-1111-1111-111111111111")
///             .projectId("22222222-2222-2222-2222-222222222222")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: openstack:dns:getZoneShareV2
///       arguments:
///         zoneId: 00000000-0000-0000-0000-000000000000
///         targetProjectId: 11111111-1111-1111-1111-111111111111
///         projectId: 22222222-2222-2222-2222-222222222222
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_zone_share_v2_get_zone_share_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneShareV2Result> getZoneShareV2(
  GetZoneShareV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:dns/getZoneShareV2:getZoneShareV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneShareV2Result.fromMap(result);
}
