import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_keys_args.dart';
import 'get_keys_result.dart';
import 'get_managed_zone_args.dart';
import 'get_managed_zone_iam_policy_args.dart';
import 'get_managed_zone_iam_policy_result.dart';
import 'get_managed_zone_result.dart';
import 'get_managed_zones_args.dart';
import 'get_managed_zones_result.dart';
import 'get_record_set_args.dart';
import 'get_record_set_result.dart';
import 'get_record_sets_args.dart';
import 'get_record_sets_result.dart';

/// Get the DNSKEY and DS records of DNSSEC-signed managed zones.
///
/// For more information see the
/// [official documentation](https://cloud.google.com/dns/docs/dnskeys/)
/// and [API](https://cloud.google.com/dns/docs/reference/v1/dnsKeys).
///
/// &gt; A gcp.dns.ManagedZone resource must have DNSSEC enabled in order
/// to contain any DNSKEYs. Queries to managed zones without this setting
/// enabled will result in a 404 error as the collection of DNSKEYs does
/// not exist in the DNS API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = new gcp.dns.ManagedZone("foo", {
///     name: "foobar",
///     dnsName: "foo.bar.",
///     dnssecConfig: {
///         state: "on",
///         nonExistence: "nsec3",
///     },
/// });
/// const fooDnsKeys = gcp.dns.getKeysOutput({
///     managedZone: foo.id,
/// });
/// export const fooDnsDsRecord = fooDnsKeys.apply(fooDnsKeys => fooDnsKeys.keySigningKeys?.[0]?.dsRecord);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.dns.ManagedZone("foo",
///     name="foobar",
///     dns_name="foo.bar.",
///     dnssec_config={
///         "state": "on",
///         "non_existence": "nsec3",
///     })
/// foo_dns_keys = gcp.dns.get_keys_output(managed_zone=foo.id)
/// pulumi.export("fooDnsDsRecord", foo_dns_keys.key_signing_keys[0].ds_record)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Gcp.Dns.ManagedZone("foo", new()
///     {
///         Name = "foobar",
///         DnsName = "foo.bar.",
///         DnssecConfig = new Gcp.Dns.Inputs.ManagedZoneDnssecConfigArgs
///         {
///             State = "on",
///             NonExistence = "nsec3",
///         },
///     });
///
///     var fooDnsKeys = Gcp.Dns.GetKeys.Invoke(new()
///     {
///         ManagedZone = foo.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fooDnsDsRecord"] = fooDnsKeys.Apply(getKeysResult => getKeysResult.KeySigningKeys[0]?.DsRecord),
///     };
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
/// 		foo, err := dns.NewManagedZone(ctx, "foo", &dns.ManagedZoneArgs{
/// 			Name:    pulumi.String("foobar"),
/// 			DnsName: pulumi.String("foo.bar."),
/// 			DnssecConfig: &dns.ManagedZoneDnssecConfigArgs{
/// 				State:        pulumi.String("on"),
/// 				NonExistence: pulumi.String("nsec3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooDnsKeys := dns.GetKeysOutput(ctx, dns.GetKeysOutputArgs{
/// 			ManagedZone: foo.ID().ToIDOutput().ToStringOutput(),
/// 		}, nil)
/// 		ctx.Export("fooDnsDsRecord", fooDnsKeys.ApplyT(func(fooDnsKeys dns.GetKeysResult) (*string, error) {
/// 			return fooDnsKeys.KeySigningKeys[0].DsRecord, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// data "gcp_dns_getkeys" "fooDnsKeys" {
///   managed_zone = gcp_dns_managedzone.foo.id
/// }
///
/// resource "gcp_dns_managedzone" "foo" {
///   name     = "foobar"
///   dns_name = "foo.bar."
///   dnssec_config = {
///     state         = "on"
///     non_existence = "nsec3"
///   }
/// }
/// output "fooDnsDsRecord" {
///   value = data.gcp_dns_getkeys.fooDnsKeys.key_signing_keys[0].ds_record
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
/// import com.pulumi.gcp.dns.inputs.ManagedZoneDnssecConfigArgs;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetKeysArgs;
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
///         var foo = new ManagedZone("foo", ManagedZoneArgs.builder()
///             .name("foobar")
///             .dnsName("foo.bar.")
///             .dnssecConfig(ManagedZoneDnssecConfigArgs.builder()
///                 .state("on")
///                 .nonExistence("nsec3")
///                 .build())
///             .build());
///
///         final var fooDnsKeys = DnsFunctions.getKeys(GetKeysArgs.builder()
///             .managedZone(foo.id())
///             .build());
///
///         ctx.export("fooDnsDsRecord", fooDnsKeys.applyValue(_fooDnsKeys -> _fooDnsKeys.keySigningKeys().get(0).dsRecord()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: foobar
///       dnsName: foo.bar.
///       dnssecConfig:
///         state: on
///         nonExistence: nsec3
/// variables:
///   fooDnsKeys:
///     fn::invoke:
///       function: gcp:dns:getKeys
///       arguments:
///         managedZone: ${foo.id}
/// outputs:
///   fooDnsDsRecord: ${fooDnsKeys.keySigningKeys[0].dsRecord}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_keys_get_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeysResult> getKeys(
  GetKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getKeys:getKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeysResult.fromMap(result);
}

/// Provides access to a zone's attributes within Google Cloud DNS.
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/zones/)
/// and
/// [API](https://cloud.google.com/dns/api/v1/managedZones).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const envDnsZone = gcp.dns.getManagedZone({
///     name: "qa-zone",
/// });
/// const dns = new gcp.dns.RecordSet("dns", {
///     name: envDnsZone.then(envDnsZone => `my-address.${envDnsZone.dnsName}`),
///     type: "TXT",
///     ttl: 300,
///     managedZone: envDnsZone.then(envDnsZone => envDnsZone.name),
///     rrdatas: ["test"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// env_dns_zone = gcp.dns.get_managed_zone(name="qa-zone")
/// dns = gcp.dns.RecordSet("dns",
///     name=f"my-address.{env_dns_zone.dns_name}",
///     type="TXT",
///     ttl=300,
///     managed_zone=env_dns_zone.name,
///     rrdatas=["test"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var envDnsZone = Gcp.Dns.GetManagedZone.Invoke(new()
///     {
///         Name = "qa-zone",
///     });
///
///     var dns = new Gcp.Dns.RecordSet("dns", new()
///     {
///         Name = $"my-address.{envDnsZone.Apply(getManagedZoneResult => getManagedZoneResult.DnsName)}",
///         Type = "TXT",
///         Ttl = 300,
///         ManagedZone = envDnsZone.Apply(getManagedZoneResult => getManagedZoneResult.Name),
///         Rrdatas = new[]
///         {
///             "test",
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
/// 		envDnsZone, err := dns.LookupManagedZone(ctx, &dns.LookupManagedZoneArgs{
/// 			Name: "qa-zone",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "dns", &dns.RecordSetArgs{
/// 			Name:        pulumi.Sprintf("my-address.%v", envDnsZone.DnsName),
/// 			Type:        pulumi.String("TXT"),
/// 			Ttl:         pulumi.Int(300),
/// 			ManagedZone: pulumi.String(envDnsZone.Name),
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String("test"),
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
/// data "gcp_dns_getmanagedzone" "envDnsZone" {
///   name = "qa-zone"
/// }
///
/// resource "gcp_dns_recordset" "dns" {
///   name         ="my-address.${data.gcp_dns_getmanagedzone.envDnsZone.dns_name}"
///   type         = "TXT"
///   ttl          = 300
///   managed_zone = data.gcp_dns_getmanagedzone.envDnsZone.name
///   rrdatas      = ["test"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneArgs;
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
///         final var envDnsZone = DnsFunctions.getManagedZone(GetManagedZoneArgs.builder()
///             .name("qa-zone")
///             .build());
///
///         var dns = new RecordSet("dns", RecordSetArgs.builder()
///             .name(String.format("my-address.%s", envDnsZone.dnsName()))
///             .type("TXT")
///             .ttl(300)
///             .managedZone(envDnsZone.name())
///             .rrdatas("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dns:
///     type: gcp:dns:RecordSet
///     properties:
///       name: my-address.${envDnsZone.dnsName}
///       type: TXT
///       ttl: 300
///       managedZone: ${envDnsZone.name}
///       rrdatas:
///         - test
/// variables:
///   envDnsZone:
///     fn::invoke:
///       function: gcp:dns:getManagedZone
///       arguments:
///         name: qa-zone
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_managed_zone_get_managed_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneResult> getManagedZone(
  GetManagedZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZone:getManagedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult.fromMap(result);
}

/// Retrieves the current IAM policy data for managedzone
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dns.getManagedZoneIamPolicy({
///     project: _default.project,
///     managedZone: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dns.get_managed_zone_iam_policy(project=default["project"],
///     managed_zone=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dns.GetManagedZoneIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         ManagedZone = @default.Name,
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
/// 		_, err := dns.GetManagedZoneIamPolicy(ctx, &dns.GetManagedZoneIamPolicyArgs{
/// 			Project:     pulumi.StringRef(_default.Project),
/// 			ManagedZone: _default.Name,
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
/// data "gcp_dns_getmanagedzoneiampolicy" "policy" {
///   project      = default.project
///   managed_zone = default.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneIamPolicyArgs;
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
///         final var policy = DnsFunctions.getManagedZoneIamPolicy(GetManagedZoneIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .managedZone(default_.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dns:getManagedZoneIamPolicy
///       arguments:
///         project: ${default.project}
///         managedZone: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_managed_zone_iam_policy_get_managed_zone_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneIamPolicyResult> getManagedZoneIamPolicy(
  GetManagedZoneIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZoneIamPolicy:getManagedZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyResult.fromMap(result);
}

/// Provides access to a list of zones within Google Cloud DNS.
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/zones/)
/// and
/// [API](https://cloud.google.com/dns/api/v1/managedZones).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const zones = gcp.dns.getManagedZones({
///     project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// zones = gcp.dns.get_managed_zones(project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zones = Gcp.Dns.GetManagedZones.Invoke(new()
///     {
///         Project = "my-project-id",
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
/// 		_, err := dns.GetManagedZones(ctx, &dns.GetManagedZonesArgs{
/// 			Project: pulumi.StringRef("my-project-id"),
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
/// data "gcp_dns_getmanagedzones" "zones" {
///   project = "my-project-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZonesArgs;
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
///         final var zones = DnsFunctions.getManagedZones(GetManagedZonesArgs.builder()
///             .project("my-project-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zones:
///     fn::invoke:
///       function: gcp:dns:getManagedZones
///       arguments:
///         project: my-project-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_managed_zones_get_managed_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZonesResult> getManagedZones(
  GetManagedZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZones:getManagedZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZonesResult.fromMap(result);
}

/// Get a DNS record set within Google Cloud DNS
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/docs/records)
/// and
/// [API](https://cloud.google.com/dns/docs/reference/v1/resourceRecordSets)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = gcp.dns.getManagedZone({
///     name: "sample-zone",
/// });
/// const rs = sample.then(sample => gcp.dns.getRecordSet({
///     managedZone: sample.name,
///     name: `my-record.${sample.dnsName}`,
///     type: "A",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample = gcp.dns.get_managed_zone(name="sample-zone")
/// rs = gcp.dns.get_record_set(managed_zone=sample.name,
///     name=f"my-record.{sample.dns_name}",
///     type="A")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = Gcp.Dns.GetManagedZone.Invoke(new()
///     {
///         Name = "sample-zone",
///     });
///
///     var rs = Gcp.Dns.GetRecordSet.Invoke(new()
///     {
///         ManagedZone = sample.Apply(getManagedZoneResult => getManagedZoneResult.Name),
///         Name = $"my-record.{sample.Apply(getManagedZoneResult => getManagedZoneResult.DnsName)}",
///         Type = "A",
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
/// 		sample, err := dns.LookupManagedZone(ctx, &dns.LookupManagedZoneArgs{
/// 			Name: "sample-zone",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.LookupRecordSet(ctx, &dns.LookupRecordSetArgs{
/// 			ManagedZone: sample.Name,
/// 			Name:        fmt.Sprintf("my-record.%v", sample.DnsName),
/// 			Type:        "A",
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
/// data "gcp_dns_getmanagedzone" "sample" {
///   name = "sample-zone"
/// }
/// data "gcp_dns_getrecordset" "rs" {
///   managed_zone = data.gcp_dns_getmanagedzone.sample.name
///   name         ="my-record.${data.gcp_dns_getmanagedzone.sample.dns_name}"
///   type         = "A"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.GetRecordSetArgs;
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
///         final var sample = DnsFunctions.getManagedZone(GetManagedZoneArgs.builder()
///             .name("sample-zone")
///             .build());
///
///         final var rs = DnsFunctions.getRecordSet(GetRecordSetArgs.builder()
///             .managedZone(sample.name())
///             .name(String.format("my-record.%s", sample.dnsName()))
///             .type("A")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sample:
///     fn::invoke:
///       function: gcp:dns:getManagedZone
///       arguments:
///         name: sample-zone
///   rs:
///     fn::invoke:
///       function: gcp:dns:getRecordSet
///       arguments:
///         managedZone: ${sample.name}
///         name: my-record.${sample.dnsName}
///         type: A
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_record_set_get_record_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordSetResult> getRecordSet(
  GetRecordSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getRecordSet:getRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordSetResult.fromMap(result);
}

/// Get a list of DNS record sets within a Google Cloud DNS managed zone. This data source allows you to list all record sets or filter them by name and type.
///
/// To get more information about Cloud DNS Record Sets, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/reference/v1/resourceRecordSets/list)
/// * [How-to Guides](https://cloud.google.com/dns/docs/records)
///
/// &gt; **Note:** Filtering by `type` when `name` is not set is performed client-side.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const envDnsZone = gcp.dns.getManagedZone({
///     name: "my-zone-name",
/// });
/// const example = envDnsZone.then(envDnsZone => gcp.dns.getRecordSets({
///     managedZone: envDnsZone.name,
///     type: "A",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// env_dns_zone = gcp.dns.get_managed_zone(name="my-zone-name")
/// example = gcp.dns.get_record_sets(managed_zone=env_dns_zone.name,
///     type="A")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var envDnsZone = Gcp.Dns.GetManagedZone.Invoke(new()
///     {
///         Name = "my-zone-name",
///     });
///
///     var example = Gcp.Dns.GetRecordSets.Invoke(new()
///     {
///         ManagedZone = envDnsZone.Apply(getManagedZoneResult => getManagedZoneResult.Name),
///         Type = "A",
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
/// 		envDnsZone, err := dns.LookupManagedZone(ctx, &dns.LookupManagedZoneArgs{
/// 			Name: "my-zone-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.GetRecordSets(ctx, &dns.GetRecordSetsArgs{
/// 			ManagedZone: envDnsZone.Name,
/// 			Type:        pulumi.StringRef("A"),
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
/// data "gcp_dns_getmanagedzone" "envDnsZone" {
///   name = "my-zone-name"
/// }
/// data "gcp_dns_getrecordsets" "example" {
///   managed_zone = data.gcp_dns_getmanagedzone.envDnsZone.name
///   type         = "A"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.GetRecordSetsArgs;
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
///         final var envDnsZone = DnsFunctions.getManagedZone(GetManagedZoneArgs.builder()
///             .name("my-zone-name")
///             .build());
///
///         final var example = DnsFunctions.getRecordSets(GetRecordSetsArgs.builder()
///             .managedZone(envDnsZone.name())
///             .type("A")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   envDnsZone:
///     fn::invoke:
///       function: gcp:dns:getManagedZone
///       arguments:
///         name: my-zone-name
///   example:
///     fn::invoke:
///       function: gcp:dns:getRecordSets
///       arguments:
///         managedZone: ${envDnsZone.name}
///         type: A
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_record_sets_get_record_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordSetsResult> getRecordSets(
  GetRecordSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getRecordSets:getRecordSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordSetsResult.fromMap(result);
}
