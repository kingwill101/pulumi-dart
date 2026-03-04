import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_certificates_args.dart';
import 'get_certificates_result.dart';
import 'get_datacenter_args.dart';
import 'get_datacenter_result.dart';
import 'get_datacenters_result.dart';
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';
import 'get_firewalls_args.dart';
import 'get_firewalls_result.dart';
import 'get_floating_ip_args.dart';
import 'get_floating_ip_result.dart';
import 'get_floating_ips_args.dart';
import 'get_floating_ips_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_load_balancer_type_args.dart';
import 'get_load_balancer_type_result.dart';
import 'get_load_balancer_types_result.dart';
import 'get_load_balancers_args.dart';
import 'get_load_balancers_result.dart';
import 'get_location_args.dart';
import 'get_location_result.dart';
import 'get_locations_result.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';
import 'get_networks_args.dart';
import 'get_networks_result.dart';
import 'get_placement_group_args.dart';
import 'get_placement_group_result.dart';
import 'get_placement_groups_args.dart';
import 'get_placement_groups_result.dart';
import 'get_primary_ip_args.dart';
import 'get_primary_ip_result.dart';
import 'get_primary_ips_args.dart';
import 'get_primary_ips_result.dart';
import 'get_server_args.dart';
import 'get_server_result.dart';
import 'get_server_type_args.dart';
import 'get_server_type_result.dart';
import 'get_server_types_result.dart';
import 'get_servers_args.dart';
import 'get_servers_result.dart';
import 'get_ssh_key_args.dart';
import 'get_ssh_key_result.dart';
import 'get_ssh_keys_args.dart';
import 'get_ssh_keys_result.dart';
import 'get_storage_box_args.dart';
import 'get_storage_box_result.dart';
import 'get_storage_box_snapshot_args.dart';
import 'get_storage_box_snapshot_result.dart';
import 'get_storage_box_snapshots_args.dart';
import 'get_storage_box_snapshots_result.dart';
import 'get_storage_box_subaccount_args.dart';
import 'get_storage_box_subaccount_result.dart';
import 'get_storage_box_subaccounts_args.dart';
import 'get_storage_box_subaccounts_result.dart';
import 'get_storage_box_type_args.dart';
import 'get_storage_box_type_result.dart';
import 'get_storage_box_types_result.dart';
import 'get_storage_boxes_args.dart';
import 'get_storage_boxes_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';
import 'get_volumes_args.dart';
import 'get_volumes_result.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';
import 'get_zone_rrset_args.dart';
import 'get_zone_rrset_result.dart';
import 'get_zone_rrsets_args.dart';
import 'get_zone_rrsets_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// Provides details about a specific Hetzner Cloud Certificate.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const sampleCertificate1 = hcloud.getCertificate({
///     name: "sample-certificate-1",
/// });
/// const sampleCertificate2 = hcloud.getCertificate({
///     id: 4711,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// sample_certificate1 = hcloud.get_certificate(name="sample-certificate-1")
/// sample_certificate2 = hcloud.get_certificate(id=4711)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleCertificate1 = HCloud.GetCertificate.Invoke(new()
///     {
///         Name = "sample-certificate-1",
///     });
///
///     var sampleCertificate2 = HCloud.GetCertificate.Invoke(new()
///     {
///         Id = 4711,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupCertificate(ctx, &hcloud.LookupCertificateArgs{
/// 			Name: pulumi.StringRef("sample-certificate-1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupCertificate(ctx, &hcloud.LookupCertificateArgs{
/// 			Id: pulumi.IntRef(4711),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetCertificateArgs;
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
///         final var sampleCertificate1 = HcloudFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("sample-certificate-1")
///             .build());
///
///         final var sampleCertificate2 = HcloudFunctions.getCertificate(GetCertificateArgs.builder()
///             .id(4711)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleCertificate1:
///     fn::invoke:
///       function: hcloud:getCertificate
///       arguments:
///         name: sample-certificate-1
///   sampleCertificate2:
///     fn::invoke:
///       function: hcloud:getCertificate
///       arguments:
///         id: '4711'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Certificates.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const sampleCertificate1 = hcloud.getCertificates({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// sample_certificate1 = hcloud.get_certificates(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleCertificate1 = HCloud.GetCertificates.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetCertificates(ctx, &hcloud.GetCertificatesArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetCertificatesArgs;
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
///         final var sampleCertificate1 = HcloudFunctions.getCertificates(GetCertificatesArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleCertificate1:
///     fn::invoke:
///       function: hcloud:getCertificates
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_certificates_get_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificatesResult> getCertificates(
  GetCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getCertificates:getCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificatesResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Datacenter.
///
/// Use this resource to get detailed information about a specific Datacenter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getDatacenter({
///     id: 4,
/// });
/// const byName = hcloud.getDatacenter({
///     name: "fsn1-dc14",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_datacenter(id=4)
/// by_name = hcloud.get_datacenter(name="fsn1-dc14")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetDatacenter.Invoke(new()
///     {
///         Id = 4,
///     });
///
///     var byName = HCloud.GetDatacenter.Invoke(new()
///     {
///         Name = "fsn1-dc14",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetDatacenter(ctx, &hcloud.GetDatacenterArgs{
/// 			Id: pulumi.IntRef(4),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetDatacenter(ctx, &hcloud.GetDatacenterArgs{
/// 			Name: pulumi.StringRef("fsn1-dc14"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetDatacenterArgs;
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
///         final var byId = HcloudFunctions.getDatacenter(GetDatacenterArgs.builder()
///             .id(4)
///             .build());
///
///         final var byName = HcloudFunctions.getDatacenter(GetDatacenterArgs.builder()
///             .name("fsn1-dc14")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getDatacenter
///       arguments:
///         id: 4
///   byName:
///     fn::invoke:
///       function: hcloud:getDatacenter
///       arguments:
///         name: fsn1-dc14
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_datacenter_get_datacenter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatacenterResult> getDatacenter(
  GetDatacenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getDatacenter:getDatacenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatacenterResult.fromMap(result);
}

/// Provides a list of available Hetzner Cloud Datacenters.
///
/// This resource may be useful to create highly available infrastructure, distributed across several Datacenters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getDatacenters({});
/// const workers: hcloud.Server[] = [];
/// for (const range = {value: 0}; range.value < 5; range.value++) {
///     workers.push(new hcloud.Server(`workers-${range.value}`, {
///         name: `node${range.value}`,
///         image: "debian-12",
///         serverType: "cx23",
///         datacenter: all.then(all => all.datacenters[range.value]).then(datacenters => datacenters.name),
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_datacenters()
/// workers = []
/// for range in [{"value": i} for i in range(0, 5)]:
///     workers.append(hcloud.Server(f"workers-{range['value']}",
///         name=f"node{range['value']}",
///         image="debian-12",
///         server_type="cx23",
///         datacenter=all.datacenters[range["value"]]["name"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetDatacenters.Invoke();
///
///     var workers = new List<HCloud.Server>();
///     for (var rangeIndex = 0; rangeIndex < 5; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         workers.Add(new HCloud.Server($"workers-{range.Value}", new()
///         {
///             Name = $"node{range.Value}",
///             Image = "debian-12",
///             ServerType = "cx23",
///             Datacenter = all.Apply(getDatacentersResult => getDatacentersResult.Datacenters)[range.Value].Apply(datacenters => datacenters.Name),
///         }));
///     }
/// });
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var all = HcloudFunctions.getDatacenters(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         for (var i = 0; i < 5; i++) {
///             new Server("workers-" + i, ServerArgs.builder()
///                 .name(String.format("node%s", range.value()))
///                 .image("debian-12")
///                 .serverType("cx23")
///                 .datacenter(all.datacenters()[range.value()].name())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [options] Invoke options controlling this call.
Future<GetDatacentersResult> getDatacenters({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getDatacenters:getDatacenters',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatacentersResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Firewall.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const sampleFirewall1 = hcloud.getFirewall({
///     name: "sample-firewall-1",
/// });
/// const sampleFirewall2 = hcloud.getFirewall({
///     id: 4711,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// sample_firewall1 = hcloud.get_firewall(name="sample-firewall-1")
/// sample_firewall2 = hcloud.get_firewall(id=4711)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleFirewall1 = HCloud.GetFirewall.Invoke(new()
///     {
///         Name = "sample-firewall-1",
///     });
///
///     var sampleFirewall2 = HCloud.GetFirewall.Invoke(new()
///     {
///         Id = 4711,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupFirewall(ctx, &hcloud.LookupFirewallArgs{
/// 			Name: pulumi.StringRef("sample-firewall-1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupFirewall(ctx, &hcloud.LookupFirewallArgs{
/// 			Id: pulumi.IntRef(4711),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetFirewallArgs;
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
///         final var sampleFirewall1 = HcloudFunctions.getFirewall(GetFirewallArgs.builder()
///             .name("sample-firewall-1")
///             .build());
///
///         final var sampleFirewall2 = HcloudFunctions.getFirewall(GetFirewallArgs.builder()
///             .id(4711)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleFirewall1:
///     fn::invoke:
///       function: hcloud:getFirewall
///       arguments:
///         name: sample-firewall-1
///   sampleFirewall2:
///     fn::invoke:
///       function: hcloud:getFirewall
///       arguments:
///         id: '4711'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewall_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getFirewall:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Firewall.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const sampleFirewall1 = hcloud.getFirewalls({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// sample_firewall1 = hcloud.get_firewalls(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleFirewall1 = HCloud.GetFirewalls.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetFirewalls(ctx, &hcloud.GetFirewallsArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetFirewallsArgs;
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
///         final var sampleFirewall1 = HcloudFunctions.getFirewalls(GetFirewallsArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleFirewall1:
///     fn::invoke:
///       function: hcloud:getFirewalls
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewalls_get_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallsResult> getFirewalls(
  GetFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getFirewalls:getFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallsResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud Floating IP.
///
/// This resource can be useful when you need to determine a Floating IP ID based on the IP address.
///
/// ## Example Usage
///
/// # Data Source: hcloud.FloatingIp
///
/// Provides details about a Hetzner Cloud Floating IP.
/// This resource can be useful when you need to determine a Floating IP ID based on the IP address.
///
///
/// ### Additional Examples
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const ip1 = hcloud.getFloatingIp({
///     ipAddress: "1.2.3.4",
/// });
/// const ip2 = hcloud.getFloatingIp({
///     withSelector: "key=value",
/// });
/// const main: hcloud.FloatingIpAssignment[] = [];
/// for (const range = {value: 0}; range.value < counter; range.value++) {
///     main.push(new hcloud.FloatingIpAssignment(`main-${range.value}`, {
///         floatingIpId: ip1.then(ip1 => ip1.id),
///         serverId: mainHcloudServer.id,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// ip1 = hcloud.get_floating_ip(ip_address="1.2.3.4")
/// ip2 = hcloud.get_floating_ip(with_selector="key=value")
/// main = []
/// for range in [{"value": i} for i in range(0, counter)]:
///     main.append(hcloud.FloatingIpAssignment(f"main-{range['value']}",
///         floating_ip_id=ip1.id,
///         server_id=main_hcloud_server["id"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ip1 = HCloud.GetFloatingIp.Invoke(new()
///     {
///         IpAddress = "1.2.3.4",
///     });
///
///     var ip2 = HCloud.GetFloatingIp.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
///     var main = new List<HCloud.FloatingIpAssignment>();
///     for (var rangeIndex = 0; rangeIndex < counter; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         main.Add(new HCloud.FloatingIpAssignment($"main-{range.Value}", new()
///         {
///             FloatingIpId = ip1.Apply(getFloatingIpResult => getFloatingIpResult.Id),
///             ServerId = mainHcloudServer.Id,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ip1, err := hcloud.LookupFloatingIp(ctx, &hcloud.LookupFloatingIpArgs{
/// 			IpAddress: pulumi.StringRef("1.2.3.4"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupFloatingIp(ctx, &hcloud.LookupFloatingIpArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var main []*hcloud.FloatingIpAssignment
/// 		for index := 0; index < counter; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := hcloud.NewFloatingIpAssignment(ctx, fmt.Sprintf("main-%v", key0), &hcloud.FloatingIpAssignmentArgs{
/// 				FloatingIpId: pulumi.Int(ip1.Id),
/// 				ServerId:     pulumi.Any(mainHcloudServer.Id),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			main = append(main, __res)
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetFloatingIpArgs;
/// import com.pulumi.hcloud.FloatingIpAssignment;
/// import com.pulumi.hcloud.FloatingIpAssignmentArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var ip1 = HcloudFunctions.getFloatingIp(GetFloatingIpArgs.builder()
///             .ipAddress("1.2.3.4")
///             .build());
///
///         final var ip2 = HcloudFunctions.getFloatingIp(GetFloatingIpArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///         for (var i = 0; i < counter; i++) {
///             new FloatingIpAssignment("main-" + i, FloatingIpAssignmentArgs.builder()
///                 .floatingIpId(ip1.id())
///                 .serverId(mainHcloudServer.id())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:FloatingIpAssignment
///     properties:
///       floatingIpId: ${ip1.id}
///       serverId: ${mainHcloudServer.id}
///     options: {}
/// variables:
///   ip1:
///     fn::invoke:
///       function: hcloud:getFloatingIp
///       arguments:
///         ipAddress: 1.2.3.4
///   ip2:
///     fn::invoke:
///       function: hcloud:getFloatingIp
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_floating_ip_get_floating_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFloatingIpResult> getFloatingIp(
  GetFloatingIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getFloatingIp:getFloatingIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFloatingIpResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Floating IPs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const ip2 = hcloud.getFloatingIps({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// ip2 = hcloud.get_floating_ips(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ip2 = HCloud.GetFloatingIps.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetFloatingIps(ctx, &hcloud.GetFloatingIpsArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetFloatingIpsArgs;
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
///         final var ip2 = HcloudFunctions.getFloatingIps(GetFloatingIpsArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ip2:
///     fn::invoke:
///       function: hcloud:getFloatingIps
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_floating_ips_get_floating_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFloatingIpsResult> getFloatingIps(
  GetFloatingIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getFloatingIps:getFloatingIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFloatingIpsResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud Image.
/// This resource is useful if you want to use a non-terraform managed image.
///
/// When relevant, it is recommended to always provide the image architecture
/// (`with_architecture`) when fetching images.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getImage({
///     id: 114690387,
/// });
/// const byNameX86 = hcloud.getImage({
///     name: "debian-12",
///     withArchitecture: "x86",
/// });
/// const byNameArm = hcloud.getImage({
///     name: "debian-12",
///     withArchitecture: "arm",
/// });
/// const byLabel = hcloud.getImage({
///     withSelector: "key=value",
/// });
/// const main = new hcloud.Server("main", {image: byName.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_image(id=114690387)
/// by_name_x86 = hcloud.get_image(name="debian-12",
///     with_architecture="x86")
/// by_name_arm = hcloud.get_image(name="debian-12",
///     with_architecture="arm")
/// by_label = hcloud.get_image(with_selector="key=value")
/// main = hcloud.Server("main", image=by_name["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetImage.Invoke(new()
///     {
///         Id = 114690387,
///     });
///
///     var byNameX86 = HCloud.GetImage.Invoke(new()
///     {
///         Name = "debian-12",
///         WithArchitecture = "x86",
///     });
///
///     var byNameArm = HCloud.GetImage.Invoke(new()
///     {
///         Name = "debian-12",
///         WithArchitecture = "arm",
///     });
///
///     var byLabel = HCloud.GetImage.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
///     var main = new HCloud.Server("main", new()
///     {
///         Image = byName.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetImage(ctx, &hcloud.GetImageArgs{
/// 			Id: pulumi.IntRef(114690387),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetImage(ctx, &hcloud.GetImageArgs{
/// 			Name:             pulumi.StringRef("debian-12"),
/// 			WithArchitecture: pulumi.StringRef("x86"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetImage(ctx, &hcloud.GetImageArgs{
/// 			Name:             pulumi.StringRef("debian-12"),
/// 			WithArchitecture: pulumi.StringRef("arm"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetImage(ctx, &hcloud.GetImageArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "main", &hcloud.ServerArgs{
/// 			Image: pulumi.Any(byName.Id),
/// 		})
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetImageArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
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
///         final var byId = HcloudFunctions.getImage(GetImageArgs.builder()
///             .id(114690387)
///             .build());
///
///         final var byNameX86 = HcloudFunctions.getImage(GetImageArgs.builder()
///             .name("debian-12")
///             .withArchitecture("x86")
///             .build());
///
///         final var byNameArm = HcloudFunctions.getImage(GetImageArgs.builder()
///             .name("debian-12")
///             .withArchitecture("arm")
///             .build());
///
///         final var byLabel = HcloudFunctions.getImage(GetImageArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///         var main = new Server("main", ServerArgs.builder()
///             .image(byName.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:Server
///     properties:
///       image: ${byName.id}
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getImage
///       arguments:
///         id: '114690387'
///   byNameX86:
///     fn::invoke:
///       function: hcloud:getImage
///       arguments:
///         name: debian-12
///         withArchitecture: x86
///   byNameArm:
///     fn::invoke:
///       function: hcloud:getImage
///       arguments:
///         name: debian-12
///         withArchitecture: arm
///   byLabel:
///     fn::invoke:
///       function: hcloud:getImage
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Images.
///
/// When relevant, it is recommended to always provide the image architecture
/// (`with_architecture`) when fetching images.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byArchitecture = hcloud.getImages({
///     withArchitectures: ["x86"],
/// });
/// const byLabel = hcloud.getImages({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_architecture = hcloud.get_images(with_architectures=["x86"])
/// by_label = hcloud.get_images(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byArchitecture = HCloud.GetImages.Invoke(new()
///     {
///         WithArchitectures = new[]
///         {
///             "x86",
///         },
///     });
///
///     var byLabel = HCloud.GetImages.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetImages(ctx, &hcloud.GetImagesArgs{
/// 			WithArchitectures: []string{
/// 				"x86",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetImages(ctx, &hcloud.GetImagesArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetImagesArgs;
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
///         final var byArchitecture = HcloudFunctions.getImages(GetImagesArgs.builder()
///             .withArchitectures("x86")
///             .build());
///
///         final var byLabel = HcloudFunctions.getImages(GetImagesArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byArchitecture:
///     fn::invoke:
///       function: hcloud:getImages
///       arguments:
///         withArchitectures:
///           - x86
///   byLabel:
///     fn::invoke:
///       function: hcloud:getImages
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const lb1 = hcloud.getLoadBalancer({
///     name: "my-load-balancer",
/// });
/// const lb2 = hcloud.getLoadBalancer({
///     id: 123,
/// });
/// const lb3 = hcloud.getLoadBalancer({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// lb1 = hcloud.get_load_balancer(name="my-load-balancer")
/// lb2 = hcloud.get_load_balancer(id=123)
/// lb3 = hcloud.get_load_balancer(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb1 = HCloud.GetLoadBalancer.Invoke(new()
///     {
///         Name = "my-load-balancer",
///     });
///
///     var lb2 = HCloud.GetLoadBalancer.Invoke(new()
///     {
///         Id = 123,
///     });
///
///     var lb3 = HCloud.GetLoadBalancer.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupLoadBalancer(ctx, &hcloud.LookupLoadBalancerArgs{
/// 			Name: pulumi.StringRef("my-load-balancer"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupLoadBalancer(ctx, &hcloud.LookupLoadBalancerArgs{
/// 			Id: pulumi.IntRef(123),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupLoadBalancer(ctx, &hcloud.LookupLoadBalancerArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetLoadBalancerArgs;
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
///         final var lb1 = HcloudFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .name("my-load-balancer")
///             .build());
///
///         final var lb2 = HcloudFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .id(123)
///             .build());
///
///         final var lb3 = HcloudFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   lb1:
///     fn::invoke:
///       function: hcloud:getLoadBalancer
///       arguments:
///         name: my-load-balancer
///   lb2:
///     fn::invoke:
///       function: hcloud:getLoadBalancer
///       arguments:
///         id: '123'
///   lb3:
///     fn::invoke:
///       function: hcloud:getLoadBalancer
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_load_balancer_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Load Balancer Type.
///
/// Use this resource to get detailed information about a specific Load Balancer Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getLoadBalancerType({
///     id: 1,
/// });
/// const byName = hcloud.getLoadBalancerType({
///     name: "lb11",
/// });
/// const main = new hcloud.LoadBalancer("main", {
///     name: "my-load-balancer",
///     loadBalancerType: name,
///     location: "fsn1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_load_balancer_type(id=1)
/// by_name = hcloud.get_load_balancer_type(name="lb11")
/// main = hcloud.LoadBalancer("main",
///     name="my-load-balancer",
///     load_balancer_type=name,
///     location="fsn1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetLoadBalancerType.Invoke(new()
///     {
///         Id = 1,
///     });
///
///     var byName = HCloud.GetLoadBalancerType.Invoke(new()
///     {
///         Name = "lb11",
///     });
///
///     var main = new HCloud.LoadBalancer("main", new()
///     {
///         Name = "my-load-balancer",
///         LoadBalancerType = name,
///         Location = "fsn1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetLoadBalancerType(ctx, &hcloud.GetLoadBalancerTypeArgs{
/// 			Id: pulumi.IntRef(1),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetLoadBalancerType(ctx, &hcloud.GetLoadBalancerTypeArgs{
/// 			Name: pulumi.StringRef("lb11"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewLoadBalancer(ctx, "main", &hcloud.LoadBalancerArgs{
/// 			Name:             pulumi.String("my-load-balancer"),
/// 			LoadBalancerType: pulumi.Any(name),
/// 			Location:         pulumi.String("fsn1"),
/// 		})
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetLoadBalancerTypeArgs;
/// import com.pulumi.hcloud.LoadBalancer;
/// import com.pulumi.hcloud.LoadBalancerArgs;
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
///         final var byId = HcloudFunctions.getLoadBalancerType(GetLoadBalancerTypeArgs.builder()
///             .id(1)
///             .build());
///
///         final var byName = HcloudFunctions.getLoadBalancerType(GetLoadBalancerTypeArgs.builder()
///             .name("lb11")
///             .build());
///
///         var main = new LoadBalancer("main", LoadBalancerArgs.builder()
///             .name("my-load-balancer")
///             .loadBalancerType(name)
///             .location("fsn1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:LoadBalancer
///     properties:
///       name: my-load-balancer
///       loadBalancerType: ${name}
///       location: fsn1
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getLoadBalancerType
///       arguments:
///         id: 1
///   byName:
///     fn::invoke:
///       function: hcloud:getLoadBalancerType
///       arguments:
///         name: lb11
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_load_balancer_type_get_load_balancer_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerTypeResult> getLoadBalancerType(
  GetLoadBalancerTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getLoadBalancerType:getLoadBalancerType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerTypeResult.fromMap(result);
}

/// Provides a list of available Hetzner Cloud Load Balancer Types.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getLoadBalancerTypes({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_load_balancer_types()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetLoadBalancerTypes.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetLoadBalancerTypes(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.hcloud.HcloudFunctions;
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
///         final var all = HcloudFunctions.getLoadBalancerTypes(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getLoadBalancerTypes
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerTypesResult> getLoadBalancerTypes({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getLoadBalancerTypes:getLoadBalancerTypes',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerTypesResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Load Balancers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const lb2 = hcloud.getLoadBalancers({});
/// const lb3 = hcloud.getLoadBalancers({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// lb2 = hcloud.get_load_balancers()
/// lb3 = hcloud.get_load_balancers(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb2 = HCloud.GetLoadBalancers.Invoke();
///
///     var lb3 = HCloud.GetLoadBalancers.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetLoadBalancers(ctx, &hcloud.GetLoadBalancersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetLoadBalancers(ctx, &hcloud.GetLoadBalancersArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetLoadBalancersArgs;
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
///         final var lb2 = HcloudFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
///             .build());
///
///         final var lb3 = HcloudFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   lb2:
///     fn::invoke:
///       function: hcloud:getLoadBalancers
///       arguments: {}
///   lb3:
///     fn::invoke:
///       function: hcloud:getLoadBalancers
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_load_balancers_get_load_balancers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancersResult> getLoadBalancers(
  GetLoadBalancersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getLoadBalancers:getLoadBalancers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancersResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Location.
///
/// Use this resource to get detailed information about a specific Location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getLocation({
///     id: 1,
/// });
/// const byName = hcloud.getLocation({
///     name: "fsn1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_location(id=1)
/// by_name = hcloud.get_location(name="fsn1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetLocation.Invoke(new()
///     {
///         Id = 1,
///     });
///
///     var byName = HCloud.GetLocation.Invoke(new()
///     {
///         Name = "fsn1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetLocation(ctx, &hcloud.GetLocationArgs{
/// 			Id: pulumi.IntRef(1),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetLocation(ctx, &hcloud.GetLocationArgs{
/// 			Name: pulumi.StringRef("fsn1"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetLocationArgs;
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
///         final var byId = HcloudFunctions.getLocation(GetLocationArgs.builder()
///             .id(1)
///             .build());
///
///         final var byName = HcloudFunctions.getLocation(GetLocationArgs.builder()
///             .name("fsn1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getLocation
///       arguments:
///         id: 1
///   byName:
///     fn::invoke:
///       function: hcloud:getLocation
///       arguments:
///         name: fsn1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_location_get_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocationResult> getLocation(
  GetLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getLocation:getLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationResult.fromMap(result);
}

/// Provides a list of available Hetzner Cloud Locations.
///
/// This resource may be useful to create highly available infrastructure, distributed across several locations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getLocations({});
/// const workers: hcloud.Server[] = [];
/// for (const range = {value: 0}; range.value < 5; range.value++) {
///     workers.push(new hcloud.Server(`workers-${range.value}`, {
///         name: `node${range.value}`,
///         image: "debian-12",
///         serverType: "cx23",
///         location: all.then(all => all.locations[range.value]).then(locations => locations.name),
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_locations()
/// workers = []
/// for range in [{"value": i} for i in range(0, 5)]:
///     workers.append(hcloud.Server(f"workers-{range['value']}",
///         name=f"node{range['value']}",
///         image="debian-12",
///         server_type="cx23",
///         location=all.locations[range["value"]]["name"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetLocations.Invoke();
///
///     var workers = new List<HCloud.Server>();
///     for (var rangeIndex = 0; rangeIndex < 5; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         workers.Add(new HCloud.Server($"workers-{range.Value}", new()
///         {
///             Name = $"node{range.Value}",
///             Image = "debian-12",
///             ServerType = "cx23",
///             Location = all.Apply(getLocationsResult => getLocationsResult.Locations)[range.Value].Apply(locations => locations.Name),
///         }));
///     }
/// });
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var all = HcloudFunctions.getLocations(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         for (var i = 0; i < 5; i++) {
///             new Server("workers-" + i, ServerArgs.builder()
///                 .name(String.format("node%s", range.value()))
///                 .image("debian-12")
///                 .serverType("cx23")
///                 .location(all.locations()[range.value()].name())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [options] Invoke options controlling this call.
Future<GetLocationsResult> getLocations({pulumi.InvokeOptions? options}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getLocations:getLocations',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud network.
/// This resource is useful if you want to use a non-terraform managed network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const network1 = hcloud.getNetwork({
///     id: 1234,
/// });
/// const network2 = hcloud.getNetwork({
///     name: "my-network",
/// });
/// const network3 = hcloud.getNetwork({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// network1 = hcloud.get_network(id=1234)
/// network2 = hcloud.get_network(name="my-network")
/// network3 = hcloud.get_network(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = HCloud.GetNetwork.Invoke(new()
///     {
///         Id = 1234,
///     });
///
///     var network2 = HCloud.GetNetwork.Invoke(new()
///     {
///         Name = "my-network",
///     });
///
///     var network3 = HCloud.GetNetwork.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupNetwork(ctx, &hcloud.LookupNetworkArgs{
/// 			Id: pulumi.IntRef(1234),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupNetwork(ctx, &hcloud.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("my-network"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupNetwork(ctx, &hcloud.LookupNetworkArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetNetworkArgs;
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
///         final var network1 = HcloudFunctions.getNetwork(GetNetworkArgs.builder()
///             .id(1234)
///             .build());
///
///         final var network2 = HcloudFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         final var network3 = HcloudFunctions.getNetwork(GetNetworkArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   network1:
///     fn::invoke:
///       function: hcloud:getNetwork
///       arguments:
///         id: '1234'
///   network2:
///     fn::invoke:
///       function: hcloud:getNetwork
///       arguments:
///         name: my-network
///   network3:
///     fn::invoke:
///       function: hcloud:getNetwork
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_network_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Networks.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const network2 = hcloud.getNetwork({});
/// const network3 = hcloud.getNetwork({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// network2 = hcloud.get_network()
/// network3 = hcloud.get_network(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network2 = HCloud.GetNetwork.Invoke();
///
///     var network3 = HCloud.GetNetwork.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupNetwork(ctx, &hcloud.LookupNetworkArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupNetwork(ctx, &hcloud.LookupNetworkArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetNetworkArgs;
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
///         final var network2 = HcloudFunctions.getNetwork(GetNetworkArgs.builder()
///             .build());
///
///         final var network3 = HcloudFunctions.getNetwork(GetNetworkArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   network2:
///     fn::invoke:
///       function: hcloud:getNetwork
///       arguments: {}
///   network3:
///     fn::invoke:
///       function: hcloud:getNetwork
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_networks_get_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Placement Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const samplePlacementGroup1 = hcloud.getPlacementGroup({
///     name: "sample-placement-group-1",
/// });
/// const samplePlacementGroup2 = hcloud.getPlacementGroup({
///     id: 4711,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// sample_placement_group1 = hcloud.get_placement_group(name="sample-placement-group-1")
/// sample_placement_group2 = hcloud.get_placement_group(id=4711)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var samplePlacementGroup1 = HCloud.GetPlacementGroup.Invoke(new()
///     {
///         Name = "sample-placement-group-1",
///     });
///
///     var samplePlacementGroup2 = HCloud.GetPlacementGroup.Invoke(new()
///     {
///         Id = 4711,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupPlacementGroup(ctx, &hcloud.LookupPlacementGroupArgs{
/// 			Name: pulumi.StringRef("sample-placement-group-1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupPlacementGroup(ctx, &hcloud.LookupPlacementGroupArgs{
/// 			Id: pulumi.IntRef(4711),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetPlacementGroupArgs;
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
///         final var samplePlacementGroup1 = HcloudFunctions.getPlacementGroup(GetPlacementGroupArgs.builder()
///             .name("sample-placement-group-1")
///             .build());
///
///         final var samplePlacementGroup2 = HcloudFunctions.getPlacementGroup(GetPlacementGroupArgs.builder()
///             .id(4711)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   samplePlacementGroup1:
///     fn::invoke:
///       function: hcloud:getPlacementGroup
///       arguments:
///         name: sample-placement-group-1
///   samplePlacementGroup2:
///     fn::invoke:
///       function: hcloud:getPlacementGroup
///       arguments:
///         id: '4711'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_placement_group_get_placement_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlacementGroupResult> getPlacementGroup(
  GetPlacementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getPlacementGroup:getPlacementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlacementGroupResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Placement Groups.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const samplePlacementGroup1 = hcloud.getPlacementGroups({});
/// const samplePlacementGroup2 = hcloud.getPlacementGroups({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// sample_placement_group1 = hcloud.get_placement_groups()
/// sample_placement_group2 = hcloud.get_placement_groups(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var samplePlacementGroup1 = HCloud.GetPlacementGroups.Invoke();
///
///     var samplePlacementGroup2 = HCloud.GetPlacementGroups.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetPlacementGroups(ctx, &hcloud.GetPlacementGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetPlacementGroups(ctx, &hcloud.GetPlacementGroupsArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetPlacementGroupsArgs;
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
///         final var samplePlacementGroup1 = HcloudFunctions.getPlacementGroups(GetPlacementGroupsArgs.builder()
///             .build());
///
///         final var samplePlacementGroup2 = HcloudFunctions.getPlacementGroups(GetPlacementGroupsArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   samplePlacementGroup1:
///     fn::invoke:
///       function: hcloud:getPlacementGroups
///       arguments: {}
///   samplePlacementGroup2:
///     fn::invoke:
///       function: hcloud:getPlacementGroups
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_placement_groups_get_placement_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlacementGroupsResult> getPlacementGroups(
  GetPlacementGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getPlacementGroups:getPlacementGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlacementGroupsResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud Primary IP.
///
/// This resource can be useful when you need to determine a Primary IP ID based on the IP address.
///
/// Side note:
///
/// If a server is getting created, it has to have a primary ip. If a server is getting created without defining primary ips, two of them (one ipv4 and one ipv6) getting created & attached.
/// Currently, Primary IPs can be only attached to servers.
///
/// ## Deprecations
///
/// ### `datacenter` attribute
///
/// The `datacenter` attribute is deprecated, use the `location` attribute instead.
///
/// See our the [API changelog](https://docs.hetzner.cloud/changelog#2025-12-16-phasing-out-datacenters) for more details.
///
/// &gt; Please upgrade to `v1.58.0+` of the provider to avoid issues once the Hetzner Cloud API no longer returns the `datacenter` attribute.
///
/// ## Example Usage
///
/// # Data Source: hcloud.PrimaryIp
///
/// Provides details about a Hetzner Cloud Primary IP.
/// This resource can be useful when you need to determine a Primary IP ID based on the IP address.
///
///
/// ### Additional Examples
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const ip1 = hcloud.getPrimaryIp({
///     ipAddress: "1.2.3.4",
/// });
/// const ip2 = hcloud.getPrimaryIp({
///     name: "primary_ip_1",
/// });
/// const ip3 = hcloud.getPrimaryIp({
///     withSelector: "key=value",
/// });
/// // Link a server to an existing primary IP
/// const serverTest = new hcloud.Server("server_test", {
///     name: "test-server",
///     image: "ubuntu-24.04",
///     serverType: "cx23",
///     datacenter: "fsn1-dc14",
///     labels: {
///         test: "tessst1",
///     },
///     publicNets: [{
///         ipv4: ip1HcloudPrimaryIp.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// ip1 = hcloud.get_primary_ip(ip_address="1.2.3.4")
/// ip2 = hcloud.get_primary_ip(name="primary_ip_1")
/// ip3 = hcloud.get_primary_ip(with_selector="key=value")
/// # Link a server to an existing primary IP
/// server_test = hcloud.Server("server_test",
///     name="test-server",
///     image="ubuntu-24.04",
///     server_type="cx23",
///     datacenter="fsn1-dc14",
///     labels={
///         "test": "tessst1",
///     },
///     public_nets=[{
///         "ipv4": ip1_hcloud_primary_ip["id"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ip1 = HCloud.GetPrimaryIp.Invoke(new()
///     {
///         IpAddress = "1.2.3.4",
///     });
///
///     var ip2 = HCloud.GetPrimaryIp.Invoke(new()
///     {
///         Name = "primary_ip_1",
///     });
///
///     var ip3 = HCloud.GetPrimaryIp.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
///     // Link a server to an existing primary IP
///     var serverTest = new HCloud.Server("server_test", new()
///     {
///         Name = "test-server",
///         Image = "ubuntu-24.04",
///         ServerType = "cx23",
///         Datacenter = "fsn1-dc14",
///         Labels =
///         {
///             { "test", "tessst1" },
///         },
///         PublicNets = new[]
///         {
///             new HCloud.Inputs.ServerPublicNetArgs
///             {
///                 Ipv4 = ip1HcloudPrimaryIp.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupPrimaryIp(ctx, &hcloud.LookupPrimaryIpArgs{
/// 			IpAddress: pulumi.StringRef("1.2.3.4"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupPrimaryIp(ctx, &hcloud.LookupPrimaryIpArgs{
/// 			Name: pulumi.StringRef("primary_ip_1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupPrimaryIp(ctx, &hcloud.LookupPrimaryIpArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Link a server to an existing primary IP
/// 		_, err = hcloud.NewServer(ctx, "server_test", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("test-server"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Datacenter: pulumi.String("fsn1-dc14"),
/// 			Labels: pulumi.StringMap{
/// 				"test": pulumi.String("tessst1"),
/// 			},
/// 			PublicNets: hcloud.ServerPublicNetArray{
/// 				&hcloud.ServerPublicNetArgs{
/// 					Ipv4: pulumi.Any(ip1HcloudPrimaryIp.Id),
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetPrimaryIpArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerPublicNetArgs;
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
///         final var ip1 = HcloudFunctions.getPrimaryIp(GetPrimaryIpArgs.builder()
///             .ipAddress("1.2.3.4")
///             .build());
///
///         final var ip2 = HcloudFunctions.getPrimaryIp(GetPrimaryIpArgs.builder()
///             .name("primary_ip_1")
///             .build());
///
///         final var ip3 = HcloudFunctions.getPrimaryIp(GetPrimaryIpArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///         // Link a server to an existing primary IP
///         var serverTest = new Server("serverTest", ServerArgs.builder()
///             .name("test-server")
///             .image("ubuntu-24.04")
///             .serverType("cx23")
///             .datacenter("fsn1-dc14")
///             .labels(Map.of("test", "tessst1"))
///             .publicNets(ServerPublicNetArgs.builder()
///                 .ipv4(ip1HcloudPrimaryIp.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Link a server to an existing primary IP
///   serverTest:
///     type: hcloud:Server
///     name: server_test
///     properties:
///       name: test-server
///       image: ubuntu-24.04
///       serverType: cx23
///       datacenter: fsn1-dc14
///       labels:
///         test: tessst1
///       publicNets:
///         - ipv4: ${ip1HcloudPrimaryIp.id}
/// variables:
///   ip1:
///     fn::invoke:
///       function: hcloud:getPrimaryIp
///       arguments:
///         ipAddress: 1.2.3.4
///   ip2:
///     fn::invoke:
///       function: hcloud:getPrimaryIp
///       arguments:
///         name: primary_ip_1
///   ip3:
///     fn::invoke:
///       function: hcloud:getPrimaryIp
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_primary_ip_get_primary_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrimaryIpResult> getPrimaryIp(
  GetPrimaryIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getPrimaryIp:getPrimaryIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrimaryIpResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Primary IPs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const ip2 = hcloud.getPrimaryIps({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// ip2 = hcloud.get_primary_ips(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ip2 = HCloud.GetPrimaryIps.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetPrimaryIps(ctx, &hcloud.GetPrimaryIpsArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetPrimaryIpsArgs;
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
///         final var ip2 = HcloudFunctions.getPrimaryIps(GetPrimaryIpsArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ip2:
///     fn::invoke:
///       function: hcloud:getPrimaryIps
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_primary_ips_get_primary_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrimaryIpsResult> getPrimaryIps(
  GetPrimaryIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getPrimaryIps:getPrimaryIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrimaryIpsResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud Server.
/// This resource is useful if you want to use a non-terraform managed server.
///
/// ## Deprecations
///
/// ### `datacenter` attribute
///
/// The `datacenter` attribute is deprecated, use the `location` attribute instead.
///
/// See our the [API changelog](https://docs.hetzner.cloud/changelog#2025-12-16-phasing-out-datacenters) for more details.
///
/// &gt; Please upgrade to `v1.58.0+` of the provider to avoid issues once the Hetzner Cloud API no longer returns the `datacenter` attribute.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const s1 = hcloud.getServer({
///     name: "my-server",
/// });
/// const s2 = hcloud.getServer({
///     id: 123,
/// });
/// const s3 = hcloud.getServer({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// s1 = hcloud.get_server(name="my-server")
/// s2 = hcloud.get_server(id=123)
/// s3 = hcloud.get_server(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s1 = HCloud.GetServer.Invoke(new()
///     {
///         Name = "my-server",
///     });
///
///     var s2 = HCloud.GetServer.Invoke(new()
///     {
///         Id = 123,
///     });
///
///     var s3 = HCloud.GetServer.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupServer(ctx, &hcloud.LookupServerArgs{
/// 			Name: pulumi.StringRef("my-server"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupServer(ctx, &hcloud.LookupServerArgs{
/// 			Id: pulumi.IntRef(123),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupServer(ctx, &hcloud.LookupServerArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetServerArgs;
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
///         final var s1 = HcloudFunctions.getServer(GetServerArgs.builder()
///             .name("my-server")
///             .build());
///
///         final var s2 = HcloudFunctions.getServer(GetServerArgs.builder()
///             .id(123)
///             .build());
///
///         final var s3 = HcloudFunctions.getServer(GetServerArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   s1:
///     fn::invoke:
///       function: hcloud:getServer
///       arguments:
///         name: my-server
///   s2:
///     fn::invoke:
///       function: hcloud:getServer
///       arguments:
///         id: '123'
///   s3:
///     fn::invoke:
///       function: hcloud:getServer
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_server_get_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerResult> getServer(
  GetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getServer:getServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud Server Type.
///
/// Use this resource to get detailed information about specific Server Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getServerType({
///     id: 22,
/// });
/// const byName = hcloud.getServerType({
///     name: "cx23",
/// });
/// const main = new hcloud.Server("main", {
///     name: "my-server",
///     location: "fsn1",
///     image: "debian-12",
///     serverType: byName.then(byName => byName.name),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_server_type(id=22)
/// by_name = hcloud.get_server_type(name="cx23")
/// main = hcloud.Server("main",
///     name="my-server",
///     location="fsn1",
///     image="debian-12",
///     server_type=by_name.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetServerType.Invoke(new()
///     {
///         Id = 22,
///     });
///
///     var byName = HCloud.GetServerType.Invoke(new()
///     {
///         Name = "cx23",
///     });
///
///     var main = new HCloud.Server("main", new()
///     {
///         Name = "my-server",
///         Location = "fsn1",
///         Image = "debian-12",
///         ServerType = byName.Apply(getServerTypeResult => getServerTypeResult.Name),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetServerType(ctx, &hcloud.GetServerTypeArgs{
/// 			Id: pulumi.IntRef(22),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		byName, err := hcloud.GetServerType(ctx, &hcloud.GetServerTypeArgs{
/// 			Name: pulumi.StringRef("cx23"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "main", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("my-server"),
/// 			Location:   pulumi.String("fsn1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String(byName.Name),
/// 		})
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetServerTypeArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
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
///         final var byId = HcloudFunctions.getServerType(GetServerTypeArgs.builder()
///             .id(22)
///             .build());
///
///         final var byName = HcloudFunctions.getServerType(GetServerTypeArgs.builder()
///             .name("cx23")
///             .build());
///
///         var main = new Server("main", ServerArgs.builder()
///             .name("my-server")
///             .location("fsn1")
///             .image("debian-12")
///             .serverType(byName.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:Server
///     properties:
///       name: my-server
///       location: fsn1
///       image: debian-12
///       serverType: ${byName.name}
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getServerType
///       arguments:
///         id: 22
///   byName:
///     fn::invoke:
///       function: hcloud:getServerType
///       arguments:
///         name: cx23
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_server_type_get_server_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerTypeResult> getServerType(
  GetServerTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getServerType:getServerType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTypeResult.fromMap(result);
}

/// Provides a list of available Hetzner Cloud Server Types.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getServerTypes({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_server_types()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetServerTypes.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetServerTypes(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.hcloud.HcloudFunctions;
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
///         final var all = HcloudFunctions.getServerTypes(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getServerTypes
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetServerTypesResult> getServerTypes({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getServerTypes:getServerTypes',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTypesResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Servers.
/// This resource is useful if you want to use non-terraform managed servers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const s3 = hcloud.getServers({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// s3 = hcloud.get_servers(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = HCloud.GetServers.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetServers(ctx, &hcloud.GetServersArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetServersArgs;
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
///         final var s3 = HcloudFunctions.getServers(GetServersArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   s3:
///     fn::invoke:
///       function: hcloud:getServers
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_servers_get_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServersResult> getServers(
  GetServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getServers:getServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServersResult.fromMap(result);
}

/// Provides details about a specific Hetzner Cloud SSH Key.
///
/// This resource is useful if you want to use a non-terraform managed SSH Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getSshKey({
///     id: 24332897,
/// });
/// const byName = hcloud.getSshKey({
///     name: "my-ssh-key",
/// });
/// const byFingerprint = hcloud.getSshKey({
///     fingerprint: "55:58:dc:bd:61:6e:7d:24:07:a7:7d:9b:be:99:83:a8",
/// });
/// const byLabel = hcloud.getSshKey({
///     withSelector: "key=value",
/// });
/// const main = new hcloud.Server("main", {sshKeys: [
///     byId.then(byId => byId.id),
///     byName.then(byName => byName.id),
///     byFingerprint.then(byFingerprint => byFingerprint.id),
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_ssh_key(id=24332897)
/// by_name = hcloud.get_ssh_key(name="my-ssh-key")
/// by_fingerprint = hcloud.get_ssh_key(fingerprint="55:58:dc:bd:61:6e:7d:24:07:a7:7d:9b:be:99:83:a8")
/// by_label = hcloud.get_ssh_key(with_selector="key=value")
/// main = hcloud.Server("main", ssh_keys=[
///     by_id.id,
///     by_name.id,
///     by_fingerprint.id,
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetSshKey.Invoke(new()
///     {
///         Id = 24332897,
///     });
///
///     var byName = HCloud.GetSshKey.Invoke(new()
///     {
///         Name = "my-ssh-key",
///     });
///
///     var byFingerprint = HCloud.GetSshKey.Invoke(new()
///     {
///         Fingerprint = "55:58:dc:bd:61:6e:7d:24:07:a7:7d:9b:be:99:83:a8",
///     });
///
///     var byLabel = HCloud.GetSshKey.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
///     var main = new HCloud.Server("main", new()
///     {
///         SshKeys = new[]
///         {
///             byId.Apply(getSshKeyResult => getSshKeyResult.Id),
///             byName.Apply(getSshKeyResult => getSshKeyResult.Id),
///             byFingerprint.Apply(getSshKeyResult => getSshKeyResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		byId, err := hcloud.LookupSshKey(ctx, &hcloud.LookupSshKeyArgs{
/// 			Id: pulumi.IntRef(24332897),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		byName, err := hcloud.LookupSshKey(ctx, &hcloud.LookupSshKeyArgs{
/// 			Name: pulumi.StringRef("my-ssh-key"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		byFingerprint, err := hcloud.LookupSshKey(ctx, &hcloud.LookupSshKeyArgs{
/// 			Fingerprint: pulumi.StringRef("55:58:dc:bd:61:6e:7d:24:07:a7:7d:9b:be:99:83:a8"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupSshKey(ctx, &hcloud.LookupSshKeyArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "main", &hcloud.ServerArgs{
/// 			SshKeys: pulumi.StringArray{
/// 				pulumi.Int(byId.Id),
/// 				pulumi.Int(byName.Id),
/// 				pulumi.Int(byFingerprint.Id),
/// 			},
/// 		})
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetSshKeyArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
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
///         final var byId = HcloudFunctions.getSshKey(GetSshKeyArgs.builder()
///             .id(24332897)
///             .build());
///
///         final var byName = HcloudFunctions.getSshKey(GetSshKeyArgs.builder()
///             .name("my-ssh-key")
///             .build());
///
///         final var byFingerprint = HcloudFunctions.getSshKey(GetSshKeyArgs.builder()
///             .fingerprint("55:58:dc:bd:61:6e:7d:24:07:a7:7d:9b:be:99:83:a8")
///             .build());
///
///         final var byLabel = HcloudFunctions.getSshKey(GetSshKeyArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///         var main = new Server("main", ServerArgs.builder()
///             .sshKeys(
///                 byId.id(),
///                 byName.id(),
///                 byFingerprint.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:Server
///     properties:
///       sshKeys:
///         - ${byId.id}
///         - ${byName.id}
///         - ${byFingerprint.id}
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getSshKey
///       arguments:
///         id: 2.4332897e+07
///   byName:
///     fn::invoke:
///       function: hcloud:getSshKey
///       arguments:
///         name: my-ssh-key
///   byFingerprint:
///     fn::invoke:
///       function: hcloud:getSshKey
///       arguments:
///         fingerprint: 55:58:dc:bd:61:6e:7d:24:07:a7:7d:9b:be:99:83:a8
///   byLabel:
///     fn::invoke:
///       function: hcloud:getSshKey
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshKeyResult> getSshKey(
  GetSshKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getSshKey:getSshKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshKeyResult.fromMap(result);
}

/// Provides a list of Hetzner Cloud SSH Keys.
///
/// This resource is useful if you want to use a non-terraform managed SSH Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getSshKeys({});
/// const byLabel = hcloud.getSshKeys({
///     withSelector: "foo=bar",
/// });
/// const main = new hcloud.Server("main", {sshKeys: all.then(all => all.sshKeys.map(__item => __item.name))});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_ssh_keys()
/// by_label = hcloud.get_ssh_keys(with_selector="foo=bar")
/// main = hcloud.Server("main", ssh_keys=[__item.name for __item in all.ssh_keys])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetSshKeys.Invoke();
///
///     var byLabel = HCloud.GetSshKeys.Invoke(new()
///     {
///         WithSelector = "foo=bar",
///     });
///
///     var main = new HCloud.Server("main", new()
///     {
///         SshKeys = all.Apply(getSshKeysResult => getSshKeysResult.SshKeys).Select(__item => __item.Name).ToList(),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := hcloud.GetSshKeys(ctx, &hcloud.GetSshKeysArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetSshKeys(ctx, &hcloud.GetSshKeysArgs{
/// 			WithSelector: pulumi.StringRef("foo=bar"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var splat0 []*string
/// 		for _, val0 := range all.SshKeys {
/// 			splat0 = append(splat0, val0.Name)
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "main", &hcloud.ServerArgs{
/// 			SshKeys: splat0,
/// 		})
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetSshKeysArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
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
///         final var all = HcloudFunctions.getSshKeys(GetSshKeysArgs.builder()
///             .build());
///
///         final var byLabel = HcloudFunctions.getSshKeys(GetSshKeysArgs.builder()
///             .withSelector("foo=bar")
///             .build());
///
///         var main = new Server("main", ServerArgs.builder()
///             .sshKeys(all.sshKeys().stream().map(element -> element.name()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ssh_keys_get_ssh_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshKeysResult> getSshKeys(
  GetSshKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getSshKeys:getSshKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshKeysResult.fromMap(result);
}

/// Provides details about a Hetzner Storage Box.
///
/// See the [Storage Boxes API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-boxes) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getStorageBox({
///     id: 1333,
/// });
/// const byName = hcloud.getStorageBox({
///     name: "backups",
/// });
/// const byLabelSelector = hcloud.getStorageBox({
///     withSelector: "env=production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_storage_box(id=1333)
/// by_name = hcloud.get_storage_box(name="backups")
/// by_label_selector = hcloud.get_storage_box(with_selector="env=production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetStorageBox.Invoke(new()
///     {
///         Id = 1333,
///     });
///
///     var byName = HCloud.GetStorageBox.Invoke(new()
///     {
///         Name = "backups",
///     });
///
///     var byLabelSelector = HCloud.GetStorageBox.Invoke(new()
///     {
///         WithSelector = "env=production",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupStorageBox(ctx, &hcloud.LookupStorageBoxArgs{
/// 			Id: pulumi.IntRef(1333),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupStorageBox(ctx, &hcloud.LookupStorageBoxArgs{
/// 			Name: pulumi.StringRef("backups"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupStorageBox(ctx, &hcloud.LookupStorageBoxArgs{
/// 			WithSelector: pulumi.StringRef("env=production"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetStorageBoxArgs;
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
///         final var byId = HcloudFunctions.getStorageBox(GetStorageBoxArgs.builder()
///             .id(1333)
///             .build());
///
///         final var byName = HcloudFunctions.getStorageBox(GetStorageBoxArgs.builder()
///             .name("backups")
///             .build());
///
///         final var byLabelSelector = HcloudFunctions.getStorageBox(GetStorageBoxArgs.builder()
///             .withSelector("env=production")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getStorageBox
///       arguments:
///         id: 1333
///   byName:
///     fn::invoke:
///       function: hcloud:getStorageBox
///       arguments:
///         name: backups
///   byLabelSelector:
///     fn::invoke:
///       function: hcloud:getStorageBox
///       arguments:
///         withSelector: env=production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_box_get_storage_box_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxResult> getStorageBox(
  GetStorageBoxArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBox:getStorageBox',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxResult.fromMap(result);
}

/// Provides details about a Hetzner Storage Box Snapshot.
///
/// See the [Storage Box Snapshots API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-snapshots) for more details.
///
/// ## Example Usage
///
///
/// ```yaml
/// configuration:
///   storageBoxId:
///     type: dynamic
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getStorageBoxSnapshot
///       arguments:
///         storageBoxId: ${storageBoxId}
///         id: 2
///   byName:
///     fn::invoke:
///       function: hcloud:getStorageBoxSnapshot
///       arguments:
///         storageBoxId: ${storageBoxId}
///         name: 2025-02-12T11-35-19
///   byLabelSelector:
///     fn::invoke:
///       function: hcloud:getStorageBox
///       arguments:
///         storageBoxId: ${storageBoxId}
///         withSelector: env=production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_box_snapshot_get_storage_box_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxSnapshotResult> getStorageBoxSnapshot(
  GetStorageBoxSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxSnapshot:getStorageBoxSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxSnapshotResult.fromMap(result);
}

/// Provides a list of Hetzner Storage Box Snapshots.
///
/// See the [Storage Box Snapshots API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-snapshots) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const config = new pulumi.Config();
/// const storageBoxId = config.requireObject<any>("storageBoxId");
/// const all = hcloud.getStorageBoxSnapshots({
///     storageBoxId: storageBoxId,
/// });
/// const byLabelSelector = hcloud.getStorageBoxSnapshots({
///     storageBoxId: storageBoxId,
///     withSelector: "env=production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// config = pulumi.Config()
/// storage_box_id = config.require_object("storageBoxId")
/// all = hcloud.get_storage_box_snapshots(storage_box_id=storage_box_id)
/// by_label_selector = hcloud.get_storage_box_snapshots(storage_box_id=storage_box_id,
///     with_selector="env=production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var storageBoxId = config.RequireObject<dynamic>("storageBoxId");
///     var all = HCloud.GetStorageBoxSnapshots.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///     });
///
///     var byLabelSelector = HCloud.GetStorageBoxSnapshots.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///         WithSelector = "env=production",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		storageBoxId := cfg.RequireObject("storageBoxId")
/// 		_, err := hcloud.GetStorageBoxSnapshots(ctx, &hcloud.GetStorageBoxSnapshotsArgs{
/// 			StorageBoxId: storageBoxId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetStorageBoxSnapshots(ctx, &hcloud.GetStorageBoxSnapshotsArgs{
/// 			StorageBoxId: storageBoxId,
/// 			WithSelector: pulumi.StringRef("env=production"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetStorageBoxSnapshotsArgs;
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
///         final var config = ctx.config();
///         final var storageBoxId = config.get("storageBoxId");
///         final var all = HcloudFunctions.getStorageBoxSnapshots(GetStorageBoxSnapshotsArgs.builder()
///             .storageBoxId(storageBoxId)
///             .build());
///
///         final var byLabelSelector = HcloudFunctions.getStorageBoxSnapshots(GetStorageBoxSnapshotsArgs.builder()
///             .storageBoxId(storageBoxId)
///             .withSelector("env=production")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   storageBoxId:
///     type: dynamic
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getStorageBoxSnapshots
///       arguments:
///         storageBoxId: ${storageBoxId}
///   byLabelSelector:
///     fn::invoke:
///       function: hcloud:getStorageBoxSnapshots
///       arguments:
///         storageBoxId: ${storageBoxId}
///         withSelector: env=production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_box_snapshots_get_storage_box_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxSnapshotsResult> getStorageBoxSnapshots(
  GetStorageBoxSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxSnapshots:getStorageBoxSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxSnapshotsResult.fromMap(result);
}

/// Provides details about a Hetzner Storage Box Subaccount.
///
/// See the [Storage Box Subaccounts API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-subaccounts) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const config = new pulumi.Config();
/// const storageBoxId = config.requireObject<any>("storageBoxId");
/// const byId = hcloud.getStorageBoxSubaccount({
///     storageBoxId: storageBoxId,
///     id: 2,
/// });
/// const byName = hcloud.getStorageBoxSubaccount({
///     storageBoxId: storageBoxId,
///     name: "badger",
/// });
/// const byUsername = hcloud.getStorageBoxSubaccount({
///     storageBoxId: storageBoxId,
///     username: "u507137-sub1",
/// });
/// const byLabelSelector = hcloud.getStorageBoxSubaccount({
///     storageBoxId: storageBoxId,
///     withSelector: "team=billing",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// config = pulumi.Config()
/// storage_box_id = config.require_object("storageBoxId")
/// by_id = hcloud.get_storage_box_subaccount(storage_box_id=storage_box_id,
///     id=2)
/// by_name = hcloud.get_storage_box_subaccount(storage_box_id=storage_box_id,
///     name="badger")
/// by_username = hcloud.get_storage_box_subaccount(storage_box_id=storage_box_id,
///     username="u507137-sub1")
/// by_label_selector = hcloud.get_storage_box_subaccount(storage_box_id=storage_box_id,
///     with_selector="team=billing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var storageBoxId = config.RequireObject<dynamic>("storageBoxId");
///     var byId = HCloud.GetStorageBoxSubaccount.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///         Id = 2,
///     });
///
///     var byName = HCloud.GetStorageBoxSubaccount.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///         Name = "badger",
///     });
///
///     var byUsername = HCloud.GetStorageBoxSubaccount.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///         Username = "u507137-sub1",
///     });
///
///     var byLabelSelector = HCloud.GetStorageBoxSubaccount.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///         WithSelector = "team=billing",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		storageBoxId := cfg.RequireObject("storageBoxId")
/// 		_, err := hcloud.LookupStorageBoxSubaccount(ctx, &hcloud.LookupStorageBoxSubaccountArgs{
/// 			StorageBoxId: storageBoxId,
/// 			Id:           pulumi.IntRef(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupStorageBoxSubaccount(ctx, &hcloud.LookupStorageBoxSubaccountArgs{
/// 			StorageBoxId: storageBoxId,
/// 			Name:         pulumi.StringRef("badger"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupStorageBoxSubaccount(ctx, &hcloud.LookupStorageBoxSubaccountArgs{
/// 			StorageBoxId: storageBoxId,
/// 			Username:     pulumi.StringRef("u507137-sub1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupStorageBoxSubaccount(ctx, &hcloud.LookupStorageBoxSubaccountArgs{
/// 			StorageBoxId: storageBoxId,
/// 			WithSelector: pulumi.StringRef("team=billing"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetStorageBoxSubaccountArgs;
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
///         final var config = ctx.config();
///         final var storageBoxId = config.get("storageBoxId");
///         final var byId = HcloudFunctions.getStorageBoxSubaccount(GetStorageBoxSubaccountArgs.builder()
///             .storageBoxId(storageBoxId)
///             .id(2)
///             .build());
///
///         final var byName = HcloudFunctions.getStorageBoxSubaccount(GetStorageBoxSubaccountArgs.builder()
///             .storageBoxId(storageBoxId)
///             .name("badger")
///             .build());
///
///         final var byUsername = HcloudFunctions.getStorageBoxSubaccount(GetStorageBoxSubaccountArgs.builder()
///             .storageBoxId(storageBoxId)
///             .username("u507137-sub1")
///             .build());
///
///         final var byLabelSelector = HcloudFunctions.getStorageBoxSubaccount(GetStorageBoxSubaccountArgs.builder()
///             .storageBoxId(storageBoxId)
///             .withSelector("team=billing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   storageBoxId:
///     type: dynamic
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getStorageBoxSubaccount
///       arguments:
///         storageBoxId: ${storageBoxId}
///         id: 2
///   byName:
///     fn::invoke:
///       function: hcloud:getStorageBoxSubaccount
///       arguments:
///         storageBoxId: ${storageBoxId}
///         name: badger
///   byUsername:
///     fn::invoke:
///       function: hcloud:getStorageBoxSubaccount
///       arguments:
///         storageBoxId: ${storageBoxId}
///         username: u507137-sub1
///   byLabelSelector:
///     fn::invoke:
///       function: hcloud:getStorageBoxSubaccount
///       arguments:
///         storageBoxId: ${storageBoxId}
///         withSelector: team=billing
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_box_subaccount_get_storage_box_subaccount_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxSubaccountResult> getStorageBoxSubaccount(
  GetStorageBoxSubaccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxSubaccount:getStorageBoxSubaccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxSubaccountResult.fromMap(result);
}

/// Provides a list of Hetzner Storage Box Subaccounts.
///
/// See the [Storage Box Subaccounts API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-subaccounts) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const config = new pulumi.Config();
/// const storageBoxId = config.requireObject<any>("storageBoxId");
/// const all = hcloud.getStorageBoxSubaccounts({
///     storageBoxId: storageBoxId,
/// });
/// const byLabelSelector = hcloud.getStorageBoxSubaccounts({
///     storageBoxId: storageBoxId,
///     withSelector: "team=billing",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// config = pulumi.Config()
/// storage_box_id = config.require_object("storageBoxId")
/// all = hcloud.get_storage_box_subaccounts(storage_box_id=storage_box_id)
/// by_label_selector = hcloud.get_storage_box_subaccounts(storage_box_id=storage_box_id,
///     with_selector="team=billing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var storageBoxId = config.RequireObject<dynamic>("storageBoxId");
///     var all = HCloud.GetStorageBoxSubaccounts.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///     });
///
///     var byLabelSelector = HCloud.GetStorageBoxSubaccounts.Invoke(new()
///     {
///         StorageBoxId = storageBoxId,
///         WithSelector = "team=billing",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		storageBoxId := cfg.RequireObject("storageBoxId")
/// 		_, err := hcloud.GetStorageBoxSubaccounts(ctx, &hcloud.GetStorageBoxSubaccountsArgs{
/// 			StorageBoxId: storageBoxId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetStorageBoxSubaccounts(ctx, &hcloud.GetStorageBoxSubaccountsArgs{
/// 			StorageBoxId: storageBoxId,
/// 			WithSelector: pulumi.StringRef("team=billing"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetStorageBoxSubaccountsArgs;
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
///         final var config = ctx.config();
///         final var storageBoxId = config.get("storageBoxId");
///         final var all = HcloudFunctions.getStorageBoxSubaccounts(GetStorageBoxSubaccountsArgs.builder()
///             .storageBoxId(storageBoxId)
///             .build());
///
///         final var byLabelSelector = HcloudFunctions.getStorageBoxSubaccounts(GetStorageBoxSubaccountsArgs.builder()
///             .storageBoxId(storageBoxId)
///             .withSelector("team=billing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   storageBoxId:
///     type: dynamic
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getStorageBoxSubaccounts
///       arguments:
///         storageBoxId: ${storageBoxId}
///   byLabelSelector:
///     fn::invoke:
///       function: hcloud:getStorageBoxSubaccounts
///       arguments:
///         storageBoxId: ${storageBoxId}
///         withSelector: team=billing
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_box_subaccounts_get_storage_box_subaccounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxSubaccountsResult> getStorageBoxSubaccounts(
  GetStorageBoxSubaccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxSubaccounts:getStorageBoxSubaccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxSubaccountsResult.fromMap(result);
}

/// Provides details about a Hetzner Storage Box Type.
///
/// See the [Storage Box Type API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-types) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getStorageBoxType({
///     id: 1333,
/// });
/// const byName = hcloud.getStorageBoxType({
///     name: "bx11",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_storage_box_type(id=1333)
/// by_name = hcloud.get_storage_box_type(name="bx11")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetStorageBoxType.Invoke(new()
///     {
///         Id = 1333,
///     });
///
///     var byName = HCloud.GetStorageBoxType.Invoke(new()
///     {
///         Name = "bx11",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetStorageBoxType(ctx, &hcloud.GetStorageBoxTypeArgs{
/// 			Id: pulumi.IntRef(1333),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetStorageBoxType(ctx, &hcloud.GetStorageBoxTypeArgs{
/// 			Name: pulumi.StringRef("bx11"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetStorageBoxTypeArgs;
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
///         final var byId = HcloudFunctions.getStorageBoxType(GetStorageBoxTypeArgs.builder()
///             .id(1333)
///             .build());
///
///         final var byName = HcloudFunctions.getStorageBoxType(GetStorageBoxTypeArgs.builder()
///             .name("bx11")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getStorageBoxType
///       arguments:
///         id: 1333
///   byName:
///     fn::invoke:
///       function: hcloud:getStorageBoxType
///       arguments:
///         name: bx11
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_box_type_get_storage_box_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxTypeResult> getStorageBoxType(
  GetStorageBoxTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxType:getStorageBoxType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxTypeResult.fromMap(result);
}

/// Provides a list of Hetzner Storage Box Types.
///
/// See the [Storage Box Type API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-types) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getStorageBoxTypes({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_storage_box_types()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetStorageBoxTypes.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetStorageBoxTypes(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.hcloud.HcloudFunctions;
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
///         final var all = HcloudFunctions.getStorageBoxTypes(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getStorageBoxTypes
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetStorageBoxTypesResult> getStorageBoxTypes({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxTypes:getStorageBoxTypes',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxTypesResult.fromMap(result);
}

/// Provides a list of Hetzner Storage Boxes.
///
/// See the [Storage Boxes API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-boxes) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getStorageBoxes({});
/// const byLabelSelector = hcloud.getStorageBoxes({
///     withSelector: "env=production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_storage_boxes()
/// by_label_selector = hcloud.get_storage_boxes(with_selector="env=production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetStorageBoxes.Invoke();
///
///     var byLabelSelector = HCloud.GetStorageBoxes.Invoke(new()
///     {
///         WithSelector = "env=production",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetStorageBoxes(ctx, &hcloud.GetStorageBoxesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetStorageBoxes(ctx, &hcloud.GetStorageBoxesArgs{
/// 			WithSelector: pulumi.StringRef("env=production"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetStorageBoxesArgs;
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
///         final var all = HcloudFunctions.getStorageBoxes(GetStorageBoxesArgs.builder()
///             .build());
///
///         final var byLabelSelector = HcloudFunctions.getStorageBoxes(GetStorageBoxesArgs.builder()
///             .withSelector("env=production")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getStorageBoxes
///       arguments: {}
///   byLabelSelector:
///     fn::invoke:
///       function: hcloud:getStorageBoxes
///       arguments:
///         withSelector: env=production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_storage_boxes_get_storage_boxes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageBoxesResult> getStorageBoxes(
  GetStorageBoxesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getStorageBoxes:getStorageBoxes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageBoxesResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud volume.
/// This resource is useful if you want to use a non-terraform managed volume.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const volume1 = hcloud.getVolume({
///     id: 1234,
/// });
/// const volume2 = hcloud.getVolume({
///     name: "my-volume",
/// });
/// const volume3 = hcloud.getVolume({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// volume1 = hcloud.get_volume(id=1234)
/// volume2 = hcloud.get_volume(name="my-volume")
/// volume3 = hcloud.get_volume(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume1 = HCloud.GetVolume.Invoke(new()
///     {
///         Id = 1234,
///     });
///
///     var volume2 = HCloud.GetVolume.Invoke(new()
///     {
///         Name = "my-volume",
///     });
///
///     var volume3 = HCloud.GetVolume.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupVolume(ctx, &hcloud.LookupVolumeArgs{
/// 			Id: pulumi.IntRef(1234),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupVolume(ctx, &hcloud.LookupVolumeArgs{
/// 			Name: pulumi.StringRef("my-volume"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupVolume(ctx, &hcloud.LookupVolumeArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetVolumeArgs;
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
///         final var volume1 = HcloudFunctions.getVolume(GetVolumeArgs.builder()
///             .id(1234)
///             .build());
///
///         final var volume2 = HcloudFunctions.getVolume(GetVolumeArgs.builder()
///             .name("my-volume")
///             .build());
///
///         final var volume3 = HcloudFunctions.getVolume(GetVolumeArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   volume1:
///     fn::invoke:
///       function: hcloud:getVolume
///       arguments:
///         id: '1234'
///   volume2:
///     fn::invoke:
///       function: hcloud:getVolume
///       arguments:
///         name: my-volume
///   volume3:
///     fn::invoke:
///       function: hcloud:getVolume
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volume_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getVolume:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

/// Provides details about multiple Hetzner Cloud Volumes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const volume_ = hcloud.getVolumes({});
/// const volume3 = hcloud.getVolumes({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// volume_ = hcloud.get_volumes()
/// volume3 = hcloud.get_volumes(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume_ = HCloud.GetVolumes.Invoke();
///
///     var volume3 = HCloud.GetVolumes.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetVolumes(ctx, &hcloud.GetVolumesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetVolumes(ctx, &hcloud.GetVolumesArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetVolumesArgs;
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
///         final var volume_ = HcloudFunctions.getVolumes(GetVolumesArgs.builder()
///             .build());
///
///         final var volume3 = HcloudFunctions.getVolumes(GetVolumesArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   volume_:
///     fn::invoke:
///       function: hcloud:getVolumes
///       arguments: {}
///   volume3:
///     fn::invoke:
///       function: hcloud:getVolumes
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volumes_get_volumes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumesResult> getVolumes(
  GetVolumesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getVolumes:getVolumes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumesResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud Zone.
///
/// For Internationalized domain names (IDN), see the `provider::hcloud::idna` function.
///
/// See the [Zones API documentation](https://docs.hetzner.cloud/reference/cloud#zones) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const byId = hcloud.getZone({
///     id: 1234,
/// });
/// const byName = hcloud.getZone({
///     name: "example.com",
/// });
/// const byLabel = hcloud.getZone({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// by_id = hcloud.get_zone(id=1234)
/// by_name = hcloud.get_zone(name="example.com")
/// by_label = hcloud.get_zone(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byId = HCloud.GetZone.Invoke(new()
///     {
///         Id = 1234,
///     });
///
///     var byName = HCloud.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///     });
///
///     var byLabel = HCloud.GetZone.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.LookupZone(ctx, &hcloud.LookupZoneArgs{
/// 			Id: pulumi.IntRef(1234),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupZone(ctx, &hcloud.LookupZoneArgs{
/// 			Name: pulumi.StringRef("example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupZone(ctx, &hcloud.LookupZoneArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetZoneArgs;
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
///         final var byId = HcloudFunctions.getZone(GetZoneArgs.builder()
///             .id(1234)
///             .build());
///
///         final var byName = HcloudFunctions.getZone(GetZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///         final var byLabel = HcloudFunctions.getZone(GetZoneArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byId:
///     fn::invoke:
///       function: hcloud:getZone
///       arguments:
///         id: 1234
///   byName:
///     fn::invoke:
///       function: hcloud:getZone
///       arguments:
///         name: example.com
///   byLabel:
///     fn::invoke:
///       function: hcloud:getZone
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_zone_get_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getZone:getZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}

/// Provides details about a Hetzner Cloud Zone Resource Record Set (RRSet).
///
/// See the [Zone RRSets API documentation](https://docs.hetzner.cloud/reference/cloud#zone-rrsets) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const example = hcloud.getZone({
///     name: "example.com",
/// });
/// const byId = example.then(example => hcloud.getZoneRrset({
///     zone: example.name,
///     id: "www/A",
/// }));
/// const byNameAndType = example.then(example => hcloud.getZoneRrset({
///     zone: example.name,
///     name: "www",
///     type: "A",
/// }));
/// const byLabel = example.then(example => hcloud.getZoneRrset({
///     zone: example.name,
///     withSelector: "key=value",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// example = hcloud.get_zone(name="example.com")
/// by_id = hcloud.get_zone_rrset(zone=example.name,
///     id="www/A")
/// by_name_and_type = hcloud.get_zone_rrset(zone=example.name,
///     name="www",
///     type="A")
/// by_label = hcloud.get_zone_rrset(zone=example.name,
///     with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = HCloud.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///     });
///
///     var byId = HCloud.GetZoneRrset.Invoke(new()
///     {
///         Zone = example.Apply(getZoneResult => getZoneResult.Name),
///         Id = "www/A",
///     });
///
///     var byNameAndType = HCloud.GetZoneRrset.Invoke(new()
///     {
///         Zone = example.Apply(getZoneResult => getZoneResult.Name),
///         Name = "www",
///         Type = "A",
///     });
///
///     var byLabel = HCloud.GetZoneRrset.Invoke(new()
///     {
///         Zone = example.Apply(getZoneResult => getZoneResult.Name),
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := hcloud.LookupZone(ctx, &hcloud.LookupZoneArgs{
/// 			Name: pulumi.StringRef("example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupZoneRrset(ctx, &hcloud.LookupZoneRrsetArgs{
/// 			Zone: example.Name,
/// 			Id:   pulumi.StringRef("www/A"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupZoneRrset(ctx, &hcloud.LookupZoneRrsetArgs{
/// 			Zone: example.Name,
/// 			Name: pulumi.StringRef("www"),
/// 			Type: pulumi.StringRef("A"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.LookupZoneRrset(ctx, &hcloud.LookupZoneRrsetArgs{
/// 			Zone:         example.Name,
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetZoneArgs;
/// import com.pulumi.hcloud.inputs.GetZoneRrsetArgs;
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
///         final var example = HcloudFunctions.getZone(GetZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///         final var byId = HcloudFunctions.getZoneRrset(GetZoneRrsetArgs.builder()
///             .zone(example.name())
///             .id("www/A")
///             .build());
///
///         final var byNameAndType = HcloudFunctions.getZoneRrset(GetZoneRrsetArgs.builder()
///             .zone(example.name())
///             .name("www")
///             .type("A")
///             .build());
///
///         final var byLabel = HcloudFunctions.getZoneRrset(GetZoneRrsetArgs.builder()
///             .zone(example.name())
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: hcloud:getZone
///       arguments:
///         name: example.com
///   byId:
///     fn::invoke:
///       function: hcloud:getZoneRrset
///       arguments:
///         zone: ${example.name}
///         id: www/A
///   byNameAndType:
///     fn::invoke:
///       function: hcloud:getZoneRrset
///       arguments:
///         zone: ${example.name}
///         name: www
///         type: A
///   byLabel:
///     fn::invoke:
///       function: hcloud:getZoneRrset
///       arguments:
///         zone: ${example.name}
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_zone_rrset_get_zone_rrset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneRrsetResult> getZoneRrset(
  GetZoneRrsetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getZoneRrset:getZoneRrset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneRrsetResult.fromMap(result);
}

/// Provides a list of Hetzner Cloud Zone Resource Record Set (RRSet).
///
/// See the [Zone RRSets API documentation](https://docs.hetzner.cloud/reference/cloud#zone-rrsets) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const example = hcloud.getZone({
///     name: "example.com",
/// });
/// const all = example.then(example => hcloud.getZoneRrsets({
///     zone: example.name,
/// }));
/// const byLabel = example.then(example => hcloud.getZoneRrsets({
///     zone: example.name,
///     withSelector: "key=value",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// example = hcloud.get_zone(name="example.com")
/// all = hcloud.get_zone_rrsets(zone=example.name)
/// by_label = hcloud.get_zone_rrsets(zone=example.name,
///     with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = HCloud.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///     });
///
///     var all = HCloud.GetZoneRrsets.Invoke(new()
///     {
///         Zone = example.Apply(getZoneResult => getZoneResult.Name),
///     });
///
///     var byLabel = HCloud.GetZoneRrsets.Invoke(new()
///     {
///         Zone = example.Apply(getZoneResult => getZoneResult.Name),
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := hcloud.LookupZone(ctx, &hcloud.LookupZoneArgs{
/// 			Name: pulumi.StringRef("example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetZoneRrsets(ctx, &hcloud.GetZoneRrsetsArgs{
/// 			Zone: example.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetZoneRrsets(ctx, &hcloud.GetZoneRrsetsArgs{
/// 			Zone:         example.Name,
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetZoneArgs;
/// import com.pulumi.hcloud.inputs.GetZoneRrsetsArgs;
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
///         final var example = HcloudFunctions.getZone(GetZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///         final var all = HcloudFunctions.getZoneRrsets(GetZoneRrsetsArgs.builder()
///             .zone(example.name())
///             .build());
///
///         final var byLabel = HcloudFunctions.getZoneRrsets(GetZoneRrsetsArgs.builder()
///             .zone(example.name())
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: hcloud:getZone
///       arguments:
///         name: example.com
///   all:
///     fn::invoke:
///       function: hcloud:getZoneRrsets
///       arguments:
///         zone: ${example.name}
///   byLabel:
///     fn::invoke:
///       function: hcloud:getZoneRrsets
///       arguments:
///         zone: ${example.name}
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_zone_rrsets_get_zone_rrsets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneRrsetsResult> getZoneRrsets(
  GetZoneRrsetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getZoneRrsets:getZoneRrsets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneRrsetsResult.fromMap(result);
}

/// Provides a list of Hetzner Cloud Zone.
///
/// See the [Zones API documentation](https://docs.hetzner.cloud/reference/cloud#zones) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const all = hcloud.getZones({});
/// const byLabel = hcloud.getZones({
///     withSelector: "key=value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// all = hcloud.get_zones()
/// by_label = hcloud.get_zones(with_selector="key=value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = HCloud.GetZones.Invoke();
///
///     var byLabel = HCloud.GetZones.Invoke(new()
///     {
///         WithSelector = "key=value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.GetZones(ctx, &hcloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.GetZones(ctx, &hcloud.GetZonesArgs{
/// 			WithSelector: pulumi.StringRef("key=value"),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetZonesArgs;
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
///         final var all = HcloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var byLabel = HcloudFunctions.getZones(GetZonesArgs.builder()
///             .withSelector("key=value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: hcloud:getZones
///       arguments: {}
///   byLabel:
///     fn::invoke:
///       function: hcloud:getZones
///       arguments:
///         withSelector: key=value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'hcloud:index/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
