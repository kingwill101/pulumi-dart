import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_args.dart';
import 'record_set_routing_policy.dart';
import 'record_set_state.dart';

/// ## Example Usage
///
/// ### Binding a DNS name to the ephemeral IP of a new instance:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const frontendInstance = new gcp.compute.Instance("frontend", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "frontend",
///     machineType: "g1-small",
///     zone: "us-central1-b",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
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
///     rrdatas: [frontendInstance.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].accessConfigs?.[0]?.natIp)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// frontend_instance = gcp.compute.Instance("frontend",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="frontend",
///     machine_type="g1-small",
///     zone="us-central1-b",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     })
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// frontend = gcp.dns.RecordSet("frontend",
///     name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
///     type="A",
///     ttl=300,
///     managed_zone=prod.name,
///     rrdatas=[frontend_instance.network_interfaces[0].access_configs[0].nat_ip])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var frontendInstance = new Gcp.Compute.Instance("frontend", new()
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
///         Name = "frontend",
///         MachineType = "g1-small",
///         Zone = "us-central1-b",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
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
///             frontendInstance.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].AccessConfigs[0]?.NatIp),
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
/// 		frontendInstance, err := compute.NewInstance(ctx, "frontend", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("frontend"),
/// 			MachineType: pulumi.String("g1-small"),
/// 			Zone:        pulumi.String("us-central1-b"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 		})
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
/// 				pulumi.String(frontendInstance.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 					return &networkInterfaces[0].AccessConfigs[0].NatIp, nil
/// 				}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         var frontendInstance = new Instance("frontendInstance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("frontend")
///             .machineType("g1-small")
///             .zone("us-central1-b")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
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
///             .rrdatas(frontendInstance.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].accessConfigs()[0].natIp()))
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
///         - ${frontendInstance.networkInterfaces[0].accessConfigs[0].natIp}
///   frontendInstance:
///     type: gcp:compute:Instance
///     name: frontend
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: frontend
///       machineType: g1-small
///       zone: us-central1-b
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// ```
///
///
/// ### Adding an A record
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const a = new gcp.dns.RecordSet("a", {
///     name: pulumi.interpolate`backend.${prod.dnsName}`,
///     managedZone: prod.name,
///     type: "A",
///     ttl: 300,
///     rrdatas: ["8.8.8.8"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// a = gcp.dns.RecordSet("a",
///     name=prod.dns_name.apply(lambda dns_name: f"backend.{dns_name}"),
///     managed_zone=prod.name,
///     type="A",
///     ttl=300,
///     rrdatas=["8.8.8.8"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var a = new Gcp.Dns.RecordSet("a", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"backend.{dnsName}"),
///         ManagedZone = prod.Name,
///         Type = "A",
///         Ttl = 300,
///         Rrdatas = new[]
///         {
///             "8.8.8.8",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "a", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("backend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			ManagedZone: prod.Name,
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String("8.8.8.8"),
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var a = new RecordSet("a", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("backend.%s", _dnsName)))
///             .managedZone(prod.name())
///             .type("A")
///             .ttl(300)
///             .rrdatas("8.8.8.8")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a:
///     type: gcp:dns:RecordSet
///     properties:
///       name: backend.${prod.dnsName}
///       managedZone: ${prod.name}
///       type: A
///       ttl: 300
///       rrdatas:
///         - 8.8.8.8
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// ```
///
///
/// ### Adding an MX record
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const mx = new gcp.dns.RecordSet("mx", {
///     name: prod.dnsName,
///     managedZone: prod.name,
///     type: "MX",
///     ttl: 3600,
///     rrdatas: [
///         "1 aspmx.l.google.com.",
///         "5 alt1.aspmx.l.google.com.",
///         "5 alt2.aspmx.l.google.com.",
///         "10 alt3.aspmx.l.google.com.",
///         "10 alt4.aspmx.l.google.com.",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// mx = gcp.dns.RecordSet("mx",
///     name=prod.dns_name,
///     managed_zone=prod.name,
///     type="MX",
///     ttl=3600,
///     rrdatas=[
///         "1 aspmx.l.google.com.",
///         "5 alt1.aspmx.l.google.com.",
///         "5 alt2.aspmx.l.google.com.",
///         "10 alt3.aspmx.l.google.com.",
///         "10 alt4.aspmx.l.google.com.",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var mx = new Gcp.Dns.RecordSet("mx", new()
///     {
///         Name = prod.DnsName,
///         ManagedZone = prod.Name,
///         Type = "MX",
///         Ttl = 3600,
///         Rrdatas = new[]
///         {
///             "1 aspmx.l.google.com.",
///             "5 alt1.aspmx.l.google.com.",
///             "5 alt2.aspmx.l.google.com.",
///             "10 alt3.aspmx.l.google.com.",
///             "10 alt4.aspmx.l.google.com.",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "mx", &dns.RecordSetArgs{
/// 			Name:        prod.DnsName,
/// 			ManagedZone: prod.Name,
/// 			Type:        pulumi.String("MX"),
/// 			Ttl:         pulumi.Int(3600),
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String("1 aspmx.l.google.com."),
/// 				pulumi.String("5 alt1.aspmx.l.google.com."),
/// 				pulumi.String("5 alt2.aspmx.l.google.com."),
/// 				pulumi.String("10 alt3.aspmx.l.google.com."),
/// 				pulumi.String("10 alt4.aspmx.l.google.com."),
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var mx = new RecordSet("mx", RecordSetArgs.builder()
///             .name(prod.dnsName())
///             .managedZone(prod.name())
///             .type("MX")
///             .ttl(3600)
///             .rrdatas(
///                 "1 aspmx.l.google.com.",
///                 "5 alt1.aspmx.l.google.com.",
///                 "5 alt2.aspmx.l.google.com.",
///                 "10 alt3.aspmx.l.google.com.",
///                 "10 alt4.aspmx.l.google.com.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mx:
///     type: gcp:dns:RecordSet
///     properties:
///       name: ${prod.dnsName}
///       managedZone: ${prod.name}
///       type: MX
///       ttl: 3600
///       rrdatas:
///         - 1 aspmx.l.google.com.
///         - 5 alt1.aspmx.l.google.com.
///         - 5 alt2.aspmx.l.google.com.
///         - 10 alt3.aspmx.l.google.com.
///         - 10 alt4.aspmx.l.google.com.
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// ```
///
///
/// ### Adding an SPF record
///
/// Quotes (`""`) must be added around your `rrdatas` for a SPF record. Otherwise `rrdatas` string gets split on spaces.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const spf = new gcp.dns.RecordSet("spf", {
///     name: pulumi.interpolate`frontend.${prod.dnsName}`,
///     managedZone: prod.name,
///     type: "TXT",
///     ttl: 300,
///     rrdatas: ["\"v=spf1 ip4:111.111.111.111 include:backoff.email-example.com -all\""],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// spf = gcp.dns.RecordSet("spf",
///     name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
///     managed_zone=prod.name,
///     type="TXT",
///     ttl=300,
///     rrdatas=["\"v=spf1 ip4:111.111.111.111 include:backoff.email-example.com -all\""])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var spf = new Gcp.Dns.RecordSet("spf", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"frontend.{dnsName}"),
///         ManagedZone = prod.Name,
///         Type = "TXT",
///         Ttl = 300,
///         Rrdatas = new[]
///         {
///             "\"v=spf1 ip4:111.111.111.111 include:backoff.email-example.com -all\"",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "spf", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("frontend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			ManagedZone: prod.Name,
/// 			Type:        pulumi.String("TXT"),
/// 			Ttl:         pulumi.Int(300),
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String("\"v=spf1 ip4:111.111.111.111 include:backoff.email-example.com -all\""),
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var spf = new RecordSet("spf", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("frontend.%s", _dnsName)))
///             .managedZone(prod.name())
///             .type("TXT")
///             .ttl(300)
///             .rrdatas("\"v=spf1 ip4:111.111.111.111 include:backoff.email-example.com -all\"")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   spf:
///     type: gcp:dns:RecordSet
///     properties:
///       name: frontend.${prod.dnsName}
///       managedZone: ${prod.name}
///       type: TXT
///       ttl: 300
///       rrdatas:
///         - '"v=spf1 ip4:111.111.111.111 include:backoff.email-example.com -all"'
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// ```
///
///
/// ### Adding a CNAME record
///
/// The list of `rrdatas` should only contain a single string corresponding to the Canonical Name intended.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const cname = new gcp.dns.RecordSet("cname", {
///     name: pulumi.interpolate`frontend.${prod.dnsName}`,
///     managedZone: prod.name,
///     type: "CNAME",
///     ttl: 300,
///     rrdatas: ["frontend.mydomain.com."],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// cname = gcp.dns.RecordSet("cname",
///     name=prod.dns_name.apply(lambda dns_name: f"frontend.{dns_name}"),
///     managed_zone=prod.name,
///     type="CNAME",
///     ttl=300,
///     rrdatas=["frontend.mydomain.com."])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var cname = new Gcp.Dns.RecordSet("cname", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"frontend.{dnsName}"),
///         ManagedZone = prod.Name,
///         Type = "CNAME",
///         Ttl = 300,
///         Rrdatas = new[]
///         {
///             "frontend.mydomain.com.",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("prod-zone"),
/// 			DnsName: pulumi.String("prod.mydomain.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "cname", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("frontend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			ManagedZone: prod.Name,
/// 			Type:        pulumi.String("CNAME"),
/// 			Ttl:         pulumi.Int(300),
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String("frontend.mydomain.com."),
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
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
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var cname = new RecordSet("cname", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("frontend.%s", _dnsName)))
///             .managedZone(prod.name())
///             .type("CNAME")
///             .ttl(300)
///             .rrdatas("frontend.mydomain.com.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cname:
///     type: gcp:dns:RecordSet
///     properties:
///       name: frontend.${prod.dnsName}
///       managedZone: ${prod.name}
///       type: CNAME
///       ttl: 300
///       rrdatas:
///         - frontend.mydomain.com.
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// ```
///
///
/// ### Setting Routing Policy instead of using rrdatas
/// ### Geolocation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const geo = new gcp.dns.RecordSet("geo", {
///     name: `backend.${prod.dnsName}`,
///     managedZone: prod.name,
///     type: "A",
///     ttl: 300,
///     routingPolicy: {
///         geos: [
///             {
///                 location: "asia-east1",
///                 rrdatas: ["10.128.1.1"],
///             },
///             {
///                 location: "us-central1",
///                 rrdatas: ["10.130.1.1"],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// geo = gcp.dns.RecordSet("geo",
///     name=f"backend.{prod['dnsName']}",
///     managed_zone=prod["name"],
///     type="A",
///     ttl=300,
///     routing_policy={
///         "geos": [
///             {
///                 "location": "asia-east1",
///                 "rrdatas": ["10.128.1.1"],
///             },
///             {
///                 "location": "us-central1",
///                 "rrdatas": ["10.130.1.1"],
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var geo = new Gcp.Dns.RecordSet("geo", new()
///     {
///         Name = $"backend.{prod.DnsName}",
///         ManagedZone = prod.Name,
///         Type = "A",
///         Ttl = 300,
///         RoutingPolicy = new Gcp.Dns.Inputs.RecordSetRoutingPolicyArgs
///         {
///             Geos = new[]
///             {
///                 new Gcp.Dns.Inputs.RecordSetRoutingPolicyGeoArgs
///                 {
///                     Location = "asia-east1",
///                     Rrdatas = new[]
///                     {
///                         "10.128.1.1",
///                     },
///                 },
///                 new Gcp.Dns.Inputs.RecordSetRoutingPolicyGeoArgs
///                 {
///                     Location = "us-central1",
///                     Rrdatas = new[]
///                     {
///                         "10.130.1.1",
///                     },
///                 },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "geo", &dns.RecordSetArgs{
/// 			Name:        pulumi.Sprintf("backend.%v", prod.DnsName),
/// 			ManagedZone: pulumi.Any(prod.Name),
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			RoutingPolicy: &dns.RecordSetRoutingPolicyArgs{
/// 				Geos: dns.RecordSetRoutingPolicyGeoArray{
/// 					&dns.RecordSetRoutingPolicyGeoArgs{
/// 						Location: pulumi.String("asia-east1"),
/// 						Rrdatas: pulumi.StringArray{
/// 							pulumi.String("10.128.1.1"),
/// 						},
/// 					},
/// 					&dns.RecordSetRoutingPolicyGeoArgs{
/// 						Location: pulumi.String("us-central1"),
/// 						Rrdatas: pulumi.StringArray{
/// 							pulumi.String("10.130.1.1"),
/// 						},
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyArgs;
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
///         var geo = new RecordSet("geo", RecordSetArgs.builder()
///             .name(String.format("backend.%s", prod.dnsName()))
///             .managedZone(prod.name())
///             .type("A")
///             .ttl(300)
///             .routingPolicy(RecordSetRoutingPolicyArgs.builder()
///                 .geos(
///                     RecordSetRoutingPolicyGeoArgs.builder()
///                         .location("asia-east1")
///                         .rrdatas("10.128.1.1")
///                         .build(),
///                     RecordSetRoutingPolicyGeoArgs.builder()
///                         .location("us-central1")
///                         .rrdatas("10.130.1.1")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   geo:
///     type: gcp:dns:RecordSet
///     properties:
///       name: backend.${prod.dnsName}
///       managedZone: ${prod.name}
///       type: A
///       ttl: 300
///       routingPolicy:
///         geos:
///           - location: asia-east1
///             rrdatas:
///               - 10.128.1.1
///           - location: us-central1
///             rrdatas:
///               - 10.130.1.1
/// ```
///
///
/// ### Failover
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
///     visibility: "private",
/// });
/// const prodRegionBackendService = new gcp.compute.RegionBackendService("prod", {
///     name: "prod-backend",
///     region: "us-central1",
/// });
/// const prodNetwork = new gcp.compute.Network("prod", {name: "prod-network"});
/// const prodForwardingRule = new gcp.compute.ForwardingRule("prod", {
///     name: "prod-ilb",
///     region: "us-central1",
///     loadBalancingScheme: "INTERNAL",
///     backendService: prodRegionBackendService.id,
///     allPorts: true,
///     network: prodNetwork.name,
///     allowGlobalAccess: true,
/// });
/// const a = new gcp.dns.RecordSet("a", {
///     name: pulumi.interpolate`backend.${prod.dnsName}`,
///     managedZone: prod.name,
///     type: "A",
///     ttl: 300,
///     routingPolicy: {
///         primaryBackup: {
///             trickleRatio: 0.1,
///             primary: {
///                 internalLoadBalancers: [{
///                     loadBalancerType: "regionalL4ilb",
///                     ipAddress: prodForwardingRule.ipAddress,
///                     port: "80",
///                     ipProtocol: "tcp",
///                     networkUrl: prodNetwork.id,
///                     project: prodForwardingRule.project,
///                     region: prodForwardingRule.region,
///                 }],
///             },
///             backupGeos: [
///                 {
///                     location: "asia-east1",
///                     rrdatas: ["10.128.1.1"],
///                 },
///                 {
///                     location: "us-west1",
///                     rrdatas: ["10.130.1.1"],
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.",
///     visibility="private")
/// prod_region_backend_service = gcp.compute.RegionBackendService("prod",
///     name="prod-backend",
///     region="us-central1")
/// prod_network = gcp.compute.Network("prod", name="prod-network")
/// prod_forwarding_rule = gcp.compute.ForwardingRule("prod",
///     name="prod-ilb",
///     region="us-central1",
///     load_balancing_scheme="INTERNAL",
///     backend_service=prod_region_backend_service.id,
///     all_ports=True,
///     network=prod_network.name,
///     allow_global_access=True)
/// a = gcp.dns.RecordSet("a",
///     name=prod.dns_name.apply(lambda dns_name: f"backend.{dns_name}"),
///     managed_zone=prod.name,
///     type="A",
///     ttl=300,
///     routing_policy={
///         "primary_backup": {
///             "trickle_ratio": 0.1,
///             "primary": {
///                 "internal_load_balancers": [{
///                     "load_balancer_type": "regionalL4ilb",
///                     "ip_address": prod_forwarding_rule.ip_address,
///                     "port": "80",
///                     "ip_protocol": "tcp",
///                     "network_url": prod_network.id,
///                     "project": prod_forwarding_rule.project,
///                     "region": prod_forwarding_rule.region,
///                 }],
///             },
///             "backup_geos": [
///                 {
///                     "location": "asia-east1",
///                     "rrdatas": ["10.128.1.1"],
///                 },
///                 {
///                     "location": "us-west1",
///                     "rrdatas": ["10.130.1.1"],
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///         Visibility = "private",
///     });
///
///     var prodRegionBackendService = new Gcp.Compute.RegionBackendService("prod", new()
///     {
///         Name = "prod-backend",
///         Region = "us-central1",
///     });
///
///     var prodNetwork = new Gcp.Compute.Network("prod", new()
///     {
///         Name = "prod-network",
///     });
///
///     var prodForwardingRule = new Gcp.Compute.ForwardingRule("prod", new()
///     {
///         Name = "prod-ilb",
///         Region = "us-central1",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = prodRegionBackendService.Id,
///         AllPorts = true,
///         Network = prodNetwork.Name,
///         AllowGlobalAccess = true,
///     });
///
///     var a = new Gcp.Dns.RecordSet("a", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"backend.{dnsName}"),
///         ManagedZone = prod.Name,
///         Type = "A",
///         Ttl = 300,
///         RoutingPolicy = new Gcp.Dns.Inputs.RecordSetRoutingPolicyArgs
///         {
///             PrimaryBackup = new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupArgs
///             {
///                 TrickleRatio = 0.1,
///                 Primary = new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupPrimaryArgs
///                 {
///                     InternalLoadBalancers = new[]
///                     {
///                         new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancerArgs
///                         {
///                             LoadBalancerType = "regionalL4ilb",
///                             IpAddress = prodForwardingRule.IpAddress,
///                             Port = "80",
///                             IpProtocol = "tcp",
///                             NetworkUrl = prodNetwork.Id,
///                             Project = prodForwardingRule.Project,
///                             Region = prodForwardingRule.Region,
///                         },
///                     },
///                 },
///                 BackupGeos = new[]
///                 {
///                     new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs
///                     {
///                         Location = "asia-east1",
///                         Rrdatas = new[]
///                         {
///                             "10.128.1.1",
///                         },
///                     },
///                     new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs
///                     {
///                         Location = "us-west1",
///                         Rrdatas = new[]
///                         {
///                             "10.130.1.1",
///                         },
///                     },
///                 },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prod, err := dns.NewManagedZone(ctx, "prod", &dns.ManagedZoneArgs{
/// 			Name:       pulumi.String("prod-zone"),
/// 			DnsName:    pulumi.String("prod.mydomain.com."),
/// 			Visibility: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prodRegionBackendService, err := compute.NewRegionBackendService(ctx, "prod", &compute.RegionBackendServiceArgs{
/// 			Name:   pulumi.String("prod-backend"),
/// 			Region: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prodNetwork, err := compute.NewNetwork(ctx, "prod", &compute.NetworkArgs{
/// 			Name: pulumi.String("prod-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prodForwardingRule, err := compute.NewForwardingRule(ctx, "prod", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("prod-ilb"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      prodRegionBackendService.ID(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             prodNetwork.Name,
/// 			AllowGlobalAccess:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "a", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("backend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			ManagedZone: prod.Name,
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			RoutingPolicy: &dns.RecordSetRoutingPolicyArgs{
/// 				PrimaryBackup: &dns.RecordSetRoutingPolicyPrimaryBackupArgs{
/// 					TrickleRatio: pulumi.Float64(0.1),
/// 					Primary: &dns.RecordSetRoutingPolicyPrimaryBackupPrimaryArgs{
/// 						InternalLoadBalancers: dns.RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancerArray{
/// 							&dns.RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancerArgs{
/// 								LoadBalancerType: pulumi.String("regionalL4ilb"),
/// 								IpAddress:        prodForwardingRule.IpAddress,
/// 								Port:             pulumi.String("80"),
/// 								IpProtocol:       pulumi.String("tcp"),
/// 								NetworkUrl:       prodNetwork.ID(),
/// 								Project:          prodForwardingRule.Project,
/// 								Region:           prodForwardingRule.Region,
/// 							},
/// 						},
/// 					},
/// 					BackupGeos: dns.RecordSetRoutingPolicyPrimaryBackupBackupGeoArray{
/// 						&dns.RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs{
/// 							Location: pulumi.String("asia-east1"),
/// 							Rrdatas: pulumi.StringArray{
/// 								pulumi.String("10.128.1.1"),
/// 							},
/// 						},
/// 						&dns.RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs{
/// 							Location: pulumi.String("us-west1"),
/// 							Rrdatas: pulumi.StringArray{
/// 								pulumi.String("10.130.1.1"),
/// 							},
/// 						},
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyPrimaryBackupArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyPrimaryBackupPrimaryArgs;
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
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .visibility("private")
///             .build());
///
///         var prodRegionBackendService = new RegionBackendService("prodRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("prod-backend")
///             .region("us-central1")
///             .build());
///
///         var prodNetwork = new Network("prodNetwork", NetworkArgs.builder()
///             .name("prod-network")
///             .build());
///
///         var prodForwardingRule = new ForwardingRule("prodForwardingRule", ForwardingRuleArgs.builder()
///             .name("prod-ilb")
///             .region("us-central1")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(prodRegionBackendService.id())
///             .allPorts(true)
///             .network(prodNetwork.name())
///             .allowGlobalAccess(true)
///             .build());
///
///         var a = new RecordSet("a", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("backend.%s", _dnsName)))
///             .managedZone(prod.name())
///             .type("A")
///             .ttl(300)
///             .routingPolicy(RecordSetRoutingPolicyArgs.builder()
///                 .primaryBackup(RecordSetRoutingPolicyPrimaryBackupArgs.builder()
///                     .trickleRatio(0.1)
///                     .primary(RecordSetRoutingPolicyPrimaryBackupPrimaryArgs.builder()
///                         .internalLoadBalancers(RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancerArgs.builder()
///                             .loadBalancerType("regionalL4ilb")
///                             .ipAddress(prodForwardingRule.ipAddress())
///                             .port("80")
///                             .ipProtocol("tcp")
///                             .networkUrl(prodNetwork.id())
///                             .project(prodForwardingRule.project())
///                             .region(prodForwardingRule.region())
///                             .build())
///                         .build())
///                     .backupGeos(
///                         RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs.builder()
///                             .location("asia-east1")
///                             .rrdatas("10.128.1.1")
///                             .build(),
///                         RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs.builder()
///                             .location("us-west1")
///                             .rrdatas("10.130.1.1")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a:
///     type: gcp:dns:RecordSet
///     properties:
///       name: backend.${prod.dnsName}
///       managedZone: ${prod.name}
///       type: A
///       ttl: 300
///       routingPolicy:
///         primaryBackup:
///           trickleRatio: 0.1
///           primary:
///             internalLoadBalancers:
///               - loadBalancerType: regionalL4ilb
///                 ipAddress: ${prodForwardingRule.ipAddress}
///                 port: '80'
///                 ipProtocol: tcp
///                 networkUrl: ${prodNetwork.id}
///                 project: ${prodForwardingRule.project}
///                 region: ${prodForwardingRule.region}
///           backupGeos:
///             - location: asia-east1
///               rrdatas:
///                 - 10.128.1.1
///             - location: us-west1
///               rrdatas:
///                 - 10.130.1.1
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
///       visibility: private
///   prodForwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: prod
///     properties:
///       name: prod-ilb
///       region: us-central1
///       loadBalancingScheme: INTERNAL
///       backendService: ${prodRegionBackendService.id}
///       allPorts: true
///       network: ${prodNetwork.name}
///       allowGlobalAccess: true
///   prodRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: prod
///     properties:
///       name: prod-backend
///       region: us-central1
///   prodNetwork:
///     type: gcp:compute:Network
///     name: prod
///     properties:
///       name: prod-network
/// ```
///
///
/// ### Public zone failover
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_health_check = new gcp.compute.HealthCheck("http-health-check", {
///     name: "http-health-check",
///     description: "Health check via http",
///     timeoutSec: 5,
///     checkIntervalSec: 30,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     httpHealthCheck: {
///         portSpecification: "USE_SERVING_PORT",
///     },
/// });
/// const prod = new gcp.dns.ManagedZone("prod", {
///     name: "prod-zone",
///     dnsName: "prod.mydomain.com.",
/// });
/// const a = new gcp.dns.RecordSet("a", {
///     name: pulumi.interpolate`backend.${prod.dnsName}`,
///     managedZone: prod.name,
///     type: "A",
///     ttl: 300,
///     routingPolicy: {
///         healthCheck: http_health_check.id,
///         primaryBackup: {
///             trickleRatio: 0.1,
///             primary: {
///                 externalEndpoints: ["10.128.1.1"],
///             },
///             backupGeos: [{
///                 location: "us-west1",
///                 healthCheckedTargets: {
///                     externalEndpoints: ["10.130.1.1"],
///                 },
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http_health_check = gcp.compute.HealthCheck("http-health-check",
///     name="http-health-check",
///     description="Health check via http",
///     timeout_sec=5,
///     check_interval_sec=30,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     http_health_check={
///         "port_specification": "USE_SERVING_PORT",
///     })
/// prod = gcp.dns.ManagedZone("prod",
///     name="prod-zone",
///     dns_name="prod.mydomain.com.")
/// a = gcp.dns.RecordSet("a",
///     name=prod.dns_name.apply(lambda dns_name: f"backend.{dns_name}"),
///     managed_zone=prod.name,
///     type="A",
///     ttl=300,
///     routing_policy={
///         "health_check": http_health_check.id,
///         "primary_backup": {
///             "trickle_ratio": 0.1,
///             "primary": {
///                 "external_endpoints": ["10.128.1.1"],
///             },
///             "backup_geos": [{
///                 "location": "us-west1",
///                 "health_checked_targets": {
///                     "external_endpoints": ["10.130.1.1"],
///                 },
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http_health_check = new Gcp.Compute.HealthCheck("http-health-check", new()
///     {
///         Name = "http-health-check",
///         Description = "Health check via http",
///         TimeoutSec = 5,
///         CheckIntervalSec = 30,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             PortSpecification = "USE_SERVING_PORT",
///         },
///     });
///
///     var prod = new Gcp.Dns.ManagedZone("prod", new()
///     {
///         Name = "prod-zone",
///         DnsName = "prod.mydomain.com.",
///     });
///
///     var a = new Gcp.Dns.RecordSet("a", new()
///     {
///         Name = prod.DnsName.Apply(dnsName => $"backend.{dnsName}"),
///         ManagedZone = prod.Name,
///         Type = "A",
///         Ttl = 300,
///         RoutingPolicy = new Gcp.Dns.Inputs.RecordSetRoutingPolicyArgs
///         {
///             HealthCheck = http_health_check.Id,
///             PrimaryBackup = new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupArgs
///             {
///                 TrickleRatio = 0.1,
///                 Primary = new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupPrimaryArgs
///                 {
///                     ExternalEndpoints = new[]
///                     {
///                         "10.128.1.1",
///                     },
///                 },
///                 BackupGeos = new[]
///                 {
///                     new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs
///                     {
///                         Location = "us-west1",
///                         HealthCheckedTargets = new Gcp.Dns.Inputs.RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsArgs
///                         {
///                             ExternalEndpoints = new[]
///                             {
///                                 "10.130.1.1",
///                             },
///                         },
///                     },
///                 },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		http_health_check, err := compute.NewHealthCheck(ctx, "http-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("http-health-check"),
/// 			Description:        pulumi.String("Health check via http"),
/// 			TimeoutSec:         pulumi.Int(5),
/// 			CheckIntervalSec:   pulumi.Int(30),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				PortSpecification: pulumi.String("USE_SERVING_PORT"),
/// 			},
/// 		})
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
/// 		_, err = dns.NewRecordSet(ctx, "a", &dns.RecordSetArgs{
/// 			Name: prod.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 				return fmt.Sprintf("backend.%v", dnsName), nil
/// 			}).(pulumi.StringOutput),
/// 			ManagedZone: prod.Name,
/// 			Type:        pulumi.String("A"),
/// 			Ttl:         pulumi.Int(300),
/// 			RoutingPolicy: &dns.RecordSetRoutingPolicyArgs{
/// 				HealthCheck: http_health_check.ID(),
/// 				PrimaryBackup: &dns.RecordSetRoutingPolicyPrimaryBackupArgs{
/// 					TrickleRatio: pulumi.Float64(0.1),
/// 					Primary: &dns.RecordSetRoutingPolicyPrimaryBackupPrimaryArgs{
/// 						ExternalEndpoints: pulumi.StringArray{
/// 							pulumi.String("10.128.1.1"),
/// 						},
/// 					},
/// 					BackupGeos: dns.RecordSetRoutingPolicyPrimaryBackupBackupGeoArray{
/// 						&dns.RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs{
/// 							Location: pulumi.String("us-west1"),
/// 							HealthCheckedTargets: &dns.RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsArgs{
/// 								ExternalEndpoints: pulumi.StringArray{
/// 									pulumi.String("10.130.1.1"),
/// 								},
/// 							},
/// 						},
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyPrimaryBackupArgs;
/// import com.pulumi.gcp.dns.inputs.RecordSetRoutingPolicyPrimaryBackupPrimaryArgs;
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
///         var http_health_check = new HealthCheck("http-health-check", HealthCheckArgs.builder()
///             .name("http-health-check")
///             .description("Health check via http")
///             .timeoutSec(5)
///             .checkIntervalSec(30)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .portSpecification("USE_SERVING_PORT")
///                 .build())
///             .build());
///
///         var prod = new ManagedZone("prod", ManagedZoneArgs.builder()
///             .name("prod-zone")
///             .dnsName("prod.mydomain.com.")
///             .build());
///
///         var a = new RecordSet("a", RecordSetArgs.builder()
///             .name(prod.dnsName().applyValue(_dnsName -> String.format("backend.%s", _dnsName)))
///             .managedZone(prod.name())
///             .type("A")
///             .ttl(300)
///             .routingPolicy(RecordSetRoutingPolicyArgs.builder()
///                 .healthCheck(http_health_check.id())
///                 .primaryBackup(RecordSetRoutingPolicyPrimaryBackupArgs.builder()
///                     .trickleRatio(0.1)
///                     .primary(RecordSetRoutingPolicyPrimaryBackupPrimaryArgs.builder()
///                         .externalEndpoints("10.128.1.1")
///                         .build())
///                     .backupGeos(RecordSetRoutingPolicyPrimaryBackupBackupGeoArgs.builder()
///                         .location("us-west1")
///                         .healthCheckedTargets(RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsArgs.builder()
///                             .externalEndpoints("10.130.1.1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a:
///     type: gcp:dns:RecordSet
///     properties:
///       name: backend.${prod.dnsName}
///       managedZone: ${prod.name}
///       type: A
///       ttl: 300
///       routingPolicy:
///         healthCheck: ${["http-health-check"].id}
///         primaryBackup:
///           trickleRatio: 0.1
///           primary:
///             externalEndpoints:
///               - 10.128.1.1
///           backupGeos:
///             - location: us-west1
///               healthCheckedTargets:
///                 externalEndpoints:
///                   - 10.130.1.1
///   http-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: http-health-check
///       description: Health check via http
///       timeoutSec: 5
///       checkIntervalSec: 30
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       httpHealthCheck:
///         portSpecification: USE_SERVING_PORT
///   prod:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: prod-zone
///       dnsName: prod.mydomain.com.
/// ```
///
///
/// ## Import
///
/// DNS record sets can be imported using either of these accepted formats:
///
/// * `projects/{{project}}/managedZones/{{zone}}/rrsets/{{name}}/{{type}}`
///
/// * `{{project}}/{{zone}}/{{name}}/{{type}}`
///
/// * `{{zone}}/{{name}}/{{type}}`
///
/// When using the `pulumi import` command, DNS record sets can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/recordSet:RecordSet default projects/{{project}}/managedZones/{{zone}}/rrsets/{{name}}/{{type}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/recordSet:RecordSet default {{project}}/{{zone}}/{{name}}/{{type}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/recordSet:RecordSet default {{zone}}/{{name}}/{{type}}
/// ```
///
/// Note: The record name must include the trailing dot at the end.
class RecordSet extends pulumi.CustomResource {
  /// The name of the zone in which this record set will
  /// reside.
  late final pulumi.Output<String> managedZone;

  /// The DNS name this record set will apply to.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The configuration for steering traffic based on query.
  /// Now you can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type.
  /// Structure is documented below.
  late final pulumi.Output<RecordSetRoutingPolicy?> routingPolicy;
  late final pulumi.Output<List<String>?> rrdatas;

  /// The time-to-live of this record set (seconds).
  late final pulumi.Output<int?> ttl;

  /// The DNS record set type.
  ///
  /// - - -
  late final pulumi.Output<String> type;

  /// Creates a new [RecordSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecordSet]. {@macro pulumi_dns_record_set_record_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecordSet(
    String name, {
    RecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dns/recordSet:RecordSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    managedZone = registerOutput<String>('managedZone');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    routingPolicy = registerOutput<RecordSetRoutingPolicy?>(
      'routingPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RecordSetRoutingPolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rrdatas = registerOutput<List<String>?>('rrdatas');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [RecordSet] resource's state with the given [name] and [id].
  static RecordSet get(
    String name,
    pulumi.Input<String> id, {
    RecordSetState? state,
  }) {
    return RecordSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RecordSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dns/recordSet:RecordSet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    managedZone = registerOutput<String>('managedZone');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    routingPolicy = registerOutput<RecordSetRoutingPolicy?>(
      'routingPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RecordSetRoutingPolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rrdatas = registerOutput<List<String>?>('rrdatas');
    ttl = registerOutput<int?>('ttl');
    type = registerOutput<String>('type');
  }
}
