import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_args.dart';
import 'get_address_result.dart';
import 'get_addresses_args.dart';
import 'get_addresses_result.dart';
import 'get_backend_bucket_args.dart';
import 'get_backend_bucket_iam_policy_args.dart';
import 'get_backend_bucket_iam_policy_result.dart';
import 'get_backend_bucket_result.dart';
import 'get_backend_service_args.dart';
import 'get_backend_service_iam_policy_args.dart';
import 'get_backend_service_iam_policy_result.dart';
import 'get_backend_service_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_default_service_account_args.dart';
import 'get_default_service_account_result.dart';
import 'get_disk_args.dart';
import 'get_disk_iam_policy_args.dart';
import 'get_disk_iam_policy_result.dart';
import 'get_disk_result.dart';
import 'get_firewall_policy_iam_policy_args.dart';
import 'get_firewall_policy_iam_policy_result.dart';
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_result.dart';
import 'get_forwarding_rules_args.dart';
import 'get_forwarding_rules_result.dart';
import 'get_global_address_args.dart';
import 'get_global_address_result.dart';
import 'get_global_forwarding_rule_args.dart';
import 'get_global_forwarding_rule_result.dart';
import 'get_hc_vpn_gateway_args.dart';
import 'get_hc_vpn_gateway_result.dart';
import 'get_health_check_args.dart';
import 'get_health_check_result.dart';
import 'get_image_args.dart';
import 'get_image_iam_policy_args.dart';
import 'get_image_iam_policy_result.dart';
import 'get_image_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_instance_args.dart';
import 'get_instance_group_args.dart';
import 'get_instance_group_manager_args.dart';
import 'get_instance_group_manager_result.dart';
import 'get_instance_group_result.dart';
import 'get_instance_groups_args.dart';
import 'get_instance_groups_result.dart';
import 'get_instance_guest_attributes_args.dart';
import 'get_instance_guest_attributes_result.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_result.dart';
import 'get_instance_serial_port_args.dart';
import 'get_instance_serial_port_result.dart';
import 'get_instance_template_args.dart';
import 'get_instance_template_iam_policy_args.dart';
import 'get_instance_template_iam_policy_result.dart';
import 'get_instance_template_result.dart';
import 'get_instant_snapshot_iam_policy_args.dart';
import 'get_instant_snapshot_iam_policy_result.dart';
import 'get_interconnect_location_args.dart';
import 'get_interconnect_location_result.dart';
import 'get_interconnect_locations_args.dart';
import 'get_interconnect_locations_result.dart';
import 'get_lbipranges_result.dart';
import 'get_machine_image_iam_policy_args.dart';
import 'get_machine_image_iam_policy_result.dart';
import 'get_machine_types_args.dart';
import 'get_machine_types_result.dart';
import 'get_netblock_ipranges_args.dart';
import 'get_netblock_ipranges_result.dart';
import 'get_network_args.dart';
import 'get_network_attachment_args.dart';
import 'get_network_attachment_result.dart';
import 'get_network_endpoint_group_args.dart';
import 'get_network_endpoint_group_result.dart';
import 'get_network_endpoint_groups_args.dart';
import 'get_network_endpoint_groups_result.dart';
import 'get_network_firewall_policy_iam_policy_args.dart';
import 'get_network_firewall_policy_iam_policy_result.dart';
import 'get_network_peering_args.dart';
import 'get_network_peering_result.dart';
import 'get_network_result.dart';
import 'get_networks_args.dart';
import 'get_networks_result.dart';
import 'get_node_types_args.dart';
import 'get_node_types_result.dart';
import 'get_region_backend_bucket_iam_policy_args.dart';
import 'get_region_backend_bucket_iam_policy_result.dart';
import 'get_region_backend_service_args.dart';
import 'get_region_backend_service_iam_policy_args.dart';
import 'get_region_backend_service_iam_policy_result.dart';
import 'get_region_backend_service_result.dart';
import 'get_region_disk_args.dart';
import 'get_region_disk_iam_policy_args.dart';
import 'get_region_disk_iam_policy_result.dart';
import 'get_region_disk_result.dart';
import 'get_region_instance_group_args.dart';
import 'get_region_instance_group_manager_args.dart';
import 'get_region_instance_group_manager_result.dart';
import 'get_region_instance_group_result.dart';
import 'get_region_instance_template_args.dart';
import 'get_region_instance_template_result.dart';
import 'get_region_instant_snapshot_iam_policy_args.dart';
import 'get_region_instant_snapshot_iam_policy_result.dart';
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_result.dart';
import 'get_region_network_firewall_policy_iam_policy_args.dart';
import 'get_region_network_firewall_policy_iam_policy_result.dart';
import 'get_region_security_policy_args.dart';
import 'get_region_security_policy_result.dart';
import 'get_region_ssl_certificate_args.dart';
import 'get_region_ssl_certificate_result.dart';
import 'get_region_sslpolicy_args.dart';
import 'get_region_sslpolicy_result.dart';
import 'get_region_target_http_proxy_args.dart';
import 'get_region_target_http_proxy_result.dart';
import 'get_region_target_https_proxy_args.dart';
import 'get_region_target_https_proxy_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';
import 'get_reservation_args.dart';
import 'get_reservation_block_args.dart';
import 'get_reservation_block_result.dart';
import 'get_reservation_result.dart';
import 'get_reservation_sub_block_args.dart';
import 'get_reservation_sub_block_result.dart';
import 'get_resource_policy_args.dart';
import 'get_resource_policy_result.dart';
import 'get_router_args.dart';
import 'get_router_nat_args.dart';
import 'get_router_nat_result.dart';
import 'get_router_result.dart';
import 'get_router_status_args.dart';
import 'get_router_status_result.dart';
import 'get_routers_args.dart';
import 'get_routers_result.dart';
import 'get_security_policy_args.dart';
import 'get_security_policy_result.dart';
import 'get_service_attachment_args.dart';
import 'get_service_attachment_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_iam_policy_args.dart';
import 'get_snapshot_iam_policy_result.dart';
import 'get_snapshot_result.dart';
import 'get_sslpolicy_args.dart';
import 'get_sslpolicy_result.dart';
import 'get_storage_pool_args.dart';
import 'get_storage_pool_iam_policy_args.dart';
import 'get_storage_pool_iam_policy_result.dart';
import 'get_storage_pool_result.dart';
import 'get_storage_pool_types_args.dart';
import 'get_storage_pool_types_result.dart';
import 'get_subnetwork_args.dart';
import 'get_subnetwork_iam_policy_args.dart';
import 'get_subnetwork_iam_policy_result.dart';
import 'get_subnetwork_result.dart';
import 'get_subnetworks_args.dart';
import 'get_subnetworks_result.dart';
import 'get_target_http_proxy_args.dart';
import 'get_target_http_proxy_result.dart';
import 'get_target_https_proxy_args.dart';
import 'get_target_https_proxy_result.dart';
import 'get_vpngateway_args.dart';
import 'get_vpngateway_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';
import 'router_status_args.dart';
import 'router_status_result.dart';

/// Get the IP address from a static address. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/latest/addresses/get) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myAddress = gcp.compute.getAddress({
///     name: "foobar",
/// });
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const frontend = new gcp.dns.RecordSet("frontend", {
///     name: pulumi.interpolate`frontend.${prod.dnsName}`,
///     type: "A",
///     ttl: 300,
///     managedZone: prod.name,
///     rrdatas: [myAddress.then(myAddress => myAddress.address)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_address = gcp.compute.get_address(name="foobar")
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// frontend = gcp.dns.RecordSet("frontend",
///     name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
///     type="A",
///     ttl=300,
///     managed_zone=prod.name,
///     rrdatas=[my_address.address])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myAddress = Gcp.Compute.GetAddress.Invoke(new()
///     {
///         Name = "foobar",
///     });
///
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var frontend = new Gcp.Dns.RecordSet("frontend", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"frontend.{dnsName}"),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = prod.Name,
///         Rrdatas = new[]
///         {
///             myAddress.Apply(getAddressResult => getAddressResult.Address),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myAddress, err := compute.LookupAddress(ctx, &compute.LookupAddressArgs{
/// 			Name: "foobar",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "frontend", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("frontend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: prod.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String(myAddress.Address),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getaddress" "myAddress" {
///   name = "foobar"
/// }
///
/// resource "gcp_dns_recordset" "frontend" {
///   name         ="frontend.${gcp_dns_managedzone.prod.dns_name}"
///   type         = "A"
///   ttl          = 300
///   managed_zone = gcp_dns_managedzone.prod.name
///   rrdatas      = [data.gcp_compute_getaddress.myAddress.address]
/// }
/// resource "gcp_dns_managedzone" "prod" {
///   name     = "prod-zone"
///   dns_name = "prod.mydomain.com."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetAddressArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         final var myAddress = ComputeFunctions.getAddress(GetAddressArgs.builder()
///             .name("foobar")
///             .build());
///
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var frontend = new RecordSet("frontend", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("frontend.%s", _dnsName)))
///             .type("A")
///             .ttl(300)
///             .managedZone(prod.name())
///             .rrdatas(myAddress.address())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontend:
///     type: gcp:dns:RecordSet
///     properties:
///       name: frontend.${prod.dnsName}
///       type: A
///       ttl: 300
///       managedZone: ${prod.name}
///       rrdatas:
///         - ${myAddress.address}
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// variables:
///   myAddress:
///     fn::invoke:
///       function: gcp:compute:getAddress
///       arguments:
///         name: foobar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_address_get_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getAddress:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}

/// List IP addresses in a project. For more information see
/// the official API [list](https://cloud.google.com/compute/docs/reference/latest/addresses/list) and
/// [aggregated list](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/aggregatedList) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = gcp.compute.getAddresses({
///     filter: "name:test-*",
/// });
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const frontend = new gcp.dns.RecordSet("frontend", {
///     name: pulumi.interpolate`frontend.${prod.dnsName}`,
///     type: "A",
///     ttl: 300,
///     managedZone: prod.name,
///     rrdatas: test.then(test => test.addresses.map(__item => __item.address)),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.compute.get_addresses(filter="name:test-*")
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// frontend = gcp.dns.RecordSet("frontend",
///     name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
///     type="A",
///     ttl=300,
///     managed_zone=prod.name,
///     rrdatas=[__item.address for __item in test.addresses])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Gcp.Compute.GetAddresses.Invoke(new()
///     {
///         Filter = "name:test-*",
///     });
///
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var frontend = new Gcp.Dns.RecordSet("frontend", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"frontend.{dnsName}"),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = prod.Name,
///         Rrdatas = test.Apply(getAddressesResult => getAddressesResult.Addresses).Select(__item => __item.Address).ToList(),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := compute.GetAddresses(ctx, &compute.GetAddressesArgs{
/// 			Filter: pulumi.StringRef("name:test-*"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var splat0 []*string
/// 		for _, val0 := range test.Addresses {
/// 			splat0 = append(splat0, val0.Address)
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "frontend", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("frontend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: prod.Name,
/// 			Rrdatas:     splat0,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getaddresses" "test" {
///   filter = "name:test-*"
/// }
///
/// resource "gcp_dns_recordset" "frontend" {
///   name         ="frontend.${gcp_dns_managedzone.prod.dns_name}"
///   type         = "A"
///   ttl          = 300
///   managed_zone = gcp_dns_managedzone.prod.name
///   rrdatas      = data.gcp_compute_getaddresses.test.addresses[*].address
/// }
/// resource "gcp_dns_managedzone" "prod" {
///   name     = "prod-zone"
///   dns_name = "prod.mydomain.com."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetAddressesArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         final var test = ComputeFunctions.getAddresses(GetAddressesArgs.builder()
///             .filter("name:test-*")
///             .build());
///
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var frontend = new RecordSet("frontend", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("frontend.%s", _dnsName)))
///             .type("A")
///             .ttl(300)
///             .managedZone(prod.name())
///             .rrdatas(test.addresses().stream().map(element -> element.address()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_addresses_get_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressesResult> getAddresses(
  GetAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getAddresses:getAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressesResult.fromMap(result);
}

/// Get information about a BackendBucket.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backend_bucket = gcp.compute.getBackendBucket({
///     name: "my-backend",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backend_bucket = gcp.compute.get_backend_bucket(name="my-backend")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_backend_bucket = Gcp.Compute.GetBackendBucket.Invoke(new()
///     {
///         Name = "my-backend",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupBackendBucket(ctx, &compute.LookupBackendBucketArgs{
/// 			Name: "my-backend",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getbackendbucket" "my-backend-bucket" {
///   name = "my-backend"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetBackendBucketArgs;
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
///         final var my-backend-bucket = ComputeFunctions.getBackendBucket(GetBackendBucketArgs.builder()
///             .name("my-backend")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-backend-bucket:
///     fn::invoke:
///       function: gcp:compute:getBackendBucket
///       arguments:
///         name: my-backend
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_backend_bucket_get_backend_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketResult> getBackendBucket(
  GetBackendBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendBucket:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult.fromMap(result);
}

/// Retrieves the current IAM policy data for backendbucket
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getBackendBucketIamPolicy({
///     project: imageBackend.project,
///     name: imageBackend.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_backend_bucket_iam_policy(project=image_backend["project"],
///     name=image_backend["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetBackendBucketIamPolicy.Invoke(new()
///     {
///         Project = imageBackend.Project,
///         Name = imageBackend.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupBackendBucketIamPolicy(ctx, &compute.LookupBackendBucketIamPolicyArgs{
/// 			Project: pulumi.StringRef(imageBackend.Project),
/// 			Name:    imageBackend.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getbackendbucketiampolicy" "policy" {
///   project = imageBackend.project
///   name    = imageBackend.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetBackendBucketIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getBackendBucketIamPolicy(GetBackendBucketIamPolicyArgs.builder()
///             .project(imageBackend.get("project"))
///             .name(imageBackend.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getBackendBucketIamPolicy
///       arguments:
///         project: ${imageBackend.project}
///         name: ${imageBackend.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_backend_bucket_iam_policy_get_backend_bucket_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketIamPolicyResult> getBackendBucketIamPolicy(
  GetBackendBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendBucketIamPolicy:getBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyResult.fromMap(result);
}

/// Provide access to a Backend Service's attribute. For more information
/// see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/http/backend-service)
/// and the [API](https://cloud.google.com/compute/docs/reference/latest/backendServices).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const baz = gcp.compute.getBackendService({
///     name: "foobar",
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     healthChecks: baz.then(baz => baz.healthChecks?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// baz = gcp.compute.get_backend_service(name="foobar")
/// default = gcp.compute.BackendService("default",
///     name="backend-service",
///     health_checks=baz.health_checks[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var baz = Gcp.Compute.GetBackendService.Invoke(new()
///     {
///         Name = "foobar",
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         HealthChecks = baz.Apply(getBackendServiceResult => getBackendServiceResult.HealthChecks[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		baz, err := compute.LookupBackendService(ctx, &compute.LookupBackendServiceArgs{
/// 			Name: "foobar",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			HealthChecks: pulumi.String(baz.HealthChecks[0]),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getbackendservice" "baz" {
///   name = "foobar"
/// }
///
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   health_checks = data.gcp_compute_getbackendservice.baz.health_checks[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetBackendServiceArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
///         final var baz = ComputeFunctions.getBackendService(GetBackendServiceArgs.builder()
///             .name("foobar")
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("backend-service")
///             .healthChecks(baz.healthChecks()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend-service
///       healthChecks: ${baz.healthChecks[0]}
/// variables:
///   baz:
///     fn::invoke:
///       function: gcp:compute:getBackendService
///       arguments:
///         name: foobar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_backend_service_get_backend_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceResult> getBackendService(
  GetBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendService:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult.fromMap(result);
}

/// Retrieves the current IAM policy data for backendservice
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getBackendServiceIamPolicy({
///     project: _default.project,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_backend_service_iam_policy(project=default["project"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetBackendServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupBackendServiceIamPolicy(ctx, &compute.LookupBackendServiceIamPolicyArgs{
/// 			Project: pulumi.StringRef(_default.Project),
/// 			Name:    _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getbackendserviceiampolicy" "policy" {
///   project = default.project
///   name    = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetBackendServiceIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getBackendServiceIamPolicy(GetBackendServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getBackendServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_backend_service_iam_policy_get_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceIamPolicyResult> getBackendServiceIamPolicy(
  GetBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendServiceIamPolicy:getBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceIamPolicyResult.fromMap(result);
}

/// Get info about a Google Compute SSL Certificate from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCert = gcp.compute.getCertificate({
///     name: "my-cert",
/// });
/// export const certificate = myCert.then(myCert => myCert.certificate);
/// export const certificateId = myCert.then(myCert => myCert.certificateId);
/// export const selfLink = myCert.then(myCert => myCert.selfLink);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cert = gcp.compute.get_certificate(name="my-cert")
/// pulumi.export("certificate", my_cert.certificate)
/// pulumi.export("certificateId", my_cert.certificate_id)
/// pulumi.export("selfLink", my_cert.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myCert = Gcp.Compute.GetCertificate.Invoke(new()
///     {
///         Name = "my-cert",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["certificate"] = myCert.Apply(getCertificateResult => getCertificateResult.Certificate),
///         ["certificateId"] = myCert.Apply(getCertificateResult => getCertificateResult.CertificateId),
///         ["selfLink"] = myCert.Apply(getCertificateResult => getCertificateResult.SelfLink),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myCert, err := compute.GetCertificate(ctx, &compute.GetCertificateArgs{
/// 			Name: "my-cert",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("certificate", myCert.Certificate)
/// 		ctx.Export("certificateId", myCert.CertificateId)
/// 		ctx.Export("selfLink", myCert.SelfLink)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getcertificate" "myCert" {
///   name = "my-cert"
/// }
///
/// output "certificate" {
///   value = data.gcp_compute_getcertificate.myCert.certificate
/// }
/// output "certificateId" {
///   value = data.gcp_compute_getcertificate.myCert.certificate_id
/// }
/// output "selfLink" {
///   value = data.gcp_compute_getcertificate.myCert.self_link
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetCertificateArgs;
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
///         final var myCert = ComputeFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("my-cert")
///             .build());
///
///         ctx.export("certificate", myCert.certificate());
///         ctx.export("certificateId", myCert.certificateId());
///         ctx.export("selfLink", myCert.selfLink());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myCert:
///     fn::invoke:
///       function: gcp:compute:getCertificate
///       arguments:
///         name: my-cert
/// outputs:
///   certificate: ${myCert.certificate}
///   certificateId: ${myCert.certificateId}
///   selfLink: ${myCert.selfLink}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Use this data source to retrieve default service account for this project
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getDefaultServiceAccount({});
/// export const defaultAccount = _default.then(_default => _default.email);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_default_service_account()
/// pulumi.export("defaultAccount", default.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetDefaultServiceAccount.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["defaultAccount"] = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.GetDefaultServiceAccount(ctx, &compute.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("defaultAccount", _default.Email)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getdefaultserviceaccount" "default" {
/// }
///
/// output "defaultAccount" {
///   value = data.gcp_compute_getdefaultserviceaccount.default.email
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDefaultServiceAccountArgs;
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
///         final var default = ComputeFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         ctx.export("defaultAccount", default_.email());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getDefaultServiceAccount
///       arguments: {}
/// outputs:
///   defaultAccount: ${default.email}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_default_service_account_get_default_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultServiceAccountResult> getDefaultServiceAccount(
  GetDefaultServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult.fromMap(result);
}

/// Get information about a Google Compute Persistent disks.
///
/// [the official documentation](https://cloud.google.com/compute/docs/disks) and its [API](https://cloud.google.com/compute/docs/reference/latest/disks).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const persistent_boot_disk = gcp.compute.getDisk({
///     name: "persistent-boot-disk",
///     project: "example",
/// });
/// const _default = new gcp.compute.Instance("default", {bootDisk: {
///     source: persistent_boot_disk.then(persistent_boot_disk => persistent_boot_disk.selfLink),
///     autoDelete: false,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// persistent_boot_disk = gcp.compute.get_disk(name="persistent-boot-disk",
///     project="example")
/// default = gcp.compute.Instance("default", boot_disk={
///     "source": persistent_boot_disk.self_link,
///     "auto_delete": False,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var persistent_boot_disk = Gcp.Compute.GetDisk.Invoke(new()
///     {
///         Name = "persistent-boot-disk",
///         Project = "example",
///     });
///
///     var @default = new Gcp.Compute.Instance("default", new()
///     {
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             Source = persistent_boot_disk.Apply(persistent_boot_disk => persistent_boot_disk.Apply(getDiskResult => getDiskResult.SelfLink)),
///             AutoDelete = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		persistent_boot_disk, err := compute.LookupDisk(ctx, &compute.LookupDiskArgs{
/// 			Name:    "persistent-boot-disk",
/// 			Project: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				Source:     pulumi.String(persistent_boot_disk.SelfLink),
/// 				AutoDelete: pulumi.Bool(false),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getdisk" "persistent-boot-disk" {
///   name    = "persistent-boot-disk"
///   project = "example"
/// }
///
/// resource "gcp_compute_instance" "default" {
///   boot_disk = {
///     source      = data.gcp_compute_getdisk.persistent-boot-disk.self_link
///     auto_delete = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDiskArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
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
///         final var persistent-boot-disk = ComputeFunctions.getDisk(GetDiskArgs.builder()
///             .name("persistent-boot-disk")
///             .project("example")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .source(persistent_boot_disk.selfLink())
///                 .autoDelete(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Instance
///     properties:
///       bootDisk:
///         source: ${["persistent-boot-disk"].selfLink}
///         autoDelete: false
/// variables:
///   persistent-boot-disk:
///     fn::invoke:
///       function: gcp:compute:getDisk
///       arguments:
///         name: persistent-boot-disk
///         project: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_get_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDisk:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}

/// Retrieves the current IAM policy data for disk
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getDiskIamPolicy({
///     project: _default.project,
///     zone: _default.zone,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_disk_iam_policy(project=default["project"],
///     zone=default["zone"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetDiskIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Zone = @default.Zone,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupDiskIamPolicy(ctx, &compute.LookupDiskIamPolicyArgs{
/// 			Project: pulumi.StringRef(_default.Project),
/// 			Zone:    pulumi.StringRef(_default.Zone),
/// 			Name:    _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getdiskiampolicy" "policy" {
///   project = default.project
///   zone    = default.zone
///   name    = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDiskIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getDiskIamPolicy(GetDiskIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .zone(default_.get("zone"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getDiskIamPolicy
///       arguments:
///         project: ${default.project}
///         zone: ${default.zone}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_disk_iam_policy_get_disk_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskIamPolicyResult> getDiskIamPolicy(
  GetDiskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDiskIamPolicy:getDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for firewallpolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getFirewallPolicyIamPolicy({
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_firewall_policy_iam_policy(name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetFirewallPolicyIamPolicy.Invoke(new()
///     {
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupFirewallPolicyIamPolicy(ctx, &compute.LookupFirewallPolicyIamPolicyArgs{
/// 			Name: _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getfirewallpolicyiampolicy" "policy" {
///   name = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetFirewallPolicyIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getFirewallPolicyIamPolicy(GetFirewallPolicyIamPolicyArgs.builder()
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getFirewallPolicyIamPolicy
///       arguments:
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_firewall_policy_iam_policy_get_firewall_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyIamPolicyResult> getFirewallPolicyIamPolicy(
  GetFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getFirewallPolicyIamPolicy:getFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyIamPolicyResult.fromMap(result);
}

/// Get a forwarding rule within GCE from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_forwarding_rule = gcp.compute.getForwardingRule({
///     name: "forwarding-rule-us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_forwarding_rule = gcp.compute.get_forwarding_rule(name="forwarding-rule-us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_forwarding_rule = Gcp.Compute.GetForwardingRule.Invoke(new()
///     {
///         Name = "forwarding-rule-us-east1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupForwardingRule(ctx, &compute.LookupForwardingRuleArgs{
/// 			Name: "forwarding-rule-us-east1",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getforwardingrule" "my-forwarding-rule" {
///   name = "forwarding-rule-us-east1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetForwardingRuleArgs;
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
///         final var my-forwarding-rule = ComputeFunctions.getForwardingRule(GetForwardingRuleArgs.builder()
///             .name("forwarding-rule-us-east1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-forwarding-rule:
///     fn::invoke:
///       function: gcp:compute:getForwardingRule
///       arguments:
///         name: forwarding-rule-us-east1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_forwarding_rule_get_forwarding_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getForwardingRule:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}

/// List all networks in a specified Google Cloud project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_forwarding_rules = gcp.compute.getForwardingRules({
///     project: "my-cloud-project",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_forwarding_rules = gcp.compute.get_forwarding_rules(project="my-cloud-project",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_forwarding_rules = Gcp.Compute.GetForwardingRules.Invoke(new()
///     {
///         Project = "my-cloud-project",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetForwardingRules(ctx, &compute.GetForwardingRulesArgs{
/// 			Project: pulumi.StringRef("my-cloud-project"),
/// 			Region:  pulumi.StringRef("us-central1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getforwardingrules" "my-forwarding-rules" {
///   project = "my-cloud-project"
///   region  = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetForwardingRulesArgs;
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
///         final var my-forwarding-rules = ComputeFunctions.getForwardingRules(GetForwardingRulesArgs.builder()
///             .project("my-cloud-project")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-forwarding-rules:
///     fn::invoke:
///       function: gcp:compute:getForwardingRules
///       arguments:
///         project: my-cloud-project
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_forwarding_rules_get_forwarding_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRulesResult> getForwardingRules(
  GetForwardingRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getForwardingRules:getForwardingRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRulesResult.fromMap(result);
}

/// Get the IP address from a static address reserved for a Global Forwarding Rule which are only used for HTTP load balancing. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/latest/globalAddresses) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myAddress = gcp.compute.getGlobalAddress({
///     name: "foobar",
/// });
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const frontend = new gcp.dns.RecordSet("frontend", {
///     name: pulumi.interpolate`lb.${prod.dnsName}`,
///     type: "A",
///     ttl: 300,
///     managedZone: prod.name,
///     rrdatas: [myAddress.then(myAddress => myAddress.address)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_address = gcp.compute.get_global_address(name="foobar")
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// frontend = gcp.dns.RecordSet("frontend",
///     name=prod.dns_name.apply(lambda dns_name: f"lb.{dns_name}"),
///     type="A",
///     ttl=300,
///     managed_zone=prod.name,
///     rrdatas=[my_address.address])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myAddress = Gcp.Compute.GetGlobalAddress.Invoke(new()
///     {
///         Name = "foobar",
///     });
///
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var frontend = new Gcp.Dns.RecordSet("frontend", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"lb.{dnsName}"),
///         Type = "A",
///         Ttl = 300,
///         ManagedZone = prod.Name,
///         Rrdatas = new[]
///         {
///             myAddress.Apply(getGlobalAddressResult => getGlobalAddressResult.Address),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myAddress, err := compute.LookupGlobalAddress(ctx, &compute.LookupGlobalAddressArgs{
/// 			Name: "foobar",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "frontend", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("lb.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: prod.Name,
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String(myAddress.Address),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getglobaladdress" "myAddress" {
///   name = "foobar"
/// }
///
/// resource "gcp_dns_recordset" "frontend" {
///   name         ="lb.${gcp_dns_managedzone.prod.dns_name}"
///   type         = "A"
///   ttl          = 300
///   managed_zone = gcp_dns_managedzone.prod.name
///   rrdatas      = [data.gcp_compute_getglobaladdress.myAddress.address]
/// }
/// resource "gcp_dns_managedzone" "prod" {
///   name     = "prod-zone"
///   dns_name = "prod.mydomain.com."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetGlobalAddressArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         final var myAddress = ComputeFunctions.getGlobalAddress(GetGlobalAddressArgs.builder()
///             .name("foobar")
///             .build());
///
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var frontend = new RecordSet("frontend", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("lb.%s", _dnsName)))
///             .type("A")
///             .ttl(300)
///             .managedZone(prod.name())
///             .rrdatas(myAddress.address())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontend:
///     type: gcp:dns:RecordSet
///     properties:
///       name: lb.${prod.dnsName}
///       type: A
///       ttl: 300
///       managedZone: ${prod.name}
///       rrdatas:
///         - ${myAddress.address}
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// variables:
///   myAddress:
///     fn::invoke:
///       function: gcp:compute:getGlobalAddress
///       arguments:
///         name: foobar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_global_address_get_global_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalAddressResult> getGlobalAddress(
  GetGlobalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getGlobalAddress:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult.fromMap(result);
}

/// Get a global forwarding rule within GCE from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_forwarding_rule = gcp.compute.getGlobalForwardingRule({
///     name: "forwarding-rule-global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_forwarding_rule = gcp.compute.get_global_forwarding_rule(name="forwarding-rule-global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_forwarding_rule = Gcp.Compute.GetGlobalForwardingRule.Invoke(new()
///     {
///         Name = "forwarding-rule-global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupGlobalForwardingRule(ctx, &compute.LookupGlobalForwardingRuleArgs{
/// 			Name: "forwarding-rule-global",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getglobalforwardingrule" "my-forwarding-rule" {
///   name = "forwarding-rule-global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetGlobalForwardingRuleArgs;
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
///         final var my-forwarding-rule = ComputeFunctions.getGlobalForwardingRule(GetGlobalForwardingRuleArgs.builder()
///             .name("forwarding-rule-global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-forwarding-rule:
///     fn::invoke:
///       function: gcp:compute:getGlobalForwardingRule
///       arguments:
///         name: forwarding-rule-global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_global_forwarding_rule_get_global_forwarding_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalForwardingRuleResult> getGlobalForwardingRule(
  GetGlobalForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getGlobalForwardingRule:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleResult.fromMap(result);
}

/// Get a HA VPN Gateway within GCE from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gateway = gcp.compute.getHcVpnGateway({
///     name: "foobar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gateway = gcp.compute.get_hc_vpn_gateway(name="foobar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gateway = Gcp.Compute.GetHcVpnGateway.Invoke(new()
///     {
///         Name = "foobar",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetHcVpnGateway(ctx, &compute.GetHcVpnGatewayArgs{
/// 			Name: "foobar",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_gethcvpngateway" "gateway" {
///   name = "foobar"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetHcVpnGatewayArgs;
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
///         final var gateway = ComputeFunctions.getHcVpnGateway(GetHcVpnGatewayArgs.builder()
///             .name("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   gateway:
///     fn::invoke:
///       function: gcp:compute:getHcVpnGateway
///       arguments:
///         name: foobar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_hc_vpn_gateway_get_hc_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHcVpnGatewayResult> getHcVpnGateway(
  GetHcVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHcVpnGateway:getHcVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHcVpnGatewayResult.fromMap(result);
}

/// Get information about a HealthCheck.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = gcp.compute.getHealthCheck({
///     name: "my-hc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.get_health_check(name="my-hc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = Gcp.Compute.GetHealthCheck.Invoke(new()
///     {
///         Name = "my-hc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupHealthCheck(ctx, &compute.LookupHealthCheckArgs{
/// 			Name: "my-hc",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_gethealthcheck" "healthCheck" {
///   name = "my-hc"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetHealthCheckArgs;
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
///         final var healthCheck = ComputeFunctions.getHealthCheck(GetHealthCheckArgs.builder()
///             .name("my-hc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   healthCheck:
///     fn::invoke:
///       function: gcp:compute:getHealthCheck
///       arguments:
///         name: my-hc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_health_check_get_health_check_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthCheckResult> getHealthCheck(
  GetHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHealthCheck:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult.fromMap(result);
}

/// Get information about a Google Compute Image. Check that your service account has the `compute.imageUser` role if you want to share [custom images](https://cloud.google.com/compute/docs/images/sharing-images-across-projects) from another project. If you want to use [public images][pubimg], do not forget to specify the dedicated project. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/images) and its [API](https://cloud.google.com/compute/docs/reference/latest/images).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const _default = new gcp.compute.Instance("default", {bootDisk: {
///     initializeParams: {
///         image: myImage.then(myImage => myImage.selfLink),
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// default = gcp.compute.Instance("default", boot_disk={
///     "initialize_params": {
///         "image": my_image.self_link,
///     },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var @default = new Gcp.Compute.Instance("default", new()
///     {
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_instance" "default" {
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_getimage.myImage.self_link
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Instance
///     properties:
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Retrieves the current IAM policy data for image
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getImageIamPolicy({
///     project: example.project,
///     image: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_image_iam_policy(project=example["project"],
///     image=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetImageIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Image = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupImageIamPolicy(ctx, &compute.LookupImageIamPolicyArgs{
/// 			Project: pulumi.StringRef(example.Project),
/// 			Image:   example.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getimageiampolicy" "policy" {
///   project = example.project
///   image   = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getImageIamPolicy(GetImageIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .image(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getImageIamPolicy
///       arguments:
///         project: ${example.project}
///         image: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_image_iam_policy_get_image_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageIamPolicyResult> getImageIamPolicy(
  GetImageIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getImageIamPolicy:getImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageIamPolicyResult.fromMap(result);
}

/// Get information about Google Compute Images. Check that your service account has the `compute.imageUser` role if you want to share [custom images](https://cloud.google.com/compute/docs/images/sharing-images-across-projects) from another project. If you want to use [public images][pubimg], do not forget to specify the dedicated project. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/images) and its [API](https://cloud.google.com/compute/docs/reference/latest/images).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImages({
///     filter: "name eq my-image.*",
/// });
/// const _default = new gcp.compute.Instance("default", {
///     name: "test",
///     machineType: "f1-micro",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: debian.then(debian => debian.images?.[0]?.selfLink),
///         },
///     },
///     networkInterfaces: [{
///         network: defaultGoogleComputeNetwork.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_images(filter="name eq my-image.*")
/// default = gcp.compute.Instance("default",
///     name="test",
///     machine_type="f1-micro",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": debian.images[0].self_link,
///         },
///     },
///     network_interfaces=[{
///         "network": default_google_compute_network["name"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debian = Gcp.Compute.GetImages.Invoke(new()
///     {
///         Filter = "name eq my-image.*",
///     });
///
///     var @default = new Gcp.Compute.Instance("default", new()
///     {
///         Name = "test",
///         MachineType = "f1-micro",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = debian.Apply(getImagesResult => getImagesResult.Images[0]?.SelfLink),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = defaultGoogleComputeNetwork.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		debian, err := compute.GetImages(ctx, &compute.GetImagesArgs{
/// 			Filter: pulumi.StringRef("name eq my-image.*"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// 			Name:        pulumi.String("test"),
/// 			MachineType: pulumi.String("f1-micro"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(debian.Images[0].SelfLink),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.Any(defaultGoogleComputeNetwork.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getimages" "debian" {
///   filter = "name eq my-image.*"
/// }
///
/// resource "gcp_compute_instance" "default" {
///   name         = "test"
///   machine_type = "f1-micro"
///   zone         = "us-central1-a"
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_getimages.debian.images[0].self_link
///     }
///   }
///   network_interfaces {
///     network = defaultGoogleComputeNetwork.name
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImagesArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
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
///         final var debian = ComputeFunctions.getImages(GetImagesArgs.builder()
///             .filter("name eq my-image.*")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("test")
///             .machineType("f1-micro")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(debian.images()[0].selfLink())
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network(defaultGoogleComputeNetwork.get("name"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Instance
///     properties:
///       name: test
///       machineType: f1-micro
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: ${debian.images[0].selfLink}
///       networkInterfaces:
///         - network: ${defaultGoogleComputeNetwork.name}
/// variables:
///   debian:
///     fn::invoke:
///       function: gcp:compute:getImages
///       arguments:
///         filter: name eq my-image.*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Get information about a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserver = gcp.compute.getInstance({
///     name: "primary-application-server",
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver = gcp.compute.get_instance(name="primary-application-server",
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appserver = Gcp.Compute.GetInstance.Invoke(new()
///     {
///         Name = "primary-application-server",
///         Zone = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupInstance(ctx, &compute.LookupInstanceArgs{
/// 			Name: pulumi.StringRef("primary-application-server"),
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstance" "appserver" {
///   name = "primary-application-server"
///   zone = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceArgs;
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
///         final var appserver = ComputeFunctions.getInstance(GetInstanceArgs.builder()
///             .name("primary-application-server")
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   appserver:
///     fn::invoke:
///       function: gcp:compute:getInstance
///       arguments:
///         name: primary-application-server
///         zone: us-central1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Get a Compute Instance Group within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroups)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getInstanceGroup({
///     name: "instance-group-name",
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_instance_group(name="instance-group-name",
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.Compute.GetInstanceGroup.Invoke(new()
///     {
///         Name = "instance-group-name",
///         Zone = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupInstanceGroup(ctx, &compute.LookupInstanceGroupArgs{
/// 			Name: pulumi.StringRef("instance-group-name"),
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstancegroup" "all" {
///   name = "instance-group-name"
///   zone = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceGroupArgs;
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
///         final var all = ComputeFunctions.getInstanceGroup(GetInstanceGroupArgs.builder()
///             .name("instance-group-name")
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:compute:getInstanceGroup
///       arguments:
///         name: instance-group-name
///         zone: us-central1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_group_get_instance_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupResult> getInstanceGroup(
  GetInstanceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroup:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult.fromMap(result);
}

/// Get a Compute Instance Group Manager within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups#managed_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const igm1 = gcp.compute.getInstanceGroupManager({
///     name: "my-igm",
///     zone: "us-central1-a",
/// });
/// const igm2 = gcp.compute.getInstanceGroupManager({
///     selfLink: "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// igm1 = gcp.compute.get_instance_group_manager(name="my-igm",
///     zone="us-central1-a")
/// igm2 = gcp.compute.get_instance_group_manager(self_link="https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var igm1 = Gcp.Compute.GetInstanceGroupManager.Invoke(new()
///     {
///         Name = "my-igm",
///         Zone = "us-central1-a",
///     });
///
///     var igm2 = Gcp.Compute.GetInstanceGroupManager.Invoke(new()
///     {
///         SelfLink = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupInstanceGroupManager(ctx, &compute.LookupInstanceGroupManagerArgs{
/// 			Name: pulumi.StringRef("my-igm"),
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.LookupInstanceGroupManager(ctx, &compute.LookupInstanceGroupManagerArgs{
/// 			SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstancegroupmanager" "igm1" {
///   name = "my-igm"
///   zone = "us-central1-a"
/// }
/// data "gcp_compute_getinstancegroupmanager" "igm2" {
///   self_link = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceGroupManagerArgs;
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
///         final var igm1 = ComputeFunctions.getInstanceGroupManager(GetInstanceGroupManagerArgs.builder()
///             .name("my-igm")
///             .zone("us-central1-a")
///             .build());
///
///         final var igm2 = ComputeFunctions.getInstanceGroupManager(GetInstanceGroupManagerArgs.builder()
///             .selfLink("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   igm1:
///     fn::invoke:
///       function: gcp:compute:getInstanceGroupManager
///       arguments:
///         name: my-igm
///         zone: us-central1-a
///   igm2:
///     fn::invoke:
///       function: gcp:compute:getInstanceGroupManager
///       arguments:
///         selfLink: https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_group_manager_get_instance_group_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupManagerResult> getInstanceGroupManager(
  GetInstanceGroupManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroupManager:getInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult.fromMap(result);
}

/// Get a list of Instance Groups within GCE. For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroups).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getInstanceGroups({
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_instance_groups(zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.Compute.GetInstanceGroups.Invoke(new()
///     {
///         Zone = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetInstanceGroups(ctx, &compute.GetInstanceGroupsArgs{
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstancegroups" "all" {
///   zone = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceGroupsArgs;
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
///         final var all = ComputeFunctions.getInstanceGroups(GetInstanceGroupsArgs.builder()
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:compute:getInstanceGroups
///       arguments:
///         zone: us-central1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_groups_get_instance_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupsResult> getInstanceGroups(
  GetInstanceGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroups:getInstanceGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupsResult.fromMap(result);
}

/// Get information about a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// Get information about VM's guest attrubutes. For more information see [the official documentation](https://cloud.google.com/compute/docs/metadata/manage-guest-attributes)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getGuestAttributes).
///
/// ## Example Usage
///
/// ### Get All Attributes From A Single Namespace
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserverGa = gcp.compute.getInstanceGuestAttributes({
///     name: "primary-application-server",
///     zone: "us-central1-a",
///     queryPath: "variables/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver_ga = gcp.compute.get_instance_guest_attributes(name="primary-application-server",
///     zone="us-central1-a",
///     query_path="variables/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appserverGa = Gcp.Compute.GetInstanceGuestAttributes.Invoke(new()
///     {
///         Name = "primary-application-server",
///         Zone = "us-central1-a",
///         QueryPath = "variables/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetInstanceGuestAttributes(ctx, &compute.GetInstanceGuestAttributesArgs{
/// 			Name:      "primary-application-server",
/// 			Zone:      pulumi.StringRef("us-central1-a"),
/// 			QueryPath: pulumi.StringRef("variables/"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstanceguestattributes" "appserverGa" {
///   name       = "primary-application-server"
///   zone       = "us-central1-a"
///   query_path = "variables/"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceGuestAttributesArgs;
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
///         final var appserverGa = ComputeFunctions.getInstanceGuestAttributes(GetInstanceGuestAttributesArgs.builder()
///             .name("primary-application-server")
///             .zone("us-central1-a")
///             .queryPath("variables/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   appserverGa:
///     fn::invoke:
///       function: gcp:compute:getInstanceGuestAttributes
///       arguments:
///         name: primary-application-server
///         zone: us-central1-a
///         queryPath: variables/
/// ```
///
///
/// ### Get A Specific Variable
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserverGa = gcp.compute.getInstanceGuestAttributes({
///     name: "primary-application-server",
///     zone: "us-central1-a",
///     variableKey: "variables/key1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver_ga = gcp.compute.get_instance_guest_attributes(name="primary-application-server",
///     zone="us-central1-a",
///     variable_key="variables/key1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appserverGa = Gcp.Compute.GetInstanceGuestAttributes.Invoke(new()
///     {
///         Name = "primary-application-server",
///         Zone = "us-central1-a",
///         VariableKey = "variables/key1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetInstanceGuestAttributes(ctx, &compute.GetInstanceGuestAttributesArgs{
/// 			Name:        "primary-application-server",
/// 			Zone:        pulumi.StringRef("us-central1-a"),
/// 			VariableKey: pulumi.StringRef("variables/key1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstanceguestattributes" "appserverGa" {
///   name         = "primary-application-server"
///   zone         = "us-central1-a"
///   variable_key = "variables/key1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceGuestAttributesArgs;
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
///         final var appserverGa = ComputeFunctions.getInstanceGuestAttributes(GetInstanceGuestAttributesArgs.builder()
///             .name("primary-application-server")
///             .zone("us-central1-a")
///             .variableKey("variables/key1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   appserverGa:
///     fn::invoke:
///       function: gcp:compute:getInstanceGuestAttributes
///       arguments:
///         name: primary-application-server
///         zone: us-central1-a
///         variableKey: variables/key1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_guest_attributes_get_instance_guest_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGuestAttributesResult> getInstanceGuestAttributes(
  GetInstanceGuestAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGuestAttributes:getInstanceGuestAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGuestAttributesResult.fromMap(result);
}

/// Retrieves the current IAM policy data for instance
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getInstanceIamPolicy({
///     project: _default.project,
///     zone: _default.zone,
///     instanceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_instance_iam_policy(project=default["project"],
///     zone=default["zone"],
///     instance_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetInstanceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Zone = @default.Zone,
///         InstanceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetInstanceIamPolicy(ctx, &compute.GetInstanceIamPolicyArgs{
/// 			Project:      pulumi.StringRef(_default.Project),
/// 			Zone:         pulumi.StringRef(_default.Zone),
/// 			InstanceName: _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstanceiampolicy" "policy" {
///   project       = default.project
///   zone          = default.zone
///   instance_name = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .zone(default_.get("zone"))
///             .instanceName(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getInstanceIamPolicy
///       arguments:
///         project: ${default.project}
///         zone: ${default.zone}
///         instanceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Get the serial port output from a Compute Instance. For more information see
/// the official [API](https://cloud.google.com/compute/docs/instances/viewing-serial-port-output) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serial = gcp.compute.getInstanceSerialPort({
///     instance: "my-instance",
///     zone: "us-central1-a",
///     port: 1,
/// });
/// export const serialOut = serial.then(serial => serial.contents);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// serial = gcp.compute.get_instance_serial_port(instance="my-instance",
///     zone="us-central1-a",
///     port=1)
/// pulumi.export("serialOut", serial.contents)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serial = Gcp.Compute.GetInstanceSerialPort.Invoke(new()
///     {
///         Instance = "my-instance",
///         Zone = "us-central1-a",
///         Port = 1,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["serialOut"] = serial.Apply(getInstanceSerialPortResult => getInstanceSerialPortResult.Contents),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serial, err := compute.GetInstanceSerialPort(ctx, &compute.GetInstanceSerialPortArgs{
/// 			Instance: "my-instance",
/// 			Zone:     pulumi.StringRef("us-central1-a"),
/// 			Port:     1,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("serialOut", serial.Contents)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstanceserialport" "serial" {
///   instance = "my-instance"
///   zone     = "us-central1-a"
///   port     = 1
/// }
///
/// output "serialOut" {
///   value = data.gcp_compute_getinstanceserialport.serial.contents
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceSerialPortArgs;
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
///         final var serial = ComputeFunctions.getInstanceSerialPort(GetInstanceSerialPortArgs.builder()
///             .instance("my-instance")
///             .zone("us-central1-a")
///             .port(1)
///             .build());
///
///         ctx.export("serialOut", serial.contents());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   serial:
///     fn::invoke:
///       function: gcp:compute:getInstanceSerialPort
///       arguments:
///         instance: my-instance
///         zone: us-central1-a
///         port: 1
/// outputs:
///   serialOut: ${serial.contents}
/// ```
///
///
/// Using the serial port output to generate a windows password, derived from the [official guide](https://cloud.google.com/compute/docs/instances/windows/automate-pw-generation):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const windows = new gcp.compute.Instance("windows", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "windows-instance",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "windows-cloud/windows-2019",
///         },
///     },
///     metadata: {
///         "serial-port-logging-enable": "TRUE",
///         "windows-keys": JSON.stringify({
///             email: "example.user@example.com",
///             expireOn: "2020-04-14T01:37:19Z",
///             exponent: "AQAB",
///             modulus: "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
///             userName: "example-user",
///         }),
///     },
///     serviceAccount: {
///         scopes: [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     },
/// });
/// const serial = gcp.compute.getInstanceSerialPortOutput({
///     instance: windows.name,
///     zone: windows.zone,
///     port: 4,
/// });
/// export const serialOut = serial.contents;
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// windows = gcp.compute.Instance("windows",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="windows-instance",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "windows-cloud/windows-2019",
///         },
///     },
///     metadata={
///         "serial-port-logging-enable": "TRUE",
///         "windows-keys": json.dumps({
///             "email": "example.user@example.com",
///             "expireOn": "2020-04-14T01:37:19Z",
///             "exponent": "AQAB",
///             "modulus": "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
///             "userName": "example-user",
///         }),
///     },
///     service_account={
///         "scopes": [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     })
/// serial = gcp.compute.get_instance_serial_port_output(instance=windows.name,
///     zone=windows.zone,
///     port=4)
/// pulumi.export("serialOut", serial.contents)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var windows = new Gcp.Compute.Instance("windows", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "windows-instance",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "windows-cloud/windows-2019",
///             },
///         },
///         Metadata =
///         {
///             { "serial-port-logging-enable", "TRUE" },
///             { "windows-keys", JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["email"] = "example.user@example.com",
///                 ["expireOn"] = "2020-04-14T01:37:19Z",
///                 ["exponent"] = "AQAB",
///                 ["modulus"] = "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
///                 ["userName"] = "example-user",
///             }) },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "userinfo-email",
///                 "compute-ro",
///                 "storage-ro",
///             },
///         },
///     });
///
///     var serial = Gcp.Compute.GetInstanceSerialPort.Invoke(new()
///     {
///         Instance = windows.Name,
///         Zone = windows.Zone,
///         Port = 4,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["serialOut"] = serial.Apply(getInstanceSerialPortResult => getInstanceSerialPortResult.Contents),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"email":    "example.user@example.com",
/// 			"expireOn": "2020-04-14T01:37:19Z",
/// 			"exponent": "AQAB",
/// 			"modulus":  "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
/// 			"userName": "example-user",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		windows, err := compute.NewInstance(ctx, "windows", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("windows-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("windows-cloud/windows-2019"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"serial-port-logging-enable": pulumi.String("TRUE"),
/// 				"windows-keys":               pulumi.String(json0),
/// 			},
/// 			ServiceAccount: &compute.InstanceServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("userinfo-email"),
/// 					pulumi.String("compute-ro"),
/// 					pulumi.String("storage-ro"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serial := compute.GetInstanceSerialPortOutput(ctx, compute.GetInstanceSerialPortOutputArgs{
/// 			Instance: windows.Name,
/// 			Zone:     windows.Zone,
/// 			Port:     pulumi.Int(4),
/// 		}, nil)
/// 		ctx.Export("serialOut", serial.Contents())
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstanceserialport" "serial" {
///   instance = gcp_compute_instance.windows.name
///   zone     = gcp_compute_instance.windows.zone
///   port     = 4
/// }
///
/// resource "gcp_compute_instance" "windows" {
///   network_interfaces {
///     access_configs {
///     }
///     network = "default"
///   }
///   name         = "windows-instance"
///   machine_type = "e2-medium"
///   zone         = "us-central1-a"
///   boot_disk = {
///     initialize_params = {
///       image = "windows-cloud/windows-2019"
///     }
///   }
///   metadata = {
///     "serial-port-logging-enable" = "TRUE"
///     "windows-keys" = jsonencode({
///       "email"    = "example.user@example.com"
///       "expireOn" = "2020-04-14T01:37:19Z"
///       "exponent" = "AQAB"
///       "modulus"  = "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q=="
///       "userName" = "example-user"
///     })
///   }
///   service_account = {
///     scopes = ["userinfo-email", "compute-ro", "storage-ro"]
///   }
/// }
/// output "serialOut" {
///   value = data.gcp_compute_getinstanceserialport.serial.contents
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceServiceAccountArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceSerialPortArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var windows = new Instance("windows", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("windows-instance")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("windows-cloud/windows-2019")
///                     .build())
///                 .build())
///             .metadata(Map.ofEntries(
///                 Map.entry("serial-port-logging-enable", "TRUE"),
///                 Map.entry("windows-keys", serializeJson(
///                     jsonObject(
///                         jsonProperty("email", "example.user@example.com"),
///                         jsonProperty("expireOn", "2020-04-14T01:37:19Z"),
///                         jsonProperty("exponent", "AQAB"),
///                         jsonProperty("modulus", "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q=="),
///                         jsonProperty("userName", "example-user")
///                     )))
///             ))
///             .serviceAccount(InstanceServiceAccountArgs.builder()
///                 .scopes(
///                     "userinfo-email",
///                     "compute-ro",
///                     "storage-ro")
///                 .build())
///             .build());
///
///         final var serial = ComputeFunctions.getInstanceSerialPort(GetInstanceSerialPortArgs.builder()
///             .instance(windows.name())
///             .zone(windows.zone())
///             .port(4)
///             .build());
///
///         ctx.export("serialOut", serial.applyValue(_serial -> _serial.contents()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   windows:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: windows-instance
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: windows-cloud/windows-2019
///       metadata:
///         serial-port-logging-enable: TRUE
///         windows-keys:
///           fn::toJSON:
///             email: example.user@example.com
///             expireOn: 2020-04-14T01:37:19Z
///             exponent: AQAB
///             modulus: wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==
///             userName: example-user
///       serviceAccount:
///         scopes:
///           - userinfo-email
///           - compute-ro
///           - storage-ro
/// variables:
///   serial:
///     fn::invoke:
///       function: gcp:compute:getInstanceSerialPort
///       arguments:
///         instance: ${windows.name}
///         zone: ${windows.zone}
///         port: 4
/// outputs:
///   serialOut: ${serial.contents}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_serial_port_get_instance_serial_port_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceSerialPortResult> getInstanceSerialPort(
  GetInstanceSerialPortArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceSerialPort:getInstanceSerialPort',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceSerialPortResult.fromMap(result);
}

/// &gt; **Note**: Global instance templates can be used in any region. To lower the impact of outages outside your region and gain data residency within your region, use google_compute_region_instance_template.
///
/// Get information about a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates).
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_template_get_instance_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateResult> getInstanceTemplate(
  GetInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceTemplate:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateResult.fromMap(result);
}

/// Retrieves the current IAM policy data for instancetemplate
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getInstanceTemplateIamPolicy({
///     project: _default.project,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_instance_template_iam_policy(project=default["project"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetInstanceTemplateIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupInstanceTemplateIamPolicy(ctx, &compute.LookupInstanceTemplateIamPolicyArgs{
/// 			Project: pulumi.StringRef(_default.Project),
/// 			Name:    _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstancetemplateiampolicy" "policy" {
///   project = default.project
///   name    = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceTemplateIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getInstanceTemplateIamPolicy(GetInstanceTemplateIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getInstanceTemplateIamPolicy
///       arguments:
///         project: ${default.project}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_template_iam_policy_get_instance_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateIamPolicyResult> getInstanceTemplateIamPolicy(
  GetInstanceTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceTemplateIamPolicy:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for instantsnapshot
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getInstantSnapshotIamPolicy({
///     project: _default.project,
///     zone: _default.zone,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_instant_snapshot_iam_policy(project=default["project"],
///     zone=default["zone"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetInstantSnapshotIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Zone = @default.Zone,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupInstantSnapshotIamPolicy(ctx, &compute.LookupInstantSnapshotIamPolicyArgs{
/// 			Project: pulumi.StringRef(_default.Project),
/// 			Zone:    pulumi.StringRef(_default.Zone),
/// 			Name:    _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinstantsnapshotiampolicy" "policy" {
///   project = default.project
///   zone    = default.zone
///   name    = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstantSnapshotIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getInstantSnapshotIamPolicy(GetInstantSnapshotIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .zone(default_.get("zone"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getInstantSnapshotIamPolicy
///       arguments:
///         project: ${default.project}
///         zone: ${default.zone}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instant_snapshot_iam_policy_get_instant_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstantSnapshotIamPolicyResult> getInstantSnapshotIamPolicy(
  GetInstantSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstantSnapshotIamPolicy:getInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotIamPolicyResult.fromMap(result);
}

/// Get the details of a single interconnect location. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/get) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _this = gcp.compute.getInterconnectLocation({
///     name: "iad-zone1-1",
/// });
/// const thisInterconnect = new gcp.compute.Interconnect("this", {
///     project: _this.then(_this => _this.project),
///     location: _this.then(_this => _this.selfLink),
///     name: "my-dedicated-connection-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// this = gcp.compute.get_interconnect_location(name="iad-zone1-1")
/// this_interconnect = gcp.compute.Interconnect("this",
///     project=this.project,
///     location=this.self_link,
///     name="my-dedicated-connection-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = Gcp.Compute.GetInterconnectLocation.Invoke(new()
///     {
///         Name = "iad-zone1-1",
///     });
///
///     var thisInterconnect = new Gcp.Compute.Interconnect("this", new()
///     {
///         Project = @this.Apply(@this => @this.Apply(getInterconnectLocationResult => getInterconnectLocationResult.Project)),
///         Location = @this.Apply(@this => @this.Apply(getInterconnectLocationResult => getInterconnectLocationResult.SelfLink)),
///         Name = "my-dedicated-connection-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := compute.GetInterconnectLocation(ctx, &compute.GetInterconnectLocationArgs{
/// 			Name: "iad-zone1-1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInterconnect(ctx, "this", &compute.InterconnectArgs{
/// 			Project:  pulumi.String(this.Project),
/// 			Location: pulumi.String(this.SelfLink),
/// 			Name:     pulumi.String("my-dedicated-connection-1"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinterconnectlocation" "this" {
///   name = "iad-zone1-1"
/// }
///
/// resource "gcp_compute_interconnect" "this" {
///   project  = data.gcp_compute_getinterconnectlocation.this.project
///   location = data.gcp_compute_getinterconnectlocation.this.self_link
///   name     = "my-dedicated-connection-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInterconnectLocationArgs;
/// import com.pulumi.gcp.compute.Interconnect;
/// import com.pulumi.gcp.compute.InterconnectArgs;
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
///         final var this = ComputeFunctions.getInterconnectLocation(GetInterconnectLocationArgs.builder()
///             .name("iad-zone1-1")
///             .build());
///
///         var thisInterconnect = new Interconnect("thisInterconnect", InterconnectArgs.builder()
///             .project(this_.project())
///             .location(this_.selfLink())
///             .name("my-dedicated-connection-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   thisInterconnect:
///     type: gcp:compute:Interconnect
///     name: this
///     properties:
///       project: ${this.project}
///       location: ${this.selfLink}
///       name: my-dedicated-connection-1
/// variables:
///   this:
///     fn::invoke:
///       function: gcp:compute:getInterconnectLocation
///       arguments:
///         name: iad-zone1-1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_interconnect_location_get_interconnect_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectLocationResult> getInterconnectLocation(
  GetInterconnectLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInterconnectLocation:getInterconnectLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectLocationResult.fromMap(result);
}

/// Get a list of interconnect locations. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/list) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getInterconnectLocations({});
/// export const interconnectLocations = all.then(all => all.locations);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_interconnect_locations()
/// pulumi.export("interconnectLocations", all.locations)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.Compute.GetInterconnectLocations.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["interconnectLocations"] = all.Apply(getInterconnectLocationsResult => getInterconnectLocationsResult.Locations),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := compute.GetInterconnectLocations(ctx, &compute.GetInterconnectLocationsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("interconnectLocations", all.Locations)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getinterconnectlocations" "all" {
/// }
///
/// output "interconnectLocations" {
///   value = data.gcp_compute_getinterconnectlocations.all.locations
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInterconnectLocationsArgs;
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
///         final var all = ComputeFunctions.getInterconnectLocations(GetInterconnectLocationsArgs.builder()
///             .build());
///
///         ctx.export("interconnectLocations", all.locations());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:compute:getInterconnectLocations
///       arguments: {}
/// outputs:
///   interconnectLocations: ${all.locations}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_interconnect_locations_get_interconnect_locations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectLocationsResult> getInterconnectLocations(
  GetInterconnectLocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInterconnectLocations:getInterconnectLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectLocationsResult.fromMap(result);
}

/// Use this data source to access IP ranges in your firewall rules.
///
/// https://cloud.google.com/compute/docs/load-balancing/health-checks#health_check_source_ips_and_firewall_rules
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ranges = gcp.compute.getLBIPRanges({});
/// const lb = new gcp.compute.Firewall("lb", {
///     name: "lb-firewall",
///     network: main.name,
///     allows: [{
///         protocol: "tcp",
///         ports: ["80"],
///     }],
///     sourceRanges: ranges.then(ranges => ranges.networks),
///     targetTags: ["InstanceBehindLoadBalancer"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ranges = gcp.compute.get_lbip_ranges()
/// lb = gcp.compute.Firewall("lb",
///     name="lb-firewall",
///     network=main["name"],
///     allows=[{
///         "protocol": "tcp",
///         "ports": ["80"],
///     }],
///     source_ranges=ranges.networks,
///     target_tags=["InstanceBehindLoadBalancer"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ranges = Gcp.Compute.GetLBIPRanges.Invoke();
///
///     var lb = new Gcp.Compute.Firewall("lb", new()
///     {
///         Name = "lb-firewall",
///         Network = main.Name,
///         Allows = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "tcp",
///                 Ports = new[]
///                 {
///                     "80",
///                 },
///             },
///         },
///         SourceRanges = ranges.Apply(getLBIPRangesResult => getLBIPRangesResult.Networks),
///         TargetTags = new[]
///         {
///             "InstanceBehindLoadBalancer",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ranges, err := compute.GetLBIPRanges(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewall(ctx, "lb", &compute.FirewallArgs{
/// 			Name:    pulumi.String("lb-firewall"),
/// 			Network: pulumi.Any(main.Name),
/// 			Allows: compute.FirewallAllowArray{
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("80"),
/// 					},
/// 				},
/// 			},
/// 			SourceRanges: toPulumiStringArray(ranges.Networks),
/// 			TargetTags: pulumi.StringArray{
/// 				pulumi.String("InstanceBehindLoadBalancer"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiStringArray(arr []string) pulumi.StringArray {
/// 	var pulumiArr pulumi.StringArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.String(v))
/// 	}
/// 	return pulumiArr
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getlbipranges" "ranges" {
/// }
///
/// resource "gcp_compute_firewall" "lb" {
///   name    = "lb-firewall"
///   network = main.name
///   allows {
///     protocol = "tcp"
///     ports    = ["80"]
///   }
///   source_ranges = data.gcp_compute_getlbipranges.ranges.networks
///   target_tags   = ["InstanceBehindLoadBalancer"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
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
///         final var ranges = ComputeFunctions.getLBIPRanges(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var lb = new Firewall("lb", FirewallArgs.builder()
///             .name("lb-firewall")
///             .network(main.get("name"))
///             .allows(FirewallAllowArgs.builder()
///                 .protocol("tcp")
///                 .ports("80")
///                 .build())
///             .sourceRanges(ranges.networks())
///             .targetTags("InstanceBehindLoadBalancer")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb:
///     type: gcp:compute:Firewall
///     properties:
///       name: lb-firewall
///       network: ${main.name}
///       allows:
///         - protocol: tcp
///           ports:
///             - '80'
///       sourceRanges: ${ranges.networks}
///       targetTags:
///         - InstanceBehindLoadBalancer
/// variables:
///   ranges:
///     fn::invoke:
///       function: gcp:compute:getLBIPRanges
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetLBIPRangesResult> getLBIPRanges(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getLBIPRanges:getLBIPRanges',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLBIPRangesResult.fromMap(result);
}

/// Retrieves the current IAM policy data for machineimage
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getMachineImageIamPolicy({
///     project: image.project,
///     machineImage: image.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_machine_image_iam_policy(project=image["project"],
///     machine_image=image["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetMachineImageIamPolicy.Invoke(new()
///     {
///         Project = image.Project,
///         MachineImage = image.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupMachineImageIamPolicy(ctx, &compute.LookupMachineImageIamPolicyArgs{
/// 			Project:      pulumi.StringRef(image.Project),
/// 			MachineImage: image.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getmachineimageiampolicy" "policy" {
///   project       = image.project
///   machine_image = image.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetMachineImageIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getMachineImageIamPolicy(GetMachineImageIamPolicyArgs.builder()
///             .project(image.get("project"))
///             .machineImage(image.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getMachineImageIamPolicy
///       arguments:
///         project: ${image.project}
///         machineImage: ${image.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_machine_image_iam_policy_get_machine_image_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageIamPolicyResult> getMachineImageIamPolicy(
  GetMachineImageIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineImageIamPolicy:getMachineImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyResult.fromMap(result);
}

/// Provides access to available Google Compute machine types in a zone for a given project.
/// See more about [machine type availability](https://cloud.google.com/compute/docs/regions-zones#available) in the upstream docs.
///
/// To get more information about machine types, see:
///
/// * [API Documentation](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes/list)
/// * [Comparison Guide](https://cloud.google.com/compute/docs/machine-resource)
///
/// ## Example Usage
///
/// ### Property-Based Availability
///
/// Create a VM instance template for each machine type with 16GB of memory and 8 CPUs available in the provided zone.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const example = await gcp.compute.getMachineTypes({
///         filter: "memoryMb = 16384 AND guestCpus = 8",
///         zone: zone,
///     });
///     const exampleInstanceTemplate: gcp.compute.InstanceTemplate[] = [];
///     for (const range of std.toset({
///         input: example.machineTypes.map(__item => __item.name),
///     }).result.map((v, k) => ({key: k, value: v}))) {
///         exampleInstanceTemplate.push(new gcp.compute.InstanceTemplate(`example-${range.key}`, {
///             machineType: range.value,
///             disks: [{
///                 sourceImage: "debian-cloud/debian-11",
///                 autoDelete: true,
///                 boot: true,
///             }],
///         }));
///     }
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.compute.get_machine_types(filter="memoryMb = 16384 AND guestCpus = 8",
///     zone=zone)
/// example_instance_template: list[gcp.compute.InstanceTemplate] = []
/// for example_instance_template_range in [{"key": k, "value": v} for [k, v] in enumerate(std.toset(input=[__item.name for __item in example.machine_types]).result)]:
///     example_instance_template.append(gcp.compute.InstanceTemplate(f"example-{example_instance_template_range['key']}",
///         machine_type=example_instance_template_range["value"],
///         disks=[{
///             "source_image": "debian-cloud/debian-11",
///             "auto_delete": True,
///             "boot": True,
///         }]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
///     var example = await Gcp.Compute.GetMachineTypes.InvokeAsync(new()
///     {
///         Filter = "memoryMb = 16384 AND guestCpus = 8",
///         Zone = zone,
///     });
///
///     var exampleInstanceTemplate = new List<Gcp.Compute.InstanceTemplate>();
///     foreach (var range in )
///     {
///         exampleInstanceTemplate.Add(new Gcp.Compute.InstanceTemplate($"example-{range.Key}", new()
///         {
///             MachineType = range.Value,
///             Disks = new[]
///             {
///                 new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///                 {
///                     SourceImage = "debian-cloud/debian-11",
///                     AutoDelete = true,
///                     Boot = true,
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := compute.GetMachineTypes(ctx, &compute.GetMachineTypesArgs{
/// Filter: pulumi.StringRef("memoryMb = 16384 AND guestCpus = 8"),
/// Zone: pulumi.StringRef(zone),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var exampleInstanceTemplate []*compute.InstanceTemplate
/// for key0, val0 := range []interface{}(std.Toset(ctx, &std.TosetArgs{
/// Input: %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:9,15-43),
/// }, nil).Result) {
/// __res, err := compute.NewInstanceTemplate(ctx, fmt.Sprintf("example-%v", key0), &compute.InstanceTemplateArgs{
/// MachineType: pulumi.Any(val0),
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String("debian-cloud/debian-11"),
/// AutoDelete: pulumi.Bool(true),
/// Boot: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleInstanceTemplate = append(exampleInstanceTemplate, __res)
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_compute_getmachinetypes" "example" {
///   filter = "memoryMb = 16384 AND guestCpus = 8"
///   zone   = zone
/// }
///
/// resource "gcp_compute_instancetemplate" "example" {
///   for_each     = toset(data.gcp_compute_getmachinetypes.example.machine_types[*].name)
///   machine_type = each.value
///   disks {
///     source_image = "debian-cloud/debian-11"
///     auto_delete  = true
///     boot         = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetMachineTypesArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var example = ComputeFunctions.getMachineTypes(GetMachineTypesArgs.builder()
///             .filter("memoryMb = 16384 AND guestCpus = 8")
///             .zone(zone)
///             .build());
///
///         for (var range : KeyedValue.of(com.pulumi.std.StdFunctions(com.pulumi.std.inputs.TosetArgs.builder()
///             .input(example.machineTypes().stream().map(element -> element.name()).collect(toList()))
///             .build()).result())) {
///             new InstanceTemplate("exampleInstanceTemplate-" + range.key(), InstanceTemplateArgs.builder()
///                 .machineType(range.value())
///                 .disks(InstanceTemplateDiskArgs.builder()
///                     .sourceImage("debian-cloud/debian-11")
///                     .autoDelete(true)
///                     .boot(true)
///                     .build())
///                 .build());
///         }
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: example
///     properties:
///       machineType: ${range.value}
///       disks:
///         - sourceImage: debian-cloud/debian-11
///           autoDelete: true
///           boot: true
///     options: {}
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:compute:getMachineTypes
///       arguments:
///         filter: memoryMb = 16384 AND guestCpus = 8
///         zone: ${zone}
/// ```
///
///
/// ### Machine Family Preference
///
/// Create an instance template, preferring `c3` machine family if available in the provided zone, otherwise falling back to `c2` and finally `n2`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const example = gcp.compute.getMachineTypes({
///     filter: "memoryMb = 16384 AND guestCpus = 4",
///     zone: zone,
/// });
/// const exampleInstanceTemplate = new gcp.compute.InstanceTemplate("example", {
///     machineType: output(Promise.all([example, std.startswith({
///         input: mt.name,
///         prefix: "c3-",
///     }), std.startswith({
///         input: mt.name,
///         prefix: "c2-",
///     }), std.startswith({
///         input: mt.name,
///         prefix: "n2-",
///     })]).then(([example, invoke, invoke1, invoke2]) => std.coalescelist({
///         input: [
///             .filter(mt => invoke.result).map(mt => (mt.name)),
///             .filter(mt => invoke1.result).map(mt => (mt.name)),
///             .filter(mt => invoke2.result).map(mt => (mt.name)),
///         ],
///     })).then(invoke => invoke.result?.[0])).apply(x =>String(x)),
///     disks: [{
///         sourceImage: "debian-cloud/debian-11",
///         autoDelete: true,
///         boot: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.compute.get_machine_types(filter="memoryMb = 16384 AND guestCpus = 4",
///     zone=zone)
/// example_instance_template = gcp.compute.InstanceTemplate("example",
///     machine_type=output(std.coalescelist(input=[
///         [mt.name for mt in example.machine_types if std.startswith(input=mt.name,
///             prefix="c3-").result],
///         [mt.name for mt in example.machine_types if std.startswith(input=mt.name,
///             prefix="c2-").result],
///         [mt.name for mt in example.machine_types if std.startswith(input=mt.name,
///             prefix="n2-").result],
///     ]).result[0]).apply(lambda x: str(x)),
///     disks=[{
///         "source_image": "debian-cloud/debian-11",
///         "auto_delete": True,
///         "boot": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Compute.GetMachineTypes.Invoke(new()
///     {
///         Filter = "memoryMb = 16384 AND guestCpus = 4",
///         Zone = zone,
///     });
///
///     var exampleInstanceTemplate = new Gcp.Compute.InstanceTemplate("example", new()
///     {
///         MachineType = Output.Create(Output.Tuple(example, Std.Startswith.Invoke(new()
///         {
///             Input = mt.Name,
///             Prefix = "c3-",
///         }), Std.Startswith.Invoke(new()
///         {
///             Input = mt.Name,
///             Prefix = "c2-",
///         }), Std.Startswith.Invoke(new()
///         {
///             Input = mt.Name,
///             Prefix = "n2-",
///         })).Apply(values =>
///         {
///             var example = values.Item1;
///             var invoke = values.Item2;
///             var invoke1 = values.Item3;
///             var invoke2 = values.Item4;
///             return Std.Coalescelist.Invoke(new()
///             {
///                 Input = new[]
///                 {
///                     .Where(mt => invoke.Result).Select(mt =>
///                     {
///                         return mt.Name;
///                     }).ToList(),
///                     .Where(mt => invoke1.Result).Select(mt =>
///                     {
///                         return mt.Name;
///                     }).ToList(),
///                     .Where(mt => invoke2.Result).Select(mt =>
///                     {
///                         return mt.Name;
///                     }).ToList(),
///                 },
///             });
///         }).Apply(invoke => invoke.Result[0])).Apply(x => x.ToString(System.Globalization.CultureInfo.InvariantCulture)),
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "std_coalescelist" "invoke_0" {
///   input = [[for mt in data.gcp_compute_getmachinetypes.example.machine_types : mt.name if startswith(mt.name, "c3-")], [for mt in data.gcp_compute_getmachinetypes.example.machine_types : mt.name if startswith(mt.name, "c2-")], [for mt in data.gcp_compute_getmachinetypes.example.machine_types : mt.name if startswith(mt.name, "n2-")]]
/// }
/// data "gcp_compute_getmachinetypes" "example" {
///   filter = "memoryMb = 16384 AND guestCpus = 4"
///   zone   = zone
/// }
///
/// resource "gcp_compute_instancetemplate" "example" {
///   machine_type = data.std_coalescelist.invoke_0.result[0]
///   disks {
///     source_image = "debian-cloud/debian-11"
///     auto_delete  = true
///     boot         = true
///   }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_machine_types_get_machine_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineTypesResult> getMachineTypes(
  GetMachineTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineTypes:getMachineTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineTypesResult.fromMap(result);
}

/// Use this data source to get the IP addresses from different special IP ranges on Google Cloud Platform.
///
/// ## Example Usage
///
/// ### Cloud Ranges
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const netblock = gcp.compute.getNetblockIPRanges({});
/// export const cidrBlocks = netblock.then(netblock => netblock.cidrBlocks);
/// export const cidrBlocksIpv4 = netblock.then(netblock => netblock.cidrBlocksIpv4s);
/// export const cidrBlocksIpv6 = netblock.then(netblock => netblock.cidrBlocksIpv6s);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// netblock = gcp.compute.get_netblock_ip_ranges()
/// pulumi.export("cidrBlocks", netblock.cidr_blocks)
/// pulumi.export("cidrBlocksIpv4", netblock.cidr_blocks_ipv4s)
/// pulumi.export("cidrBlocksIpv6", netblock.cidr_blocks_ipv6s)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var netblock = Gcp.Compute.GetNetblockIPRanges.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["cidrBlocks"] = netblock.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocks),
///         ["cidrBlocksIpv4"] = netblock.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocksIpv4s),
///         ["cidrBlocksIpv6"] = netblock.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocksIpv6s),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		netblock, err := compute.GetNetblockIPRanges(ctx, &compute.GetNetblockIPRangesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cidrBlocks", netblock.CidrBlocks)
/// 		ctx.Export("cidrBlocksIpv4", netblock.CidrBlocksIpv4s)
/// 		ctx.Export("cidrBlocksIpv6", netblock.CidrBlocksIpv6s)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetblockipranges" "netblock" {
/// }
///
/// output "cidrBlocks" {
///   value = data.gcp_compute_getnetblockipranges.netblock.cidr_blocks
/// }
/// output "cidrBlocksIpv4" {
///   value = data.gcp_compute_getnetblockipranges.netblock.cidr_blocks_ipv4s
/// }
/// output "cidrBlocksIpv6" {
///   value = data.gcp_compute_getnetblockipranges.netblock.cidr_blocks_ipv6s
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetblockIPRangesArgs;
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
///         final var netblock = ComputeFunctions.getNetblockIPRanges(GetNetblockIPRangesArgs.builder()
///             .build());
///
///         ctx.export("cidrBlocks", netblock.cidrBlocks());
///         ctx.export("cidrBlocksIpv4", netblock.cidrBlocksIpv4s());
///         ctx.export("cidrBlocksIpv6", netblock.cidrBlocksIpv6s());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   netblock:
///     fn::invoke:
///       function: gcp:compute:getNetblockIPRanges
///       arguments: {}
/// outputs:
///   cidrBlocks: ${netblock.cidrBlocks}
///   cidrBlocksIpv4: ${netblock.cidrBlocksIpv4s}
///   cidrBlocksIpv6: ${netblock.cidrBlocksIpv6s}
/// ```
///
///
/// ### Allow Health Checks
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const legacy_hcs = gcp.compute.getNetblockIPRanges({
///     rangeType: "legacy-health-checkers",
/// });
/// const _default = new gcp.compute.Network("default", {name: "test-network"});
/// const allow_hcs = new gcp.compute.Firewall("allow-hcs", {
///     name: "allow-hcs",
///     network: _default.name,
///     allows: [{
///         protocol: "tcp",
///         ports: ["80"],
///     }],
///     sourceRanges: legacy_hcs.then(legacy_hcs => legacy_hcs.cidrBlocksIpv4s),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// legacy_hcs = gcp.compute.get_netblock_ip_ranges(range_type="legacy-health-checkers")
/// default = gcp.compute.Network("default", name="test-network")
/// allow_hcs = gcp.compute.Firewall("allow-hcs",
///     name="allow-hcs",
///     network=default.name,
///     allows=[{
///         "protocol": "tcp",
///         "ports": ["80"],
///     }],
///     source_ranges=legacy_hcs.cidr_blocks_ipv4s)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var legacy_hcs = Gcp.Compute.GetNetblockIPRanges.Invoke(new()
///     {
///         RangeType = "legacy-health-checkers",
///     });
///
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "test-network",
///     });
///
///     var allow_hcs = new Gcp.Compute.Firewall("allow-hcs", new()
///     {
///         Name = "allow-hcs",
///         Network = @default.Name,
///         Allows = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "tcp",
///                 Ports = new[]
///                 {
///                     "80",
///                 },
///             },
///         },
///         SourceRanges = legacy_hcs.Apply(legacy_hcs => legacy_hcs.Apply(getNetblockIPRangesResult => getNetblockIPRangesResult.CidrBlocksIpv4s)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		legacy_hcs, err := compute.GetNetblockIPRanges(ctx, &compute.GetNetblockIPRangesArgs{
/// 			RangeType: pulumi.StringRef("legacy-health-checkers"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewall(ctx, "allow-hcs", &compute.FirewallArgs{
/// 			Name:    pulumi.String("allow-hcs"),
/// 			Network: _default.Name,
/// 			Allows: compute.FirewallAllowArray{
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("80"),
/// 					},
/// 				},
/// 			},
/// 			SourceRanges: toPulumiStringArray(legacy_hcs.CidrBlocksIpv4s),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiStringArray(arr []string) pulumi.StringArray {
/// 	var pulumiArr pulumi.StringArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.String(v))
/// 	}
/// 	return pulumiArr
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetblockipranges" "legacy-hcs" {
///   range_type = "legacy-health-checkers"
/// }
///
/// resource "gcp_compute_firewall" "allow-hcs" {
///   name    = "allow-hcs"
///   network = gcp_compute_network.default.name
///   allows {
///     protocol = "tcp"
///     ports    = ["80"]
///   }
///   source_ranges = data.gcp_compute_getnetblockipranges.legacy-hcs.cidr_blocks_ipv4s
/// }
/// resource "gcp_compute_network" "default" {
///   name = "test-network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetblockIPRangesArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
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
///         final var legacy-hcs = ComputeFunctions.getNetblockIPRanges(GetNetblockIPRangesArgs.builder()
///             .rangeType("legacy-health-checkers")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("test-network")
///             .build());
///
///         var allow_hcs = new Firewall("allow-hcs", FirewallArgs.builder()
///             .name("allow-hcs")
///             .network(default_.name())
///             .allows(FirewallAllowArgs.builder()
///                 .protocol("tcp")
///                 .ports("80")
///                 .build())
///             .sourceRanges(legacy_hcs.cidrBlocksIpv4s())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   allow-hcs:
///     type: gcp:compute:Firewall
///     properties:
///       name: allow-hcs
///       network: ${default.name}
///       allows:
///         - protocol: tcp
///           ports:
///             - '80'
///       sourceRanges: ${["legacy-hcs"].cidrBlocksIpv4s}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
/// variables:
///   legacy-hcs:
///     fn::invoke:
///       function: gcp:compute:getNetblockIPRanges
///       arguments:
///         rangeType: legacy-health-checkers
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_netblock_ipranges_get_netblock_ipranges_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetblockIPRangesResult> getNetblockIPRanges(
  GetNetblockIPRangesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetblockIPRanges:getNetblockIPRanges',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetblockIPRangesResult.fromMap(result);
}

/// Get a network within GCE from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_network = gcp.compute.getNetwork({
///     name: "default-us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.get_network(name="default-us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_network = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "default-us-east1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("default-us-east1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetwork" "my-network" {
///   name = "default-us-east1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
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
///         final var my-network = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("default-us-east1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-network:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: default-us-east1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_network_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

/// Get a specific network attachment within a region. For more information see
/// the [official documentation](https://cloud.google.com/vpc/docs/about-network-attachments)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/get).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetworkAttachment({
///     project: "my-project",
///     name: "my-network-attachment",
///     region: "europe-west1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network_attachment(project="my-project",
///     name="my-network-attachment",
///     region="europe-west1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetworkAttachment.Invoke(new()
///     {
///         Project = "my-project",
///         Name = "my-network-attachment",
///         Region = "europe-west1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupNetworkAttachment(ctx, &compute.LookupNetworkAttachmentArgs{
/// 			Project: pulumi.StringRef("my-project"),
/// 			Name:    "my-network-attachment",
/// 			Region:  "europe-west1",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetworkattachment" "default" {
///   project = "my-project"
///   name    = "my-network-attachment"
///   region  = "europe-west1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkAttachmentArgs;
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
///         final var default = ComputeFunctions.getNetworkAttachment(GetNetworkAttachmentArgs.builder()
///             .project("my-project")
///             .name("my-network-attachment")
///             .region("europe-west1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetworkAttachment
///       arguments:
///         project: my-project
///         name: my-network-attachment
///         region: europe-west1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_network_attachment_get_network_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentResult> getNetworkAttachment(
  GetNetworkAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkAttachment:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult.fromMap(result);
}

/// Use this data source to access a Network Endpoint Group's attributes.
///
/// The NEG may be found by providing either a `selfLink`, or a `name` and a `zone`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const neg1 = gcp.compute.getNetworkEndpointGroup({
///     name: "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///     zone: "us-central1-a",
/// });
/// const neg2 = gcp.compute.getNetworkEndpointGroup({
///     selfLink: "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// neg1 = gcp.compute.get_network_endpoint_group(name="k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///     zone="us-central1-a")
/// neg2 = gcp.compute.get_network_endpoint_group(self_link="https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var neg1 = Gcp.Compute.GetNetworkEndpointGroup.Invoke(new()
///     {
///         Name = "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///         Zone = "us-central1-a",
///     });
///
///     var neg2 = Gcp.Compute.GetNetworkEndpointGroup.Invoke(new()
///     {
///         SelfLink = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupNetworkEndpointGroup(ctx, &compute.LookupNetworkEndpointGroupArgs{
/// 			Name: pulumi.StringRef("k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
/// 			Zone: pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.LookupNetworkEndpointGroup(ctx, &compute.LookupNetworkEndpointGroupArgs{
/// 			SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetworkendpointgroup" "neg1" {
///   name = "k8s1-abcdef01-myns-mysvc-8080-4b6bac43"
///   zone = "us-central1-a"
/// }
/// data "gcp_compute_getnetworkendpointgroup" "neg2" {
///   self_link = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkEndpointGroupArgs;
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
///         final var neg1 = ComputeFunctions.getNetworkEndpointGroup(GetNetworkEndpointGroupArgs.builder()
///             .name("k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
///             .zone("us-central1-a")
///             .build());
///
///         final var neg2 = ComputeFunctions.getNetworkEndpointGroup(GetNetworkEndpointGroupArgs.builder()
///             .selfLink("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   neg1:
///     fn::invoke:
///       function: gcp:compute:getNetworkEndpointGroup
///       arguments:
///         name: k8s1-abcdef01-myns-mysvc-8080-4b6bac43
///         zone: us-central1-a
///   neg2:
///     fn::invoke:
///       function: gcp:compute:getNetworkEndpointGroup
///       arguments:
///         selfLink: https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_network_endpoint_group_get_network_endpoint_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEndpointGroupResult> getNetworkEndpointGroup(
  GetNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkEndpointGroup:getNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupResult.fromMap(result);
}

/// Use this data source to fetch a list of Network Endpoint Groups available in a
/// project and zone.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const negs = gcp.compute.getNetworkEndpointGroups({
///     zone: "us-central1-a",
///     filter: "networkEdpointType=GCE_VM_IP_PORT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// negs = gcp.compute.get_network_endpoint_groups(zone="us-central1-a",
///     filter="networkEdpointType=GCE_VM_IP_PORT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var negs = Gcp.Compute.GetNetworkEndpointGroups.Invoke(new()
///     {
///         Zone = "us-central1-a",
///         Filter = "networkEdpointType=GCE_VM_IP_PORT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetNetworkEndpointGroups(ctx, &compute.GetNetworkEndpointGroupsArgs{
/// 			Zone:   pulumi.StringRef("us-central1-a"),
/// 			Filter: pulumi.StringRef("networkEdpointType=GCE_VM_IP_PORT"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetworkendpointgroups" "negs" {
///   zone   = "us-central1-a"
///   filter = "networkEdpointType=GCE_VM_IP_PORT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkEndpointGroupsArgs;
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
///         final var negs = ComputeFunctions.getNetworkEndpointGroups(GetNetworkEndpointGroupsArgs.builder()
///             .zone("us-central1-a")
///             .filter("networkEdpointType=GCE_VM_IP_PORT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   negs:
///     fn::invoke:
///       function: gcp:compute:getNetworkEndpointGroups
///       arguments:
///         zone: us-central1-a
///         filter: networkEdpointType=GCE_VM_IP_PORT
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_network_endpoint_groups_get_network_endpoint_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEndpointGroupsResult> getNetworkEndpointGroups(
  GetNetworkEndpointGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkEndpointGroups:getNetworkEndpointGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupsResult.fromMap(result);
}

/// Retrieves the current IAM policy data for networkfirewallpolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getNetworkFirewallPolicyIamPolicy({
///     project: policyGoogleComputeNetworkFirewallPolicy.project,
///     name: policyGoogleComputeNetworkFirewallPolicy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_network_firewall_policy_iam_policy(project=policy_google_compute_network_firewall_policy["project"],
///     name=policy_google_compute_network_firewall_policy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetNetworkFirewallPolicyIamPolicy.Invoke(new()
///     {
///         Project = policyGoogleComputeNetworkFirewallPolicy.Project,
///         Name = policyGoogleComputeNetworkFirewallPolicy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupNetworkFirewallPolicyIamPolicy(ctx, &compute.LookupNetworkFirewallPolicyIamPolicyArgs{
/// 			Project: pulumi.StringRef(policyGoogleComputeNetworkFirewallPolicy.Project),
/// 			Name:    policyGoogleComputeNetworkFirewallPolicy.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetworkfirewallpolicyiampolicy" "policy" {
///   project = policyGoogleComputeNetworkFirewallPolicy.project
///   name    = policyGoogleComputeNetworkFirewallPolicy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkFirewallPolicyIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getNetworkFirewallPolicyIamPolicy(GetNetworkFirewallPolicyIamPolicyArgs.builder()
///             .project(policyGoogleComputeNetworkFirewallPolicy.get("project"))
///             .name(policyGoogleComputeNetworkFirewallPolicy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getNetworkFirewallPolicyIamPolicy
///       arguments:
///         project: ${policyGoogleComputeNetworkFirewallPolicy.project}
///         name: ${policyGoogleComputeNetworkFirewallPolicy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_network_firewall_policy_iam_policy_get_network_firewall_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyIamPolicyResult> getNetworkFirewallPolicyIamPolicy(
  GetNetworkFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkFirewallPolicyIamPolicy:getNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyIamPolicyResult.fromMap(result);
}

/// Get information of a specified compute network peering. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/vpc/vpc-peering)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/networks).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "foobar",
///     autoCreateSubnetworks: false,
/// });
/// const other = new gcp.compute.Network("other", {
///     name: "other",
///     autoCreateSubnetworks: false,
/// });
/// const peering1 = new gcp.compute.NetworkPeering("peering1", {
///     name: "peering1",
///     network: _default.selfLink,
///     peerNetwork: other.selfLink,
/// });
/// const peering2 = new gcp.compute.NetworkPeering("peering2", {
///     name: "peering2",
///     network: other.selfLink,
///     peerNetwork: _default.selfLink,
/// });
/// const peering1Ds = gcp.compute.getNetworkPeeringOutput({
///     name: peering1.name,
///     network: peering1.network,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="foobar",
///     auto_create_subnetworks=False)
/// other = gcp.compute.Network("other",
///     name="other",
///     auto_create_subnetworks=False)
/// peering1 = gcp.compute.NetworkPeering("peering1",
///     name="peering1",
///     network=default.self_link,
///     peer_network=other.self_link)
/// peering2 = gcp.compute.NetworkPeering("peering2",
///     name="peering2",
///     network=other.self_link,
///     peer_network=default.self_link)
/// peering1_ds = gcp.compute.get_network_peering_output(name=peering1.name,
///     network=peering1.network)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "foobar",
///         AutoCreateSubnetworks = false,
///     });
///
///     var other = new Gcp.Compute.Network("other", new()
///     {
///         Name = "other",
///         AutoCreateSubnetworks = false,
///     });
///
///     var peering1 = new Gcp.Compute.NetworkPeering("peering1", new()
///     {
///         Name = "peering1",
///         Network = @default.SelfLink,
///         PeerNetwork = other.SelfLink,
///     });
///
///     var peering2 = new Gcp.Compute.NetworkPeering("peering2", new()
///     {
///         Name = "peering2",
///         Network = other.SelfLink,
///         PeerNetwork = @default.SelfLink,
///     });
///
///     var peering1Ds = Gcp.Compute.GetNetworkPeering.Invoke(new()
///     {
///         Name = peering1.Name,
///         Network = peering1.Network,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("foobar"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		other, err := compute.NewNetwork(ctx, "other", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("other"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peering1, err := compute.NewNetworkPeering(ctx, "peering1", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering1"),
/// 			Network:     _default.SelfLink,
/// 			PeerNetwork: other.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeering(ctx, "peering2", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering2"),
/// 			Network:     other.SelfLink,
/// 			PeerNetwork: _default.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = compute.LookupNetworkPeeringOutput(ctx, compute.GetNetworkPeeringOutputArgs{
/// 			Name:    peering1.Name,
/// 			Network: peering1.Network,
/// 		}, nil)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetworkpeering" "peering1Ds" {
///   name    = gcp_compute_networkpeering.peering1.name
///   network = gcp_compute_networkpeering.peering1.network
/// }
///
/// resource "gcp_compute_networkpeering" "peering1" {
///   name         = "peering1"
///   network      = gcp_compute_network.default.self_link
///   peer_network = gcp_compute_network.other.self_link
/// }
/// resource "gcp_compute_networkpeering" "peering2" {
///   name         = "peering2"
///   network      = gcp_compute_network.other.self_link
///   peer_network = gcp_compute_network.default.self_link
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "foobar"
///   auto_create_subnetworks = "false"
/// }
/// resource "gcp_compute_network" "other" {
///   name                    = "other"
///   auto_create_subnetworks = "false"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkPeering;
/// import com.pulumi.gcp.compute.NetworkPeeringArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkPeeringArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("foobar")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var other = new Network("other", NetworkArgs.builder()
///             .name("other")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var peering1 = new NetworkPeering("peering1", NetworkPeeringArgs.builder()
///             .name("peering1")
///             .network(default_.selfLink())
///             .peerNetwork(other.selfLink())
///             .build());
///
///         var peering2 = new NetworkPeering("peering2", NetworkPeeringArgs.builder()
///             .name("peering2")
///             .network(other.selfLink())
///             .peerNetwork(default_.selfLink())
///             .build());
///
///         final var peering1Ds = ComputeFunctions.getNetworkPeering(GetNetworkPeeringArgs.builder()
///             .name(peering1.name())
///             .network(peering1.network())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peering1:
///     type: gcp:compute:NetworkPeering
///     properties:
///       name: peering1
///       network: ${default.selfLink}
///       peerNetwork: ${other.selfLink}
///   peering2:
///     type: gcp:compute:NetworkPeering
///     properties:
///       name: peering2
///       network: ${other.selfLink}
///       peerNetwork: ${default.selfLink}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: foobar
///       autoCreateSubnetworks: 'false'
///   other:
///     type: gcp:compute:Network
///     properties:
///       name: other
///       autoCreateSubnetworks: 'false'
/// variables:
///   peering1Ds:
///     fn::invoke:
///       function: gcp:compute:getNetworkPeering
///       arguments:
///         name: ${peering1.name}
///         network: ${peering1.network}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_network_peering_get_network_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPeeringResult> getNetworkPeering(
  GetNetworkPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult.fromMap(result);
}

/// List all networks in a specified Google Cloud project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_networks = gcp.compute.getNetworks({
///     project: "my-cloud-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_networks = gcp.compute.get_networks(project="my-cloud-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_networks = Gcp.Compute.GetNetworks.Invoke(new()
///     {
///         Project = "my-cloud-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetNetworks(ctx, &compute.GetNetworksArgs{
/// 			Project: pulumi.StringRef("my-cloud-project"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetworks" "my-networks" {
///   project = "my-cloud-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworksArgs;
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
///         final var my-networks = ComputeFunctions.getNetworks(GetNetworksArgs.builder()
///             .project("my-cloud-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-networks:
///     fn::invoke:
///       function: gcp:compute:getNetworks
///       arguments:
///         project: my-cloud-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_networks_get_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}

/// Provides available node types for Compute Engine sole-tenant nodes in a zone
/// for a given project. For more information, see [the official documentation](https://cloud.google.com/compute/docs/nodes/#types) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.compute.getNodeTypes({
///     zone: "us-central1-b",
/// });
/// const tmpl = new gcp.compute.NodeTemplate("tmpl", {
///     name: "test-tmpl",
///     region: "us-central1",
///     nodeType: types.names[0],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.compute.get_node_types(zone="us-central1-b")
/// tmpl = gcp.compute.NodeTemplate("tmpl",
///     name="test-tmpl",
///     region="us-central1",
///     node_type=types["names"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var central1b = Gcp.Compute.GetNodeTypes.Invoke(new()
///     {
///         Zone = "us-central1-b",
///     });
///
///     var tmpl = new Gcp.Compute.NodeTemplate("tmpl", new()
///     {
///         Name = "test-tmpl",
///         Region = "us-central1",
///         NodeType = types.Names[0],
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetNodeTypes(ctx, &compute.GetNodeTypesArgs{
/// 			Zone: pulumi.StringRef("us-central1-b"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNodeTemplate(ctx, "tmpl", &compute.NodeTemplateArgs{
/// 			Name:     pulumi.String("test-tmpl"),
/// 			Region:   pulumi.String("us-central1"),
/// 			NodeType: pulumi.Any(types.Names[0]),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnodetypes" "central1b" {
///   zone = "us-central1-b"
/// }
///
/// resource "gcp_compute_nodetemplate" "tmpl" {
///   name      = "test-tmpl"
///   region    = "us-central1"
///   node_type = types.names[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNodeTypesArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
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
///         final var central1b = ComputeFunctions.getNodeTypes(GetNodeTypesArgs.builder()
///             .zone("us-central1-b")
///             .build());
///
///         var tmpl = new NodeTemplate("tmpl", NodeTemplateArgs.builder()
///             .name("test-tmpl")
///             .region("us-central1")
///             .nodeType(types.get("names")[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tmpl:
///     type: gcp:compute:NodeTemplate
///     properties:
///       name: test-tmpl
///       region: us-central1
///       nodeType: ${types.names[0]}
/// variables:
///   central1b:
///     fn::invoke:
///       function: gcp:compute:getNodeTypes
///       arguments:
///         zone: us-central1-b
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_node_types_get_node_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTypesResult> getNodeTypes(
  GetNodeTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNodeTypes:getNodeTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTypesResult.fromMap(result);
}

/// Retrieves the current IAM policy data for regionbackendbucket
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionBackendBucketIamPolicy({
///     project: imageBackend.project,
///     region: imageBackend.region,
///     name: imageBackend.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_backend_bucket_iam_policy(project=image_backend["project"],
///     region=image_backend["region"],
///     name=image_backend["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetRegionBackendBucketIamPolicy.Invoke(new()
///     {
///         Project = imageBackend.Project,
///         Region = imageBackend.Region,
///         Name = imageBackend.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionBackendBucketIamPolicy(ctx, &compute.LookupRegionBackendBucketIamPolicyArgs{
/// 			Project: pulumi.StringRef(imageBackend.Project),
/// 			Region:  pulumi.StringRef(imageBackend.Region),
/// 			Name:    imageBackend.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionbackendbucketiampolicy" "policy" {
///   project = imageBackend.project
///   region  = imageBackend.region
///   name    = imageBackend.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionBackendBucketIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getRegionBackendBucketIamPolicy(GetRegionBackendBucketIamPolicyArgs.builder()
///             .project(imageBackend.get("project"))
///             .region(imageBackend.get("region"))
///             .name(imageBackend.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getRegionBackendBucketIamPolicy
///       arguments:
///         project: ${imageBackend.project}
///         region: ${imageBackend.region}
///         name: ${imageBackend.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_backend_bucket_iam_policy_get_region_backend_bucket_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendBucketIamPolicyResult> getRegionBackendBucketIamPolicy(
  GetRegionBackendBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendBucketIamPolicy:getRegionBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendBucketIamPolicyResult.fromMap(result);
}

/// Get information about a Regional Backend Service. For more information see
/// [the official documentation](https://docs.cloud.google.com/load-balancing/docs/internal) and
/// [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionBackendServices).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackend = gcp.compute.getRegionBackendService({
///     name: "my-backend-service",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backend = gcp.compute.get_region_backend_service(name="my-backend-service",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myBackend = Gcp.Compute.GetRegionBackendService.Invoke(new()
///     {
///         Name = "my-backend-service",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionBackendService(ctx, &compute.LookupRegionBackendServiceArgs{
/// 			Name:   "my-backend-service",
/// 			Region: pulumi.StringRef("us-central1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionbackendservice" "myBackend" {
///   name   = "my-backend-service"
///   region = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionBackendServiceArgs;
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
///         final var myBackend = ComputeFunctions.getRegionBackendService(GetRegionBackendServiceArgs.builder()
///             .name("my-backend-service")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myBackend:
///     fn::invoke:
///       function: gcp:compute:getRegionBackendService
///       arguments:
///         name: my-backend-service
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_backend_service_get_region_backend_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceResult> getRegionBackendService(
  GetRegionBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendService:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult.fromMap(result);
}

/// Retrieves the current IAM policy data for regionbackendservice
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionBackendServiceIamPolicy({
///     project: _default.project,
///     region: _default.region,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_backend_service_iam_policy(project=default["project"],
///     region=default["region"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetRegionBackendServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Region = @default.Region,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionBackendServiceIamPolicy(ctx, &compute.LookupRegionBackendServiceIamPolicyArgs{
/// 			Project: pulumi.StringRef(_default.Project),
/// 			Region:  pulumi.StringRef(_default.Region),
/// 			Name:    _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionbackendserviceiampolicy" "policy" {
///   project = default.project
///   region  = default.region
///   name    = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionBackendServiceIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getRegionBackendServiceIamPolicy(GetRegionBackendServiceIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .region(default_.get("region"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getRegionBackendServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         region: ${default.region}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_backend_service_iam_policy_get_region_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceIamPolicyResult> getRegionBackendServiceIamPolicy(
  GetRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendServiceIamPolicy:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyResult.fromMap(result);
}

/// Get information about a Google Compute Regional Persistent disks.
///
/// [the official documentation](https://cloud.google.com/compute/docs/disks) and its [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks).
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregiondisk" "disk" {
///   name                      = "persistent-regional-disk"
///   project                   = "example"
///   region                    = "us-central1"
///   type                      = "pd-ssd"
///   physical_block_size_bytes = 4096
///   replica_zones             = ["us-central1-a", "us-central1-f"]
/// }
///
/// resource "gcp_compute_instance" "default" {
///   attached_disks {
///     source = diskGoogleComputeDisk.selfLink
///   }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Instance
///     properties:
///       attachedDisks:
///         - source: ${diskGoogleComputeDisk.selfLink}
/// variables:
///   disk:
///     fn::invoke:
///       function: gcp:compute:getRegionDisk
///       arguments:
///         name: persistent-regional-disk
///         project: example
///         region: us-central1
///         type: pd-ssd
///         physicalBlockSizeBytes: 4096
///         replicaZones:
///           - us-central1-a
///           - us-central1-f
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_disk_get_region_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskResult> getRegionDisk(
  GetRegionDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionDisk:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult.fromMap(result);
}

/// Retrieves the current IAM policy data for regiondisk
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionDiskIamPolicy({
///     project: regiondisk.project,
///     region: regiondisk.region,
///     name: regiondisk.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_disk_iam_policy(project=regiondisk["project"],
///     region=regiondisk["region"],
///     name=regiondisk["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetRegionDiskIamPolicy.Invoke(new()
///     {
///         Project = regiondisk.Project,
///         Region = regiondisk.Region,
///         Name = regiondisk.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionDiskIamPolicy(ctx, &compute.LookupRegionDiskIamPolicyArgs{
/// 			Project: pulumi.StringRef(regiondisk.Project),
/// 			Region:  pulumi.StringRef(regiondisk.Region),
/// 			Name:    regiondisk.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregiondiskiampolicy" "policy" {
///   project = regiondisk.project
///   region  = regiondisk.region
///   name    = regiondisk.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionDiskIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getRegionDiskIamPolicy(GetRegionDiskIamPolicyArgs.builder()
///             .project(regiondisk.get("project"))
///             .region(regiondisk.get("region"))
///             .name(regiondisk.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getRegionDiskIamPolicy
///       arguments:
///         project: ${regiondisk.project}
///         region: ${regiondisk.region}
///         name: ${regiondisk.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_disk_iam_policy_get_region_disk_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskIamPolicyResult> getRegionDiskIamPolicy(
  GetRegionDiskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionDiskIamPolicy:getRegionDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyResult.fromMap(result);
}

/// Get a Compute Region Instance Group within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/latest/regionInstanceGroups).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const group = gcp.compute.getRegionInstanceGroup({
///     name: "instance-group-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// group = gcp.compute.get_region_instance_group(name="instance-group-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @group = Gcp.Compute.GetRegionInstanceGroup.Invoke(new()
///     {
///         Name = "instance-group-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetRegionInstanceGroup(ctx, &compute.GetRegionInstanceGroupArgs{
/// 			Name: pulumi.StringRef("instance-group-name"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregioninstancegroup" "group" {
///   name = "instance-group-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionInstanceGroupArgs;
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
///         final var group = ComputeFunctions.getRegionInstanceGroup(GetRegionInstanceGroupArgs.builder()
///             .name("instance-group-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   group:
///     fn::invoke:
///       function: gcp:compute:getRegionInstanceGroup
///       arguments:
///         name: instance-group-name
/// ```
///
///
/// The most common use of this datasource will be to fetch information about the instances inside regional managed instance groups, for instance:
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_instance_group_get_region_instance_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceGroupResult> getRegionInstanceGroup(
  GetRegionInstanceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceGroup:getRegionInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupResult.fromMap(result);
}

/// Get a Compute Region Instance Group Manager within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const rigm = gcp.compute.getRegionInstanceGroupManager({
///     name: "my-igm",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// rigm = gcp.compute.get_region_instance_group_manager(name="my-igm",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rigm = Gcp.Compute.GetRegionInstanceGroupManager.Invoke(new()
///     {
///         Name = "my-igm",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionInstanceGroupManager(ctx, &compute.LookupRegionInstanceGroupManagerArgs{
/// 			Name:   pulumi.StringRef("my-igm"),
/// 			Region: pulumi.StringRef("us-central1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregioninstancegroupmanager" "rigm" {
///   name   = "my-igm"
///   region = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionInstanceGroupManagerArgs;
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
///         final var rigm = ComputeFunctions.getRegionInstanceGroupManager(GetRegionInstanceGroupManagerArgs.builder()
///             .name("my-igm")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   rigm:
///     fn::invoke:
///       function: gcp:compute:getRegionInstanceGroupManager
///       arguments:
///         name: my-igm
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_instance_group_manager_get_region_instance_group_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceGroupManagerResult> getRegionInstanceGroupManager(
  GetRegionInstanceGroupManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceGroupManager:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult.fromMap(result);
}

/// Get information about a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // by name
/// const generic = gcp.compute.getRegionInstanceTemplate({
///     name: "generic-tpl-20200107",
/// });
/// // using a filter
/// const generic_regex = gcp.compute.getRegionInstanceTemplate({
///     filter: "name != generic-tpl-20200107",
///     mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # by name
/// generic = gcp.compute.get_region_instance_template(name="generic-tpl-20200107")
/// # using a filter
/// generic_regex = gcp.compute.get_region_instance_template(filter="name != generic-tpl-20200107",
///     most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // by name
///     var generic = Gcp.Compute.GetRegionInstanceTemplate.Invoke(new()
///     {
///         Name = "generic-tpl-20200107",
///     });
///
///     // using a filter
///     var generic_regex = Gcp.Compute.GetRegionInstanceTemplate.Invoke(new()
///     {
///         Filter = "name != generic-tpl-20200107",
///         MostRecent = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// by name
/// 		_, err := compute.LookupRegionInstanceTemplate(ctx, &compute.LookupRegionInstanceTemplateArgs{
/// 			Name: pulumi.StringRef("generic-tpl-20200107"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// using a filter
/// 		_, err = compute.LookupRegionInstanceTemplate(ctx, &compute.LookupRegionInstanceTemplateArgs{
/// 			Filter:     pulumi.StringRef("name != generic-tpl-20200107"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregioninstancetemplate" "generic" {
///   name = "generic-tpl-20200107"
/// }
/// data "gcp_compute_getregioninstancetemplate" "generic-regex" {
///   filter      = "name != generic-tpl-20200107"
///   most_recent = true
/// }
///
/// # by name
/// # using a filter
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionInstanceTemplateArgs;
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
///         // by name
///         final var generic = ComputeFunctions.getRegionInstanceTemplate(GetRegionInstanceTemplateArgs.builder()
///             .name("generic-tpl-20200107")
///             .build());
///
///         // using a filter
///         final var generic-regex = ComputeFunctions.getRegionInstanceTemplate(GetRegionInstanceTemplateArgs.builder()
///             .filter("name != generic-tpl-20200107")
///             .mostRecent(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # by name
///   generic:
///     fn::invoke:
///       function: gcp:compute:getRegionInstanceTemplate
///       arguments:
///         name: generic-tpl-20200107
///   # using a filter
///   generic-regex:
///     fn::invoke:
///       function: gcp:compute:getRegionInstanceTemplate
///       arguments:
///         filter: name != generic-tpl-20200107
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_instance_template_get_region_instance_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceTemplateResult> getRegionInstanceTemplate(
  GetRegionInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceTemplate:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult.fromMap(result);
}

/// Retrieves the current IAM policy data for regioninstantsnapshot
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionInstantSnapshotIamPolicy({
///     project: _default.project,
///     region: _default.region,
///     name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_instant_snapshot_iam_policy(project=default["project"],
///     region=default["region"],
///     name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetRegionInstantSnapshotIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Region = @default.Region,
///         Name = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionInstantSnapshotIamPolicy(ctx, &compute.LookupRegionInstantSnapshotIamPolicyArgs{
/// 			Project: pulumi.StringRef(_default.Project),
/// 			Region:  pulumi.StringRef(_default.Region),
/// 			Name:    _default.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregioninstantsnapshotiampolicy" "policy" {
///   project = default.project
///   region  = default.region
///   name    = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionInstantSnapshotIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getRegionInstantSnapshotIamPolicy(GetRegionInstantSnapshotIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .region(default_.get("region"))
///             .name(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getRegionInstantSnapshotIamPolicy
///       arguments:
///         project: ${default.project}
///         region: ${default.region}
///         name: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_instant_snapshot_iam_policy_get_region_instant_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstantSnapshotIamPolicyResult> getRegionInstantSnapshotIamPolicy(
  GetRegionInstantSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstantSnapshotIamPolicy:getRegionInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotIamPolicyResult.fromMap(result);
}

/// Use this data source to access a Region Network Endpoint Group's attributes.
///
/// The RNEG may be found by providing either a `selfLink`, or a `name` and a `region`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const rneg1 = gcp.compute.getRegionNetworkEndpointGroup({
///     name: "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///     region: "us-central1",
/// });
/// const rneg2 = gcp.compute.getRegionNetworkEndpointGroup({
///     selfLink: "https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// rneg1 = gcp.compute.get_region_network_endpoint_group(name="k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///     region="us-central1")
/// rneg2 = gcp.compute.get_region_network_endpoint_group(self_link="https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rneg1 = Gcp.Compute.GetRegionNetworkEndpointGroup.Invoke(new()
///     {
///         Name = "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///         Region = "us-central1",
///     });
///
///     var rneg2 = Gcp.Compute.GetRegionNetworkEndpointGroup.Invoke(new()
///     {
///         SelfLink = "https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionNetworkEndpointGroup(ctx, &compute.LookupRegionNetworkEndpointGroupArgs{
/// 			Name:   pulumi.StringRef("k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
/// 			Region: pulumi.StringRef("us-central1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.LookupRegionNetworkEndpointGroup(ctx, &compute.LookupRegionNetworkEndpointGroupArgs{
/// 			SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionnetworkendpointgroup" "rneg1" {
///   name   = "k8s1-abcdef01-myns-mysvc-8080-4b6bac43"
///   region = "us-central1"
/// }
/// data "gcp_compute_getregionnetworkendpointgroup" "rneg2" {
///   self_link = "https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionNetworkEndpointGroupArgs;
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
///         final var rneg1 = ComputeFunctions.getRegionNetworkEndpointGroup(GetRegionNetworkEndpointGroupArgs.builder()
///             .name("k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
///             .region("us-central1")
///             .build());
///
///         final var rneg2 = ComputeFunctions.getRegionNetworkEndpointGroup(GetRegionNetworkEndpointGroupArgs.builder()
///             .selfLink("https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   rneg1:
///     fn::invoke:
///       function: gcp:compute:getRegionNetworkEndpointGroup
///       arguments:
///         name: k8s1-abcdef01-myns-mysvc-8080-4b6bac43
///         region: us-central1
///   rneg2:
///     fn::invoke:
///       function: gcp:compute:getRegionNetworkEndpointGroup
///       arguments:
///         selfLink: https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_network_endpoint_group_get_region_network_endpoint_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionNetworkEndpointGroup:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}

/// Retrieves the current IAM policy data for regionnetworkfirewallpolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getRegionNetworkFirewallPolicyIamPolicy({
///     project: policyGoogleComputeRegionNetworkFirewallPolicy.project,
///     region: policyGoogleComputeRegionNetworkFirewallPolicy.region,
///     name: policyGoogleComputeRegionNetworkFirewallPolicy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_region_network_firewall_policy_iam_policy(project=policy_google_compute_region_network_firewall_policy["project"],
///     region=policy_google_compute_region_network_firewall_policy["region"],
///     name=policy_google_compute_region_network_firewall_policy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetRegionNetworkFirewallPolicyIamPolicy.Invoke(new()
///     {
///         Project = policyGoogleComputeRegionNetworkFirewallPolicy.Project,
///         Region = policyGoogleComputeRegionNetworkFirewallPolicy.Region,
///         Name = policyGoogleComputeRegionNetworkFirewallPolicy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionNetworkFirewallPolicyIamPolicy(ctx, &compute.LookupRegionNetworkFirewallPolicyIamPolicyArgs{
/// 			Project: pulumi.StringRef(policyGoogleComputeRegionNetworkFirewallPolicy.Project),
/// 			Region:  pulumi.StringRef(policyGoogleComputeRegionNetworkFirewallPolicy.Region),
/// 			Name:    policyGoogleComputeRegionNetworkFirewallPolicy.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionnetworkfirewallpolicyiampolicy" "policy" {
///   project = policyGoogleComputeRegionNetworkFirewallPolicy.project
///   region  = policyGoogleComputeRegionNetworkFirewallPolicy.region
///   name    = policyGoogleComputeRegionNetworkFirewallPolicy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionNetworkFirewallPolicyIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getRegionNetworkFirewallPolicyIamPolicy(GetRegionNetworkFirewallPolicyIamPolicyArgs.builder()
///             .project(policyGoogleComputeRegionNetworkFirewallPolicy.get("project"))
///             .region(policyGoogleComputeRegionNetworkFirewallPolicy.get("region"))
///             .name(policyGoogleComputeRegionNetworkFirewallPolicy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getRegionNetworkFirewallPolicyIamPolicy
///       arguments:
///         project: ${policyGoogleComputeRegionNetworkFirewallPolicy.project}
///         region: ${policyGoogleComputeRegionNetworkFirewallPolicy.region}
///         name: ${policyGoogleComputeRegionNetworkFirewallPolicy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_network_firewall_policy_iam_policy_get_region_network_firewall_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyIamPolicyResult> getRegionNetworkFirewallPolicyIamPolicy(
  GetRegionNetworkFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionNetworkFirewallPolicyIamPolicy:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyResult.fromMap(result);
}

/// Gets a Regional SSL Policy within GCE from its name, for use with Target HTTPS and Target SSL Proxies.
/// For more information see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_ssl_policy = gcp.compute.getRegionSSLPolicy({
///     name: "production-ssl-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_ssl_policy = gcp.compute.get_region_ssl_policy(name="production-ssl-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_ssl_policy = Gcp.Compute.GetRegionSSLPolicy.Invoke(new()
///     {
///         Name = "production-ssl-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetRegionSSLPolicy(ctx, &compute.GetRegionSSLPolicyArgs{
/// 			Name: "production-ssl-policy",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionsslpolicy" "my-ssl-policy" {
///   name = "production-ssl-policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionSSLPolicyArgs;
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
///         final var my-ssl-policy = ComputeFunctions.getRegionSSLPolicy(GetRegionSSLPolicyArgs.builder()
///             .name("production-ssl-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-ssl-policy:
///     fn::invoke:
///       function: gcp:compute:getRegionSSLPolicy
///       arguments:
///         name: production-ssl-policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_sslpolicy_get_region_sslpolicy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSSLPolicyResult> getRegionSSLPolicy(
  GetRegionSSLPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSSLPolicy:getRegionSSLPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSSLPolicyResult.fromMap(result);
}

/// Use this data source to get information about a Compute Region Security Policy. For more details, see the [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getRegionSecurityPolicy({
///     name: "my-region-security-policy",
///     region: "us-west2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_region_security_policy(name="my-region-security-policy",
///     region="us-west2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetRegionSecurityPolicy.Invoke(new()
///     {
///         Name = "my-region-security-policy",
///         Region = "us-west2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionSecurityPolicy(ctx, &compute.LookupRegionSecurityPolicyArgs{
/// 			Name:   "my-region-security-policy",
/// 			Region: pulumi.StringRef("us-west2"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionsecuritypolicy" "default" {
///   name   = "my-region-security-policy"
///   region = "us-west2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionSecurityPolicyArgs;
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
///         final var default = ComputeFunctions.getRegionSecurityPolicy(GetRegionSecurityPolicyArgs.builder()
///             .name("my-region-security-policy")
///             .region("us-west2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getRegionSecurityPolicy
///       arguments:
///         name: my-region-security-policy
///         region: us-west2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_security_policy_get_region_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSecurityPolicyResult> getRegionSecurityPolicy(
  GetRegionSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSecurityPolicy:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult.fromMap(result);
}

/// Get info about a Region Google Compute SSL Certificate from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCert = gcp.compute.getRegionSslCertificate({
///     name: "my-cert",
/// });
/// export const certificate = myCert.then(myCert => myCert.certificate);
/// export const certificateId = myCert.then(myCert => myCert.certificateId);
/// export const selfLink = myCert.then(myCert => myCert.selfLink);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cert = gcp.compute.get_region_ssl_certificate(name="my-cert")
/// pulumi.export("certificate", my_cert.certificate)
/// pulumi.export("certificateId", my_cert.certificate_id)
/// pulumi.export("selfLink", my_cert.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myCert = Gcp.Compute.GetRegionSslCertificate.Invoke(new()
///     {
///         Name = "my-cert",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["certificate"] = myCert.Apply(getRegionSslCertificateResult => getRegionSslCertificateResult.Certificate),
///         ["certificateId"] = myCert.Apply(getRegionSslCertificateResult => getRegionSslCertificateResult.CertificateId),
///         ["selfLink"] = myCert.Apply(getRegionSslCertificateResult => getRegionSslCertificateResult.SelfLink),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myCert, err := compute.LookupRegionSslCertificate(ctx, &compute.LookupRegionSslCertificateArgs{
/// 			Name: "my-cert",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("certificate", myCert.Certificate)
/// 		ctx.Export("certificateId", myCert.CertificateId)
/// 		ctx.Export("selfLink", myCert.SelfLink)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregionsslcertificate" "myCert" {
///   name = "my-cert"
/// }
///
/// output "certificate" {
///   value = data.gcp_compute_getregionsslcertificate.myCert.certificate
/// }
/// output "certificateId" {
///   value = data.gcp_compute_getregionsslcertificate.myCert.certificate_id
/// }
/// output "selfLink" {
///   value = data.gcp_compute_getregionsslcertificate.myCert.self_link
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionSslCertificateArgs;
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
///         final var myCert = ComputeFunctions.getRegionSslCertificate(GetRegionSslCertificateArgs.builder()
///             .name("my-cert")
///             .build());
///
///         ctx.export("certificate", myCert.certificate());
///         ctx.export("certificateId", myCert.certificateId());
///         ctx.export("selfLink", myCert.selfLink());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myCert:
///     fn::invoke:
///       function: gcp:compute:getRegionSslCertificate
///       arguments:
///         name: my-cert
/// outputs:
///   certificate: ${myCert.certificate}
///   certificateId: ${myCert.certificateId}
///   selfLink: ${myCert.selfLink}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_ssl_certificate_get_region_ssl_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslCertificateResult> getRegionSslCertificate(
  GetRegionSslCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSslCertificate:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult.fromMap(result);
}

/// Get information about a Compute Engine RegionTargetHttpProxy.
///
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) and
/// the [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getRegionTargetHttpProxy({
///     name: defaultGoogleComputeRegionTargetHttpProxy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_region_target_http_proxy(name=default_google_compute_region_target_http_proxy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetRegionTargetHttpProxy.Invoke(new()
///     {
///         Name = defaultGoogleComputeRegionTargetHttpProxy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionTargetHttpProxy(ctx, &compute.LookupRegionTargetHttpProxyArgs{
/// 			Name: defaultGoogleComputeRegionTargetHttpProxy.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregiontargethttpproxy" "default" {
///   name = defaultGoogleComputeRegionTargetHttpProxy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionTargetHttpProxyArgs;
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
///         final var default = ComputeFunctions.getRegionTargetHttpProxy(GetRegionTargetHttpProxyArgs.builder()
///             .name(defaultGoogleComputeRegionTargetHttpProxy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getRegionTargetHttpProxy
///       arguments:
///         name: ${defaultGoogleComputeRegionTargetHttpProxy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_target_http_proxy_get_region_target_http_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpProxyResult> getRegionTargetHttpProxy(
  GetRegionTargetHttpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionTargetHttpProxy:getRegionTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyResult.fromMap(result);
}

/// Get information about a Compute Engine RegionTargetHttpsProxy.
///
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) and
/// the [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getRegionTargetHttpsProxy({
///     name: defaultGoogleComputeRegionTargetHttpsProxy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_region_target_https_proxy(name=default_google_compute_region_target_https_proxy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetRegionTargetHttpsProxy.Invoke(new()
///     {
///         Name = defaultGoogleComputeRegionTargetHttpsProxy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRegionTargetHttpsProxy(ctx, &compute.LookupRegionTargetHttpsProxyArgs{
/// 			Name: defaultGoogleComputeRegionTargetHttpsProxy.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregiontargethttpsproxy" "default" {
///   name = defaultGoogleComputeRegionTargetHttpsProxy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionTargetHttpsProxyArgs;
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
///         final var default = ComputeFunctions.getRegionTargetHttpsProxy(GetRegionTargetHttpsProxyArgs.builder()
///             .name(defaultGoogleComputeRegionTargetHttpsProxy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getRegionTargetHttpsProxy
///       arguments:
///         name: ${defaultGoogleComputeRegionTargetHttpsProxy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_region_target_https_proxy_get_region_target_https_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpsProxyResult> getRegionTargetHttpsProxy(
  GetRegionTargetHttpsProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionTargetHttpsProxy:getRegionTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyResult.fromMap(result);
}

/// Provides access to available Google Compute regions for a given project.
/// See more about [regions and zones](https://cloud.google.com/compute/docs/regions-zones/) in the upstream docs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.compute.getRegions({});
/// const cluster: gcp.compute.Subnetwork[] = [];
/// available.then(available => available.names).length.apply(rangeBody => {
///     for (let range = 0; range < rangeBody; range++) {
///         cluster.push(new gcp.compute.Subnetwork(`cluster-${range}`, {
///             name: "my-network",
///             ipCidrRange: `10.36.${range}.0/24`,
///             network: "my-network",
///             region: available.then(available => available.names[range]),
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_gcp as gcp
///
/// available = gcp.compute.get_regions()
/// cluster: list[gcp.compute.Subnetwork] = []
/// def create_cluster(range_body):
///     for cluster_range in [{"value": i} for i in range(0, range_body)]:
///         cluster.append(gcp.compute.Subnetwork(f"cluster-{cluster_range['value']}",
///             name="my-network",
///             ip_cidr_range=f"10.36.{cluster_range['value']}.0/24",
///             network="my-network",
///             region=available.names[cluster_range["value"]]))
///
/// (len(available.names)).apply(create_cluster)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Gcp.Compute.GetRegions.Invoke();
///
///     var cluster = new List<Gcp.Compute.Subnetwork>();
///     available.Apply(getRegionsResult => getRegionsResult.Names).Length().Apply(rangeBody =>
///     {
///         for (var rangeIndex = 0; rangeIndex < rangeBody; rangeIndex++)
///         {
///             var range = new { Value = rangeIndex };
///             cluster.Add(new Gcp.Compute.Subnetwork($"cluster-{range.Value}", new()
///             {
///                 Name = "my-network",
///                 IpCidrRange = $"10.36.{range.Value}.0/24",
///                 Network = "my-network",
///                 Region = available.Apply(getRegionsResult => getRegionsResult.Names)[range.Value],
///             }));
///         }
///         return 0;
///     });
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := compute.GetRegions(ctx, &compute.GetRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var cluster []*compute.Subnetwork
/// 		for index := 0; index < int(len(available.Names)); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := compute.NewSubnetwork(ctx, fmt.Sprintf("cluster-%v", key0), &compute.SubnetworkArgs{
/// 				Name:        pulumi.String("my-network"),
/// 				IpCidrRange: pulumi.Sprintf("10.36.%v.0/24", val0),
/// 				Network:     pulumi.String("my-network"),
/// 				Region:      pulumi.String(available.Names[val0]),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			cluster = append(cluster, __res)
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getregions" "available" {
/// }
///
/// resource "gcp_compute_subnetwork" "cluster" {
///   count         = length(data.gcp_compute_getregions.available.names)
///   name          = "my-network"
///   ip_cidr_range ="10.36.${count.index}.0/24"
///   network       = "my-network"
///   region        = data.gcp_compute_getregions.available.names[count.index]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionsArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var available = ComputeFunctions.getRegions(GetRegionsArgs.builder()
///             .build());
///
///         for (var i = 0; i < available.names().size(); i++) {
///             new Subnetwork("cluster-" + i, SubnetworkArgs.builder()
///                 .name("my-network")
///                 .ipCidrRange(String.format("10.36.%s.0/24", range.value()))
///                 .network("my-network")
///                 .region(available.names()[range.value()])
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}

/// Provides access to available Google Compute Reservation Resources for a given project.
/// See more about [Reservations of Compute Engine resources](https://cloud.google.com/compute/docs/instances/reservations-overview) in the upstream docs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const reservation = gcp.compute.getReservation({
///     name: "gce-reservation",
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reservation = gcp.compute.get_reservation(name="gce-reservation",
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var reservation = Gcp.Compute.GetReservation.Invoke(new()
///     {
///         Name = "gce-reservation",
///         Zone = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupReservation(ctx, &compute.LookupReservationArgs{
/// 			Name: "gce-reservation",
/// 			Zone: "us-central1-a",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getreservation" "reservation" {
///   name = "gce-reservation"
///   zone = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetReservationArgs;
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
///         final var reservation = ComputeFunctions.getReservation(GetReservationArgs.builder()
///             .name("gce-reservation")
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   reservation:
///     fn::invoke:
///       function: gcp:compute:getReservation
///       arguments:
///         name: gce-reservation
///         zone: us-central1-a
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_reservation_get_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservation:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}

/// Get information about a Google Compute Engine Reservation Block. Reservation blocks are automatically created by Google Cloud within reservations and represent a physical grouping of resources.
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/reservationBlocks).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const block = gcp.compute.getReservationBlock({
///     name: "my-reservation-block",
///     reservation: "my-reservation",
///     zone: "us-central1-a",
/// });
/// export const blockStatus = block.then(block => block.status);
/// export const blockInUseCount = block.then(block => block.inUseCount);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// block = gcp.compute.get_reservation_block(name="my-reservation-block",
///     reservation="my-reservation",
///     zone="us-central1-a")
/// pulumi.export("blockStatus", block.status)
/// pulumi.export("blockInUseCount", block.in_use_count)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var block = Gcp.Compute.GetReservationBlock.Invoke(new()
///     {
///         Name = "my-reservation-block",
///         Reservation = "my-reservation",
///         Zone = "us-central1-a",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["blockStatus"] = block.Apply(getReservationBlockResult => getReservationBlockResult.Status),
///         ["blockInUseCount"] = block.Apply(getReservationBlockResult => getReservationBlockResult.InUseCount),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		block, err := compute.GetReservationBlock(ctx, &compute.GetReservationBlockArgs{
/// 			Name:        "my-reservation-block",
/// 			Reservation: "my-reservation",
/// 			Zone:        pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("blockStatus", block.Status)
/// 		ctx.Export("blockInUseCount", block.InUseCount)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getreservationblock" "block" {
///   name        = "my-reservation-block"
///   reservation = "my-reservation"
///   zone        = "us-central1-a"
/// }
///
/// output "blockStatus" {
///   value = data.gcp_compute_getreservationblock.block.status
/// }
/// output "blockInUseCount" {
///   value = data.gcp_compute_getreservationblock.block.in_use_count
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetReservationBlockArgs;
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
///         final var block = ComputeFunctions.getReservationBlock(GetReservationBlockArgs.builder()
///             .name("my-reservation-block")
///             .reservation("my-reservation")
///             .zone("us-central1-a")
///             .build());
///
///         ctx.export("blockStatus", block.status());
///         ctx.export("blockInUseCount", block.inUseCount());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   block:
///     fn::invoke:
///       function: gcp:compute:getReservationBlock
///       arguments:
///         name: my-reservation-block
///         reservation: my-reservation
///         zone: us-central1-a
/// outputs:
///   blockStatus: ${block.status}
///   blockInUseCount: ${block.inUseCount}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_reservation_block_get_reservation_block_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationBlockResult> getReservationBlock(
  GetReservationBlockArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservationBlock:getReservationBlock',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationBlockResult.fromMap(result);
}

/// Get information about a Google Compute Engine Reservation Sub-Block. Reservation sub-blocks are automatically created by Google Cloud within reservation blocks and represent a finer-grained physical grouping of resources.
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/reservationSubBlocks).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subBlock = gcp.compute.getReservationSubBlock({
///     name: "my-reservation-sub-block",
///     reservationBlock: "my-reservation-block",
///     reservation: "my-reservation",
///     zone: "us-central1-a",
/// });
/// export const subBlockStatus = subBlock.then(subBlock => subBlock.status);
/// export const subBlockHealth = subBlock.then(subBlock => subBlock.healthInfos);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sub_block = gcp.compute.get_reservation_sub_block(name="my-reservation-sub-block",
///     reservation_block="my-reservation-block",
///     reservation="my-reservation",
///     zone="us-central1-a")
/// pulumi.export("subBlockStatus", sub_block.status)
/// pulumi.export("subBlockHealth", sub_block.health_infos)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subBlock = Gcp.Compute.GetReservationSubBlock.Invoke(new()
///     {
///         Name = "my-reservation-sub-block",
///         ReservationBlock = "my-reservation-block",
///         Reservation = "my-reservation",
///         Zone = "us-central1-a",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["subBlockStatus"] = subBlock.Apply(getReservationSubBlockResult => getReservationSubBlockResult.Status),
///         ["subBlockHealth"] = subBlock.Apply(getReservationSubBlockResult => getReservationSubBlockResult.HealthInfos),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		subBlock, err := compute.GetReservationSubBlock(ctx, &compute.GetReservationSubBlockArgs{
/// 			Name:             "my-reservation-sub-block",
/// 			ReservationBlock: "my-reservation-block",
/// 			Reservation:      "my-reservation",
/// 			Zone:             pulumi.StringRef("us-central1-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("subBlockStatus", subBlock.Status)
/// 		ctx.Export("subBlockHealth", subBlock.HealthInfos)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getreservationsubblock" "subBlock" {
///   name              = "my-reservation-sub-block"
///   reservation_block = "my-reservation-block"
///   reservation       = "my-reservation"
///   zone              = "us-central1-a"
/// }
///
/// output "subBlockStatus" {
///   value = data.gcp_compute_getreservationsubblock.subBlock.status
/// }
/// output "subBlockHealth" {
///   value = data.gcp_compute_getreservationsubblock.subBlock.health_infos
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetReservationSubBlockArgs;
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
///         final var subBlock = ComputeFunctions.getReservationSubBlock(GetReservationSubBlockArgs.builder()
///             .name("my-reservation-sub-block")
///             .reservationBlock("my-reservation-block")
///             .reservation("my-reservation")
///             .zone("us-central1-a")
///             .build());
///
///         ctx.export("subBlockStatus", subBlock.status());
///         ctx.export("subBlockHealth", subBlock.healthInfos());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   subBlock:
///     fn::invoke:
///       function: gcp:compute:getReservationSubBlock
///       arguments:
///         name: my-reservation-sub-block
///         reservationBlock: my-reservation-block
///         reservation: my-reservation
///         zone: us-central1-a
/// outputs:
///   subBlockStatus: ${subBlock.status}
///   subBlockHealth: ${subBlock.healthInfos}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_reservation_sub_block_get_reservation_sub_block_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationSubBlockResult> getReservationSubBlock(
  GetReservationSubBlockArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getReservationSubBlock:getReservationSubBlock',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationSubBlockResult.fromMap(result);
}

/// Provide access to a Resource Policy's attributes. For more information see [the official documentation](https://cloud.google.com/compute/docs/disks/scheduled-snapshots) or the [API](https://cloud.google.com/compute/docs/reference/rest/beta/resourcePolicies).
///
/// &gt; **Warning:** This datasource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const daily = gcp.compute.getResourcePolicy({
///     name: "daily",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// daily = gcp.compute.get_resource_policy(name="daily",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daily = Gcp.Compute.GetResourcePolicy.Invoke(new()
///     {
///         Name = "daily",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupResourcePolicy(ctx, &compute.LookupResourcePolicyArgs{
/// 			Name:   "daily",
/// 			Region: pulumi.StringRef("us-central1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getresourcepolicy" "daily" {
///   name   = "daily"
///   region = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetResourcePolicyArgs;
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
///         final var daily = ComputeFunctions.getResourcePolicy(GetResourcePolicyArgs.builder()
///             .name("daily")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   daily:
///     fn::invoke:
///       function: gcp:compute:getResourcePolicy
///       arguments:
///         name: daily
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_resource_policy_get_resource_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}

/// Get a router within GCE from its name and VPC.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_router = gcp.compute.getRouter({
///     name: "myrouter-us-east1",
///     network: "my-network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_router = gcp.compute.get_router(name="myrouter-us-east1",
///     network="my-network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_router = Gcp.Compute.GetRouter.Invoke(new()
///     {
///         Name = "myrouter-us-east1",
///         Network = "my-network",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRouter(ctx, &compute.LookupRouterArgs{
/// 			Name:    "myrouter-us-east1",
/// 			Network: "my-network",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getrouter" "my-router" {
///   name    = "myrouter-us-east1"
///   network = "my-network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRouterArgs;
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
///         final var my-router = ComputeFunctions.getRouter(GetRouterArgs.builder()
///             .name("myrouter-us-east1")
///             .network("my-network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-router:
///     fn::invoke:
///       function: gcp:compute:getRouter
///       arguments:
///         name: myrouter-us-east1
///         network: my-network
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_router_get_router_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterResult> getRouter(
  GetRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouter:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterResult.fromMap(result);
}

/// To get more information about RouterNat, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.compute.getRouterNat({
///     name: "my-nat",
///     router: "my-router",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.compute.get_router_nat(name="my-nat",
///     router="my-router")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Compute.GetRouterNat.Invoke(new()
///     {
///         Name = "my-nat",
///         Router = "my-router",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupRouterNat(ctx, &compute.LookupRouterNatArgs{
/// 			Name:   "my-nat",
/// 			Router: "my-router",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getrouternat" "foo" {
///   name   = "my-nat"
///   router = "my-router"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRouterNatArgs;
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
///         final var foo = ComputeFunctions.getRouterNat(GetRouterNatArgs.builder()
///             .name("my-nat")
///             .router("my-router")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:compute:getRouterNat
///       arguments:
///         name: my-nat
///         router: my-router
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_router_nat_get_router_nat_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterNatResult> getRouterNat(
  GetRouterNatArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouterNat:getRouterNat',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterNatResult.fromMap(result);
}

/// Get a Cloud Router's status within GCE from its name and region. This data source exposes the
/// routes learned by a Cloud Router via BGP peers.
///
/// For more information see [the official documentation](https://cloud.google.com/network-connectivity/docs/router/how-to/viewing-router-details)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getRouterStatus).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_router = gcp.compute.getRouterStatus({
///     name: "myrouter",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_router = gcp.compute.get_router_status(name="myrouter")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_router = Gcp.Compute.GetRouterStatus.Invoke(new()
///     {
///         Name = "myrouter",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetRouterStatus(ctx, &compute.GetRouterStatusArgs{
/// 			Name: "myrouter",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getrouterstatus" "my-router" {
///   name = "myrouter"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRouterStatusArgs;
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
///         final var my-router = ComputeFunctions.getRouterStatus(GetRouterStatusArgs.builder()
///             .name("myrouter")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-router:
///     fn::invoke:
///       function: gcp:compute:getRouterStatus
///       arguments:
///         name: myrouter
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_router_status_get_router_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterStatusResult> getRouterStatus(
  GetRouterStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouterStatus:getRouterStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterStatusResult.fromMap(result);
}

/// Get a list of routers. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/list) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getRouters({
///     project: foobar.project,
///     region: foobar.region,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_routers(project=foobar["project"],
///     region=foobar["region"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.Compute.GetRouters.Invoke(new()
///     {
///         Project = foobar.Project,
///         Region = foobar.Region,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetRouters(ctx, &compute.GetRoutersArgs{
/// 			Project: pulumi.StringRef(foobar.Project),
/// 			Region:  pulumi.StringRef(foobar.Region),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getrouters" "all" {
///   project = foobar.project
///   region  = foobar.region
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRoutersArgs;
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
///         final var all = ComputeFunctions.getRouters(GetRoutersArgs.builder()
///             .project(foobar.get("project"))
///             .region(foobar.get("region"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:compute:getRouters
///       arguments:
///         project: ${foobar.project}
///         region: ${foobar.region}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_routers_get_routers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutersResult> getRouters(
  GetRoutersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouters:getRouters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutersResult.fromMap(result);
}

/// Gets an SSL Policy within GCE from its name, for use with Target HTTPS and Target SSL Proxies.
/// For more information see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_ssl_policy = gcp.compute.getSSLPolicy({
///     name: "production-ssl-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_ssl_policy = gcp.compute.get_ssl_policy(name="production-ssl-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_ssl_policy = Gcp.Compute.GetSSLPolicy.Invoke(new()
///     {
///         Name = "production-ssl-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSSLPolicy(ctx, &compute.LookupSSLPolicyArgs{
/// 			Name: "production-ssl-policy",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsslpolicy" "my-ssl-policy" {
///   name = "production-ssl-policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSSLPolicyArgs;
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
///         final var my-ssl-policy = ComputeFunctions.getSSLPolicy(GetSSLPolicyArgs.builder()
///             .name("production-ssl-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-ssl-policy:
///     fn::invoke:
///       function: gcp:compute:getSSLPolicy
///       arguments:
///         name: production-ssl-policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_sslpolicy_get_sslpolicy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSSLPolicyResult> getSSLPolicy(
  GetSSLPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSSLPolicy:getSSLPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSSLPolicyResult.fromMap(result);
}

/// To get more information about Google Compute Security Policy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/securityPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sp1 = gcp.compute.getSecurityPolicy({
///     name: "my-policy",
///     project: "my-project",
/// });
/// const sp2 = gcp.compute.getSecurityPolicy({
///     selfLink: "https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sp1 = gcp.compute.get_security_policy(name="my-policy",
///     project="my-project")
/// sp2 = gcp.compute.get_security_policy(self_link="https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sp1 = Gcp.Compute.GetSecurityPolicy.Invoke(new()
///     {
///         Name = "my-policy",
///         Project = "my-project",
///     });
///
///     var sp2 = Gcp.Compute.GetSecurityPolicy.Invoke(new()
///     {
///         SelfLink = "https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSecurityPolicy(ctx, &compute.LookupSecurityPolicyArgs{
/// 			Name:    pulumi.StringRef("my-policy"),
/// 			Project: pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.LookupSecurityPolicy(ctx, &compute.LookupSecurityPolicyArgs{
/// 			SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsecuritypolicy" "sp1" {
///   name    = "my-policy"
///   project = "my-project"
/// }
/// data "gcp_compute_getsecuritypolicy" "sp2" {
///   self_link = "https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSecurityPolicyArgs;
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
///         final var sp1 = ComputeFunctions.getSecurityPolicy(GetSecurityPolicyArgs.builder()
///             .name("my-policy")
///             .project("my-project")
///             .build());
///
///         final var sp2 = ComputeFunctions.getSecurityPolicy(GetSecurityPolicyArgs.builder()
///             .selfLink("https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sp1:
///     fn::invoke:
///       function: gcp:compute:getSecurityPolicy
///       arguments:
///         name: my-policy
///         project: my-project
///   sp2:
///     fn::invoke:
///       function: gcp:compute:getSecurityPolicy
///       arguments:
///         selfLink: https://www.googleapis.com/compute/v1/projects/my-project/global/securityPolicies/my-policy
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_security_policy_get_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPolicyResult> getSecurityPolicy(
  GetSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSecurityPolicy:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult.fromMap(result);
}

/// Get a specific [service attachment](https://cloud.google.com/vpc/docs/configure-private-service-connect-services) within a region. For more information see the
/// [official documentation](https://cloud.google.com/vpc/docs/configure-private-service-connect-services)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/get).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getServiceAttachment({
///     project: "my-project",
///     name: "my-service-attachment",
///     region: "us-west2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_service_attachment(project="my-project",
///     name="my-service-attachment",
///     region="us-west2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetServiceAttachment.Invoke(new()
///     {
///         Project = "my-project",
///         Name = "my-service-attachment",
///         Region = "us-west2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupServiceAttachment(ctx, &compute.LookupServiceAttachmentArgs{
/// 			Project: pulumi.StringRef("my-project"),
/// 			Name:    "my-service-attachment",
/// 			Region:  pulumi.StringRef("us-west2"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getserviceattachment" "default" {
///   project = "my-project"
///   name    = "my-service-attachment"
///   region  = "us-west2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetServiceAttachmentArgs;
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
///         final var default = ComputeFunctions.getServiceAttachment(GetServiceAttachmentArgs.builder()
///             .project("my-project")
///             .name("my-service-attachment")
///             .region("us-west2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getServiceAttachment
///       arguments:
///         project: my-project
///         name: my-service-attachment
///         region: us-west2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_service_attachment_get_service_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentResult> getServiceAttachment(
  GetServiceAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getServiceAttachment:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentResult.fromMap(result);
}

/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/create-snapshots)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //by name
/// const snapshot = gcp.compute.getSnapshot({
///     name: "my-snapshot",
/// });
/// // using a filter
/// const latest_snapshot = gcp.compute.getSnapshot({
///     filter: "name != my-snapshot",
///     mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// #by name
/// snapshot = gcp.compute.get_snapshot(name="my-snapshot")
/// # using a filter
/// latest_snapshot = gcp.compute.get_snapshot(filter="name != my-snapshot",
///     most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //by name
///     var snapshot = Gcp.Compute.GetSnapshot.Invoke(new()
///     {
///         Name = "my-snapshot",
///     });
///
///     // using a filter
///     var latest_snapshot = Gcp.Compute.GetSnapshot.Invoke(new()
///     {
///         Filter = "name != my-snapshot",
///         MostRecent = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// by name
/// 		_, err := compute.LookupSnapshot(ctx, &compute.LookupSnapshotArgs{
/// 			Name: pulumi.StringRef("my-snapshot"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// using a filter
/// 		_, err = compute.LookupSnapshot(ctx, &compute.LookupSnapshotArgs{
/// 			Filter:     pulumi.StringRef("name != my-snapshot"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsnapshot" "snapshot" {
///   name = "my-snapshot"
/// }
/// data "gcp_compute_getsnapshot" "latest-snapshot" {
///   filter      = "name != my-snapshot"
///   most_recent = true
/// }
///
/// #by name
/// # using a filter
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSnapshotArgs;
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
///         //by name
///         final var snapshot = ComputeFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .name("my-snapshot")
///             .build());
///
///         // using a filter
///         final var latest-snapshot = ComputeFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .filter("name != my-snapshot")
///             .mostRecent(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   #by name
///   snapshot:
///     fn::invoke:
///       function: gcp:compute:getSnapshot
///       arguments:
///         name: my-snapshot
///   # using a filter
///   latest-snapshot:
///     fn::invoke:
///       function: gcp:compute:getSnapshot
///       arguments:
///         filter: name != my-snapshot
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Retrieves the current IAM policy data for snapshot
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getSnapshotIamPolicy({
///     project: snapshot.project,
///     name: snapshot.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_snapshot_iam_policy(project=snapshot["project"],
///     name=snapshot["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetSnapshotIamPolicy.Invoke(new()
///     {
///         Project = snapshot.Project,
///         Name = snapshot.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSnapshotIamPolicy(ctx, &compute.LookupSnapshotIamPolicyArgs{
/// 			Project: pulumi.StringRef(snapshot.Project),
/// 			Name:    snapshot.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsnapshotiampolicy" "policy" {
///   project = snapshot.project
///   name    = snapshot.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSnapshotIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getSnapshotIamPolicy(GetSnapshotIamPolicyArgs.builder()
///             .project(snapshot.get("project"))
///             .name(snapshot.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getSnapshotIamPolicy
///       arguments:
///         project: ${snapshot.project}
///         name: ${snapshot.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_snapshot_iam_policy_get_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotIamPolicyResult> getSnapshotIamPolicy(
  GetSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSnapshotIamPolicy:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyResult.fromMap(result);
}

/// Provides access to available Google Compute Storage Pool resources for a given project and zone.
/// See more about [Hyperdisk Storage Pools](https://cloud.google.com/compute/docs/disks/storage-pools) in the upstream docs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPool = gcp.compute.getStoragePool({
///     name: "my-storage-pool",
///     zone: "us-central1-a",
/// });
/// export const poolCapacity = myPool.then(myPool => myPool.poolProvisionedCapacityGb);
/// export const poolType = myPool.then(myPool => myPool.storagePoolType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_pool = gcp.compute.get_storage_pool(name="my-storage-pool",
///     zone="us-central1-a")
/// pulumi.export("poolCapacity", my_pool.pool_provisioned_capacity_gb)
/// pulumi.export("poolType", my_pool.storage_pool_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myPool = Gcp.Compute.GetStoragePool.Invoke(new()
///     {
///         Name = "my-storage-pool",
///         Zone = "us-central1-a",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["poolCapacity"] = myPool.Apply(getStoragePoolResult => getStoragePoolResult.PoolProvisionedCapacityGb),
///         ["poolType"] = myPool.Apply(getStoragePoolResult => getStoragePoolResult.StoragePoolType),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myPool, err := compute.LookupStoragePool(ctx, &compute.LookupStoragePoolArgs{
/// 			Name: "my-storage-pool",
/// 			Zone: "us-central1-a",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("poolCapacity", myPool.PoolProvisionedCapacityGb)
/// 		ctx.Export("poolType", myPool.StoragePoolType)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getstoragepool" "myPool" {
///   name = "my-storage-pool"
///   zone = "us-central1-a"
/// }
///
/// output "poolCapacity" {
///   value = data.gcp_compute_getstoragepool.myPool.pool_provisioned_capacity_gb
/// }
/// output "poolType" {
///   value = data.gcp_compute_getstoragepool.myPool.storage_pool_type
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetStoragePoolArgs;
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
///         final var myPool = ComputeFunctions.getStoragePool(GetStoragePoolArgs.builder()
///             .name("my-storage-pool")
///             .zone("us-central1-a")
///             .build());
///
///         ctx.export("poolCapacity", myPool.poolProvisionedCapacityGb());
///         ctx.export("poolType", myPool.storagePoolType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myPool:
///     fn::invoke:
///       function: gcp:compute:getStoragePool
///       arguments:
///         name: my-storage-pool
///         zone: us-central1-a
/// outputs:
///   poolCapacity: ${myPool.poolProvisionedCapacityGb}
///   poolType: ${myPool.storagePoolType}
/// ```
///
///
/// ## Note
///
/// * `deletionProtection` is always set to false on the data source and will not be represetative of the actual value on `gcp.compute.StoragePool` reaosure being read
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_storage_pool_get_storage_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoragePoolResult> getStoragePool(
  GetStoragePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePool:getStoragePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolResult.fromMap(result);
}

/// Retrieves the current IAM policy data for storagepool
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getStoragePoolIamPolicy({
///     project: test_storage_pool_basic.project,
///     zone: test_storage_pool_basic.zone,
///     name: test_storage_pool_basic.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_storage_pool_iam_policy(project=test_storage_pool_basic["project"],
///     zone=test_storage_pool_basic["zone"],
///     name=test_storage_pool_basic["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetStoragePoolIamPolicy.Invoke(new()
///     {
///         Project = test_storage_pool_basic.Project,
///         Zone = test_storage_pool_basic.Zone,
///         Name = test_storage_pool_basic.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupStoragePoolIamPolicy(ctx, &compute.LookupStoragePoolIamPolicyArgs{
/// 			Project: pulumi.StringRef(test_storage_pool_basic.Project),
/// 			Zone:    pulumi.StringRef(test_storage_pool_basic.Zone),
/// 			Name:    test_storage_pool_basic.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getstoragepooliampolicy" "policy" {
///   project = test-storage-pool-basic.project
///   zone    = test-storage-pool-basic.zone
///   name    = test-storage-pool-basic.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetStoragePoolIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getStoragePoolIamPolicy(GetStoragePoolIamPolicyArgs.builder()
///             .project(test_storage_pool_basic.get("project"))
///             .zone(test_storage_pool_basic.get("zone"))
///             .name(test_storage_pool_basic.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getStoragePoolIamPolicy
///       arguments:
///         project: ${["test-storage-pool-basic"].project}
///         zone: ${["test-storage-pool-basic"].zone}
///         name: ${["test-storage-pool-basic"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_storage_pool_iam_policy_get_storage_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoragePoolIamPolicyResult> getStoragePoolIamPolicy(
  GetStoragePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePoolIamPolicy:getStoragePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolIamPolicyResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoragePoolTypesResult> getStoragePoolTypes(
  GetStoragePoolTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePoolTypes:getStoragePoolTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolTypesResult.fromMap(result);
}

/// Get a subnetwork within GCE from its name and region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_subnetwork = gcp.compute.getSubnetwork({
///     name: "default-us-east1",
///     region: "us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnetwork = gcp.compute.get_subnetwork(name="default-us-east1",
///     region="us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_subnetwork = Gcp.Compute.GetSubnetwork.Invoke(new()
///     {
///         Name = "default-us-east1",
///         Region = "us-east1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupSubnetwork(ctx, &compute.LookupSubnetworkArgs{
/// 			Name:   pulumi.StringRef("default-us-east1"),
/// 			Region: pulumi.StringRef("us-east1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsubnetwork" "my-subnetwork" {
///   name   = "default-us-east1"
///   region = "us-east1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSubnetworkArgs;
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
///         final var my-subnetwork = ComputeFunctions.getSubnetwork(GetSubnetworkArgs.builder()
///             .name("default-us-east1")
///             .region("us-east1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-subnetwork:
///     fn::invoke:
///       function: gcp:compute:getSubnetwork
///       arguments:
///         name: default-us-east1
///         region: us-east1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_subnetwork_get_subnetwork_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkResult> getSubnetwork(
  GetSubnetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetwork:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult.fromMap(result);
}

/// Retrieves the current IAM policy data for subnetwork
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getSubnetworkIamPolicy({
///     project: network_with_private_secondary_ip_ranges.project,
///     region: network_with_private_secondary_ip_ranges.region,
///     subnetwork: network_with_private_secondary_ip_ranges.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_subnetwork_iam_policy(project=network_with_private_secondary_ip_ranges["project"],
///     region=network_with_private_secondary_ip_ranges["region"],
///     subnetwork=network_with_private_secondary_ip_ranges["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Compute.GetSubnetworkIamPolicy.Invoke(new()
///     {
///         Project = network_with_private_secondary_ip_ranges.Project,
///         Region = network_with_private_secondary_ip_ranges.Region,
///         Subnetwork = network_with_private_secondary_ip_ranges.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetSubnetworkIamPolicy(ctx, &compute.GetSubnetworkIamPolicyArgs{
/// 			Project:    pulumi.StringRef(network_with_private_secondary_ip_ranges.Project),
/// 			Region:     pulumi.StringRef(network_with_private_secondary_ip_ranges.Region),
/// 			Subnetwork: network_with_private_secondary_ip_ranges.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsubnetworkiampolicy" "policy" {
///   project    = network-with-private-secondary-ip-ranges.project
///   region     = network-with-private-secondary-ip-ranges.region
///   subnetwork = network-with-private-secondary-ip-ranges.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSubnetworkIamPolicyArgs;
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
///         final var policy = ComputeFunctions.getSubnetworkIamPolicy(GetSubnetworkIamPolicyArgs.builder()
///             .project(network_with_private_secondary_ip_ranges.get("project"))
///             .region(network_with_private_secondary_ip_ranges.get("region"))
///             .subnetwork(network_with_private_secondary_ip_ranges.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:compute:getSubnetworkIamPolicy
///       arguments:
///         project: ${["network-with-private-secondary-ip-ranges"].project}
///         region: ${["network-with-private-secondary-ip-ranges"].region}
///         subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_subnetwork_iam_policy_get_subnetwork_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkIamPolicyResult> getSubnetworkIamPolicy(
  GetSubnetworkIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworkIamPolicy:getSubnetworkIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyResult.fromMap(result);
}

/// Get subnetworks within GCE.
/// See [the official documentation](https://cloud.google.com/vpc/docs/subnets)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_subnetworks = gcp.compute.getSubnetworks({
///     filter: "ipCidrRange eq 192.168.178.0/24",
///     project: "my-project",
///     region: "us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnetworks = gcp.compute.get_subnetworks(filter="ipCidrRange eq 192.168.178.0/24",
///     project="my-project",
///     region="us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_subnetworks = Gcp.Compute.GetSubnetworks.Invoke(new()
///     {
///         Filter = "ipCidrRange eq 192.168.178.0/24",
///         Project = "my-project",
///         Region = "us-east1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetSubnetworks(ctx, &compute.GetSubnetworksArgs{
/// 			Filter:  pulumi.StringRef("ipCidrRange eq 192.168.178.0/24"),
/// 			Project: pulumi.StringRef("my-project"),
/// 			Region:  pulumi.StringRef("us-east1"),
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getsubnetworks" "my-subnetworks" {
///   filter  = "ipCidrRange eq 192.168.178.0/24"
///   project = "my-project"
///   region  = "us-east1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetSubnetworksArgs;
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
///         final var my-subnetworks = ComputeFunctions.getSubnetworks(GetSubnetworksArgs.builder()
///             .filter("ipCidrRange eq 192.168.178.0/24")
///             .project("my-project")
///             .region("us-east1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-subnetworks:
///     fn::invoke:
///       function: gcp:compute:getSubnetworks
///       arguments:
///         filter: ipCidrRange eq 192.168.178.0/24
///         project: my-project
///         region: us-east1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_subnetworks_get_subnetworks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworksResult> getSubnetworks(
  GetSubnetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworks:getSubnetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworksResult.fromMap(result);
}

/// Get information about a Compute Engine TargetHttpProxy.
///
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) and
/// the [API](https://cloud.google.com/compute/docs/reference/v1/targetHttpProxies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getTargetHttpProxy({
///     name: defaultGoogleComputeTargetHttpProxy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_target_http_proxy(name=default_google_compute_target_http_proxy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetTargetHttpProxy.Invoke(new()
///     {
///         Name = defaultGoogleComputeTargetHttpProxy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupTargetHttpProxy(ctx, &compute.LookupTargetHttpProxyArgs{
/// 			Name: defaultGoogleComputeTargetHttpProxy.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_gettargethttpproxy" "default" {
///   name = defaultGoogleComputeTargetHttpProxy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetTargetHttpProxyArgs;
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
///         final var default = ComputeFunctions.getTargetHttpProxy(GetTargetHttpProxyArgs.builder()
///             .name(defaultGoogleComputeTargetHttpProxy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getTargetHttpProxy
///       arguments:
///         name: ${defaultGoogleComputeTargetHttpProxy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_target_http_proxy_get_target_http_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpProxyResult> getTargetHttpProxy(
  GetTargetHttpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getTargetHttpProxy:getTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyResult.fromMap(result);
}

/// Get information about a Compute Engine TargetHttpsProxy.
///
///
/// For more information see the [official documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) and
/// the [API](https://cloud.google.com/compute/docs/reference/v1/targetHttpsProxies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getTargetHttpsProxy({
///     name: defaultGoogleComputeTargetHttpsProxy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_target_https_proxy(name=default_google_compute_target_https_proxy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetTargetHttpsProxy.Invoke(new()
///     {
///         Name = defaultGoogleComputeTargetHttpsProxy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupTargetHttpsProxy(ctx, &compute.LookupTargetHttpsProxyArgs{
/// 			Name: defaultGoogleComputeTargetHttpsProxy.Name,
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_gettargethttpsproxy" "default" {
///   name = defaultGoogleComputeTargetHttpsProxy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetTargetHttpsProxyArgs;
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
///         final var default = ComputeFunctions.getTargetHttpsProxy(GetTargetHttpsProxyArgs.builder()
///             .name(defaultGoogleComputeTargetHttpsProxy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getTargetHttpsProxy
///       arguments:
///         name: ${defaultGoogleComputeTargetHttpsProxy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_target_https_proxy_get_target_https_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpsProxyResult> getTargetHttpsProxy(
  GetTargetHttpsProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getTargetHttpsProxy:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyResult.fromMap(result);
}

/// Get a VPN gateway within GCE from its name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_vpn_gateway = gcp.compute.getVPNGateway({
///     name: "vpn-gateway-us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vpn_gateway = gcp.compute.get_vpn_gateway(name="vpn-gateway-us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_vpn_gateway = Gcp.Compute.GetVPNGateway.Invoke(new()
///     {
///         Name = "vpn-gateway-us-east1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupVPNGateway(ctx, &compute.LookupVPNGatewayArgs{
/// 			Name: "vpn-gateway-us-east1",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getvpngateway" "my-vpn-gateway" {
///   name = "vpn-gateway-us-east1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetVPNGatewayArgs;
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
///         final var my-vpn-gateway = ComputeFunctions.getVPNGateway(GetVPNGatewayArgs.builder()
///             .name("vpn-gateway-us-east1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-vpn-gateway:
///     fn::invoke:
///       function: gcp:compute:getVPNGateway
///       arguments:
///         name: vpn-gateway-us-east1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_vpngateway_get_vpngateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVPNGatewayResult> getVPNGateway(
  GetVPNGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getVPNGateway:getVPNGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVPNGatewayResult.fromMap(result);
}

/// Provides access to available Google Compute zones in a region for a given project.
/// See more about [regions and zones](https://cloud.google.com/compute/docs/regions-zones/regions-zones) in the upstream docs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.compute.getZones({});
/// const foo: gcp.compute.InstanceGroupManager[] = [];
/// available.then(available => available.names).length.apply(rangeBody => {
///     for (let range = 0; range < rangeBody; range++) {
///         foo.push(new gcp.compute.InstanceGroupManager(`foo-${range}`, {
///             name: `test-${range}`,
///             instanceTemplate: foobar.selfLink,
///             baseInstanceName: `foobar-${range}`,
///             zone: available.then(available => available.names[range]),
///             targetSize: 1,
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_gcp as gcp
///
/// available = gcp.compute.get_zones()
/// foo: list[gcp.compute.InstanceGroupManager] = []
/// def create_foo(range_body):
///     for foo_range in [{"value": i} for i in range(0, range_body)]:
///         foo.append(gcp.compute.InstanceGroupManager(f"foo-{foo_range['value']}",
///             name=f"test-{foo_range['value']}",
///             instance_template=foobar["selfLink"],
///             base_instance_name=f"foobar-{foo_range['value']}",
///             zone=available.names[foo_range["value"]],
///             target_size=1))
///
/// (len(available.names)).apply(create_foo)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Gcp.Compute.GetZones.Invoke();
///
///     var foo = new List<Gcp.Compute.InstanceGroupManager>();
///     available.Apply(getZonesResult => getZonesResult.Names).Length().Apply(rangeBody =>
///     {
///         for (var rangeIndex = 0; rangeIndex < rangeBody; rangeIndex++)
///         {
///             var range = new { Value = rangeIndex };
///             foo.Add(new Gcp.Compute.InstanceGroupManager($"foo-{range.Value}", new()
///             {
///                 Name = $"test-{range.Value}",
///                 InstanceTemplate = foobar.SelfLink,
///                 BaseInstanceName = $"foobar-{range.Value}",
///                 Zone = available.Apply(getZonesResult => getZonesResult.Names)[range.Value],
///                 TargetSize = 1,
///             }));
///         }
///         return 0;
///     });
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := compute.GetZones(ctx, &compute.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var foo []*compute.InstanceGroupManager
/// 		for index := 0; index < int(len(available.Names)); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := compute.NewInstanceGroupManager(ctx, fmt.Sprintf("foo-%v", key0), &compute.InstanceGroupManagerArgs{
/// 				Name:             pulumi.Sprintf("test-%v", val0),
/// 				InstanceTemplate: foobar.SelfLink,
/// 				BaseInstanceName: pulumi.Sprintf("foobar-%v", val0),
/// 				Zone:             pulumi.String(available.Names[val0]),
/// 				TargetSize:       pulumi.Int(1),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			foo = append(foo, __res)
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getzones" "available" {
/// }
///
/// resource "gcp_compute_instancegroupmanager" "foo" {
///   count              = length(data.gcp_compute_getzones.available.names)
///   name               ="test-${count.index}"
///   instance_template  = foobar.selfLink
///   base_instance_name ="foobar-${count.index}"
///   zone               = data.gcp_compute_getzones.available.names[count.index]
///   target_size        = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetZonesArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var available = ComputeFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         for (var i = 0; i < available.names().size(); i++) {
///             new InstanceGroupManager("foo-" + i, InstanceGroupManagerArgs.builder()
///                 .name(String.format("test-%s", range.value()))
///                 .instanceTemplate(foobar.get("selfLink"))
///                 .baseInstanceName(String.format("foobar-%s", range.value()))
///                 .zone(available.names()[range.value()])
///                 .targetSize(1)
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}

/// Get a Cloud Router's status within GCE from its name and region. This data source exposes the
/// routes learned by a Cloud Router via BGP peers.
///
/// For more information see [the official documentation](https://cloud.google.com/network-connectivity/docs/router/how-to/viewing-router-details)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getRouterStatus).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_router = gcp.compute.getRouterStatus({
///     name: "myrouter",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_router = gcp.compute.get_router_status(name="myrouter")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_router = Gcp.Compute.GetRouterStatus.Invoke(new()
///     {
///         Name = "myrouter",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetRouterStatus(ctx, &compute.GetRouterStatusArgs{
/// 			Name: "myrouter",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getrouterstatus" "my-router" {
///   name = "myrouter"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRouterStatusArgs;
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
///         final var my-router = ComputeFunctions.getRouterStatus(GetRouterStatusArgs.builder()
///             .name("myrouter")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-router:
///     fn::invoke:
///       function: gcp:compute:getRouterStatus
///       arguments:
///         name: myrouter
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_router_status_router_status_args_doc}
/// [options] Invoke options controlling this call.
Future<RouterStatusResult> routerStatus(
  RouterStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/routerStatus:RouterStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return RouterStatusResult.fromMap(result);
}
