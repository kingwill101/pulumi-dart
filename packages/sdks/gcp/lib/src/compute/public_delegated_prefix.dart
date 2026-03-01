import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_args.dart';
import 'public_delegated_prefix_public_delegated_sub_prefix.dart';
import 'public_delegated_prefix_state.dart';

/// Represents a PublicDelegatedPrefix for use with bring your own IP addresses (BYOIP).
///
///
/// To get more information about PublicDelegatedPrefix, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes)
/// * How-to Guides
/// * [Using bring your own IP](https://cloud.google.com/vpc/docs/using-bring-your-own-ip)
///
/// ## Example Usage
///
/// ### Public Delegated Prefixes Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advertised = new gcp.compute.PublicAdvertisedPrefix("advertised", {
///     name: "my-prefix",
///     description: "description",
///     dnsVerificationIp: "127.127.0.0",
///     ipCidrRange: "127.127.0.0/16",
/// });
/// const prefixes = new gcp.compute.PublicDelegatedPrefix("prefixes", {
///     name: "my-prefix",
///     region: "us-central1",
///     description: "my description",
///     ipCidrRange: "127.127.0.0/24",
///     parentPrefix: advertised.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advertised = gcp.compute.PublicAdvertisedPrefix("advertised",
///     name="my-prefix",
///     description="description",
///     dns_verification_ip="127.127.0.0",
///     ip_cidr_range="127.127.0.0/16")
/// prefixes = gcp.compute.PublicDelegatedPrefix("prefixes",
///     name="my-prefix",
///     region="us-central1",
///     description="my description",
///     ip_cidr_range="127.127.0.0/24",
///     parent_prefix=advertised.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advertised = new Gcp.Compute.PublicAdvertisedPrefix("advertised", new()
///     {
///         Name = "my-prefix",
///         Description = "description",
///         DnsVerificationIp = "127.127.0.0",
///         IpCidrRange = "127.127.0.0/16",
///     });
///
///     var prefixes = new Gcp.Compute.PublicDelegatedPrefix("prefixes", new()
///     {
///         Name = "my-prefix",
///         Region = "us-central1",
///         Description = "my description",
///         IpCidrRange = "127.127.0.0/24",
///         ParentPrefix = advertised.Id,
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
/// 		advertised, err := compute.NewPublicAdvertisedPrefix(ctx, "advertised", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:              pulumi.String("my-prefix"),
/// 			Description:       pulumi.String("description"),
/// 			DnsVerificationIp: pulumi.String("127.127.0.0"),
/// 			IpCidrRange:       pulumi.String("127.127.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPublicDelegatedPrefix(ctx, "prefixes", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("my-prefix"),
/// 			Region:       pulumi.String("us-central1"),
/// 			Description:  pulumi.String("my description"),
/// 			IpCidrRange:  pulumi.String("127.127.0.0/24"),
/// 			ParentPrefix: advertised.ID(),
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
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefix;
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefixArgs;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefix;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefixArgs;
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
///         var advertised = new PublicAdvertisedPrefix("advertised", PublicAdvertisedPrefixArgs.builder()
///             .name("my-prefix")
///             .description("description")
///             .dnsVerificationIp("127.127.0.0")
///             .ipCidrRange("127.127.0.0/16")
///             .build());
///
///         var prefixes = new PublicDelegatedPrefix("prefixes", PublicDelegatedPrefixArgs.builder()
///             .name("my-prefix")
///             .region("us-central1")
///             .description("my description")
///             .ipCidrRange("127.127.0.0/24")
///             .parentPrefix(advertised.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advertised:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: my-prefix
///       description: description
///       dnsVerificationIp: 127.127.0.0
///       ipCidrRange: 127.127.0.0/16
///   prefixes:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: my-prefix
///       region: us-central1
///       description: my description
///       ipCidrRange: 127.127.0.0/24
///       parentPrefix: ${advertised.id}
/// ```
///
/// ### Public Delegated Prefixes Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advertised = new gcp.compute.PublicAdvertisedPrefix("advertised", {
///     name: "ipv6-pap",
///     description: "description",
///     dnsVerificationIp: "2001:db8::",
///     ipCidrRange: "2001:db8::/32",
///     pdpScope: "REGIONAL",
/// });
/// const prefix = new gcp.compute.PublicDelegatedPrefix("prefix", {
///     name: "ipv6-root-pdp",
///     description: "test-delegation-mode-pdp",
///     region: "us-west1",
///     ipCidrRange: "2001:db8::/40",
///     parentPrefix: advertised.id,
///     mode: "DELEGATION",
/// });
/// const subprefix = new gcp.compute.PublicDelegatedPrefix("subprefix", {
///     name: "ipv6-sub-pdp",
///     description: "test-forwarding-rule-mode-pdp",
///     region: "us-west1",
///     ipCidrRange: "2001:db8::/48",
///     parentPrefix: prefix.id,
///     allocatablePrefixLength: 64,
///     mode: "EXTERNAL_IPV6_FORWARDING_RULE_CREATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advertised = gcp.compute.PublicAdvertisedPrefix("advertised",
///     name="ipv6-pap",
///     description="description",
///     dns_verification_ip="2001:db8::",
///     ip_cidr_range="2001:db8::/32",
///     pdp_scope="REGIONAL")
/// prefix = gcp.compute.PublicDelegatedPrefix("prefix",
///     name="ipv6-root-pdp",
///     description="test-delegation-mode-pdp",
///     region="us-west1",
///     ip_cidr_range="2001:db8::/40",
///     parent_prefix=advertised.id,
///     mode="DELEGATION")
/// subprefix = gcp.compute.PublicDelegatedPrefix("subprefix",
///     name="ipv6-sub-pdp",
///     description="test-forwarding-rule-mode-pdp",
///     region="us-west1",
///     ip_cidr_range="2001:db8::/48",
///     parent_prefix=prefix.id,
///     allocatable_prefix_length=64,
///     mode="EXTERNAL_IPV6_FORWARDING_RULE_CREATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advertised = new Gcp.Compute.PublicAdvertisedPrefix("advertised", new()
///     {
///         Name = "ipv6-pap",
///         Description = "description",
///         DnsVerificationIp = "2001:db8::",
///         IpCidrRange = "2001:db8::/32",
///         PdpScope = "REGIONAL",
///     });
///
///     var prefix = new Gcp.Compute.PublicDelegatedPrefix("prefix", new()
///     {
///         Name = "ipv6-root-pdp",
///         Description = "test-delegation-mode-pdp",
///         Region = "us-west1",
///         IpCidrRange = "2001:db8::/40",
///         ParentPrefix = advertised.Id,
///         Mode = "DELEGATION",
///     });
///
///     var subprefix = new Gcp.Compute.PublicDelegatedPrefix("subprefix", new()
///     {
///         Name = "ipv6-sub-pdp",
///         Description = "test-forwarding-rule-mode-pdp",
///         Region = "us-west1",
///         IpCidrRange = "2001:db8::/48",
///         ParentPrefix = prefix.Id,
///         AllocatablePrefixLength = 64,
///         Mode = "EXTERNAL_IPV6_FORWARDING_RULE_CREATION",
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
/// 		advertised, err := compute.NewPublicAdvertisedPrefix(ctx, "advertised", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:              pulumi.String("ipv6-pap"),
/// 			Description:       pulumi.String("description"),
/// 			DnsVerificationIp: pulumi.String("2001:db8::"),
/// 			IpCidrRange:       pulumi.String("2001:db8::/32"),
/// 			PdpScope:          pulumi.String("REGIONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prefix, err := compute.NewPublicDelegatedPrefix(ctx, "prefix", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("ipv6-root-pdp"),
/// 			Description:  pulumi.String("test-delegation-mode-pdp"),
/// 			Region:       pulumi.String("us-west1"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/40"),
/// 			ParentPrefix: advertised.ID(),
/// 			Mode:         pulumi.String("DELEGATION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPublicDelegatedPrefix(ctx, "subprefix", &compute.PublicDelegatedPrefixArgs{
/// 			Name:                    pulumi.String("ipv6-sub-pdp"),
/// 			Description:             pulumi.String("test-forwarding-rule-mode-pdp"),
/// 			Region:                  pulumi.String("us-west1"),
/// 			IpCidrRange:             pulumi.String("2001:db8::/48"),
/// 			ParentPrefix:            prefix.ID(),
/// 			AllocatablePrefixLength: pulumi.Int(64),
/// 			Mode:                    pulumi.String("EXTERNAL_IPV6_FORWARDING_RULE_CREATION"),
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
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefix;
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefixArgs;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefix;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefixArgs;
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
///         var advertised = new PublicAdvertisedPrefix("advertised", PublicAdvertisedPrefixArgs.builder()
///             .name("ipv6-pap")
///             .description("description")
///             .dnsVerificationIp("2001:db8::")
///             .ipCidrRange("2001:db8::/32")
///             .pdpScope("REGIONAL")
///             .build());
///
///         var prefix = new PublicDelegatedPrefix("prefix", PublicDelegatedPrefixArgs.builder()
///             .name("ipv6-root-pdp")
///             .description("test-delegation-mode-pdp")
///             .region("us-west1")
///             .ipCidrRange("2001:db8::/40")
///             .parentPrefix(advertised.id())
///             .mode("DELEGATION")
///             .build());
///
///         var subprefix = new PublicDelegatedPrefix("subprefix", PublicDelegatedPrefixArgs.builder()
///             .name("ipv6-sub-pdp")
///             .description("test-forwarding-rule-mode-pdp")
///             .region("us-west1")
///             .ipCidrRange("2001:db8::/48")
///             .parentPrefix(prefix.id())
///             .allocatablePrefixLength(64)
///             .mode("EXTERNAL_IPV6_FORWARDING_RULE_CREATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advertised:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: ipv6-pap
///       description: description
///       dnsVerificationIp: '2001:db8::'
///       ipCidrRange: 2001:db8::/32
///       pdpScope: REGIONAL
///   prefix:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: ipv6-root-pdp
///       description: test-delegation-mode-pdp
///       region: us-west1
///       ipCidrRange: 2001:db8::/40
///       parentPrefix: ${advertised.id}
///       mode: DELEGATION
///   subprefix:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: ipv6-sub-pdp
///       description: test-forwarding-rule-mode-pdp
///       region: us-west1
///       ipCidrRange: 2001:db8::/48
///       parentPrefix: ${prefix.id}
///       allocatablePrefixLength: 64
///       mode: EXTERNAL_IPV6_FORWARDING_RULE_CREATION
/// ```
///
/// ### Public Delegated Prefix Ipv6 Subnet Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advertised = new gcp.compute.PublicAdvertisedPrefix("advertised", {
///     name: "ipv6-pap",
///     description: "description",
///     dnsVerificationIp: "2001:db8::",
///     ipCidrRange: "2001:db8::/32",
///     pdpScope: "REGIONAL",
/// });
/// const prefix = new gcp.compute.PublicDelegatedPrefix("prefix", {
///     name: "ipv6-root-pdp",
///     description: "test-delegation-mode-pdp",
///     region: "us-east1",
///     ipCidrRange: "2001:db8::/40",
///     parentPrefix: advertised.id,
///     mode: "DELEGATION",
/// });
/// const subprefix = new gcp.compute.PublicDelegatedPrefix("subprefix", {
///     name: "ipv6-sub-pdp",
///     description: "test-subnet-mode-pdp",
///     region: "us-east1",
///     ipCidrRange: "2001:db8::/48",
///     parentPrefix: prefix.id,
///     mode: "EXTERNAL_IPV6_SUBNETWORK_CREATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advertised = gcp.compute.PublicAdvertisedPrefix("advertised",
///     name="ipv6-pap",
///     description="description",
///     dns_verification_ip="2001:db8::",
///     ip_cidr_range="2001:db8::/32",
///     pdp_scope="REGIONAL")
/// prefix = gcp.compute.PublicDelegatedPrefix("prefix",
///     name="ipv6-root-pdp",
///     description="test-delegation-mode-pdp",
///     region="us-east1",
///     ip_cidr_range="2001:db8::/40",
///     parent_prefix=advertised.id,
///     mode="DELEGATION")
/// subprefix = gcp.compute.PublicDelegatedPrefix("subprefix",
///     name="ipv6-sub-pdp",
///     description="test-subnet-mode-pdp",
///     region="us-east1",
///     ip_cidr_range="2001:db8::/48",
///     parent_prefix=prefix.id,
///     mode="EXTERNAL_IPV6_SUBNETWORK_CREATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advertised = new Gcp.Compute.PublicAdvertisedPrefix("advertised", new()
///     {
///         Name = "ipv6-pap",
///         Description = "description",
///         DnsVerificationIp = "2001:db8::",
///         IpCidrRange = "2001:db8::/32",
///         PdpScope = "REGIONAL",
///     });
///
///     var prefix = new Gcp.Compute.PublicDelegatedPrefix("prefix", new()
///     {
///         Name = "ipv6-root-pdp",
///         Description = "test-delegation-mode-pdp",
///         Region = "us-east1",
///         IpCidrRange = "2001:db8::/40",
///         ParentPrefix = advertised.Id,
///         Mode = "DELEGATION",
///     });
///
///     var subprefix = new Gcp.Compute.PublicDelegatedPrefix("subprefix", new()
///     {
///         Name = "ipv6-sub-pdp",
///         Description = "test-subnet-mode-pdp",
///         Region = "us-east1",
///         IpCidrRange = "2001:db8::/48",
///         ParentPrefix = prefix.Id,
///         Mode = "EXTERNAL_IPV6_SUBNETWORK_CREATION",
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
/// 		advertised, err := compute.NewPublicAdvertisedPrefix(ctx, "advertised", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:              pulumi.String("ipv6-pap"),
/// 			Description:       pulumi.String("description"),
/// 			DnsVerificationIp: pulumi.String("2001:db8::"),
/// 			IpCidrRange:       pulumi.String("2001:db8::/32"),
/// 			PdpScope:          pulumi.String("REGIONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prefix, err := compute.NewPublicDelegatedPrefix(ctx, "prefix", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("ipv6-root-pdp"),
/// 			Description:  pulumi.String("test-delegation-mode-pdp"),
/// 			Region:       pulumi.String("us-east1"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/40"),
/// 			ParentPrefix: advertised.ID(),
/// 			Mode:         pulumi.String("DELEGATION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPublicDelegatedPrefix(ctx, "subprefix", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("ipv6-sub-pdp"),
/// 			Description:  pulumi.String("test-subnet-mode-pdp"),
/// 			Region:       pulumi.String("us-east1"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/48"),
/// 			ParentPrefix: prefix.ID(),
/// 			Mode:         pulumi.String("EXTERNAL_IPV6_SUBNETWORK_CREATION"),
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
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefix;
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefixArgs;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefix;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefixArgs;
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
///         var advertised = new PublicAdvertisedPrefix("advertised", PublicAdvertisedPrefixArgs.builder()
///             .name("ipv6-pap")
///             .description("description")
///             .dnsVerificationIp("2001:db8::")
///             .ipCidrRange("2001:db8::/32")
///             .pdpScope("REGIONAL")
///             .build());
///
///         var prefix = new PublicDelegatedPrefix("prefix", PublicDelegatedPrefixArgs.builder()
///             .name("ipv6-root-pdp")
///             .description("test-delegation-mode-pdp")
///             .region("us-east1")
///             .ipCidrRange("2001:db8::/40")
///             .parentPrefix(advertised.id())
///             .mode("DELEGATION")
///             .build());
///
///         var subprefix = new PublicDelegatedPrefix("subprefix", PublicDelegatedPrefixArgs.builder()
///             .name("ipv6-sub-pdp")
///             .description("test-subnet-mode-pdp")
///             .region("us-east1")
///             .ipCidrRange("2001:db8::/48")
///             .parentPrefix(prefix.id())
///             .mode("EXTERNAL_IPV6_SUBNETWORK_CREATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advertised:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: ipv6-pap
///       description: description
///       dnsVerificationIp: '2001:db8::'
///       ipCidrRange: 2001:db8::/32
///       pdpScope: REGIONAL
///   prefix:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: ipv6-root-pdp
///       description: test-delegation-mode-pdp
///       region: us-east1
///       ipCidrRange: 2001:db8::/40
///       parentPrefix: ${advertised.id}
///       mode: DELEGATION
///   subprefix:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: ipv6-sub-pdp
///       description: test-subnet-mode-pdp
///       region: us-east1
///       ipCidrRange: 2001:db8::/48
///       parentPrefix: ${prefix.id}
///       mode: EXTERNAL_IPV6_SUBNETWORK_CREATION
/// ```
///
/// ### Public Delegated Prefix Internal Ipv6 Subnet Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advertised = new gcp.compute.PublicAdvertisedPrefix("advertised", {
///     name: "ipv6-pap",
///     description: "description",
///     ipCidrRange: "2001:db8::/32",
///     pdpScope: "REGIONAL",
///     ipv6AccessType: "INTERNAL",
/// });
/// const prefix = new gcp.compute.PublicDelegatedPrefix("prefix", {
///     name: "ipv6-root-pdp",
///     description: "test-delegation-mode-pdp",
///     region: "us-east1",
///     ipCidrRange: "2001:db8::/40",
///     parentPrefix: advertised.id,
///     mode: "DELEGATION",
/// });
/// const subprefix = new gcp.compute.PublicDelegatedPrefix("subprefix", {
///     name: "ipv6-sub-pdp",
///     description: "test-subnet-mode-pdp",
///     region: "us-east1",
///     ipCidrRange: "2001:db8::/48",
///     parentPrefix: prefix.id,
///     mode: "INTERNAL_IPV6_SUBNETWORK_CREATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advertised = gcp.compute.PublicAdvertisedPrefix("advertised",
///     name="ipv6-pap",
///     description="description",
///     ip_cidr_range="2001:db8::/32",
///     pdp_scope="REGIONAL",
///     ipv6_access_type="INTERNAL")
/// prefix = gcp.compute.PublicDelegatedPrefix("prefix",
///     name="ipv6-root-pdp",
///     description="test-delegation-mode-pdp",
///     region="us-east1",
///     ip_cidr_range="2001:db8::/40",
///     parent_prefix=advertised.id,
///     mode="DELEGATION")
/// subprefix = gcp.compute.PublicDelegatedPrefix("subprefix",
///     name="ipv6-sub-pdp",
///     description="test-subnet-mode-pdp",
///     region="us-east1",
///     ip_cidr_range="2001:db8::/48",
///     parent_prefix=prefix.id,
///     mode="INTERNAL_IPV6_SUBNETWORK_CREATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advertised = new Gcp.Compute.PublicAdvertisedPrefix("advertised", new()
///     {
///         Name = "ipv6-pap",
///         Description = "description",
///         IpCidrRange = "2001:db8::/32",
///         PdpScope = "REGIONAL",
///         Ipv6AccessType = "INTERNAL",
///     });
///
///     var prefix = new Gcp.Compute.PublicDelegatedPrefix("prefix", new()
///     {
///         Name = "ipv6-root-pdp",
///         Description = "test-delegation-mode-pdp",
///         Region = "us-east1",
///         IpCidrRange = "2001:db8::/40",
///         ParentPrefix = advertised.Id,
///         Mode = "DELEGATION",
///     });
///
///     var subprefix = new Gcp.Compute.PublicDelegatedPrefix("subprefix", new()
///     {
///         Name = "ipv6-sub-pdp",
///         Description = "test-subnet-mode-pdp",
///         Region = "us-east1",
///         IpCidrRange = "2001:db8::/48",
///         ParentPrefix = prefix.Id,
///         Mode = "INTERNAL_IPV6_SUBNETWORK_CREATION",
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
/// 		advertised, err := compute.NewPublicAdvertisedPrefix(ctx, "advertised", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:           pulumi.String("ipv6-pap"),
/// 			Description:    pulumi.String("description"),
/// 			IpCidrRange:    pulumi.String("2001:db8::/32"),
/// 			PdpScope:       pulumi.String("REGIONAL"),
/// 			Ipv6AccessType: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		prefix, err := compute.NewPublicDelegatedPrefix(ctx, "prefix", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("ipv6-root-pdp"),
/// 			Description:  pulumi.String("test-delegation-mode-pdp"),
/// 			Region:       pulumi.String("us-east1"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/40"),
/// 			ParentPrefix: advertised.ID(),
/// 			Mode:         pulumi.String("DELEGATION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPublicDelegatedPrefix(ctx, "subprefix", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("ipv6-sub-pdp"),
/// 			Description:  pulumi.String("test-subnet-mode-pdp"),
/// 			Region:       pulumi.String("us-east1"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/48"),
/// 			ParentPrefix: prefix.ID(),
/// 			Mode:         pulumi.String("INTERNAL_IPV6_SUBNETWORK_CREATION"),
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
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefix;
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefixArgs;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefix;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefixArgs;
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
///         var advertised = new PublicAdvertisedPrefix("advertised", PublicAdvertisedPrefixArgs.builder()
///             .name("ipv6-pap")
///             .description("description")
///             .ipCidrRange("2001:db8::/32")
///             .pdpScope("REGIONAL")
///             .ipv6AccessType("INTERNAL")
///             .build());
///
///         var prefix = new PublicDelegatedPrefix("prefix", PublicDelegatedPrefixArgs.builder()
///             .name("ipv6-root-pdp")
///             .description("test-delegation-mode-pdp")
///             .region("us-east1")
///             .ipCidrRange("2001:db8::/40")
///             .parentPrefix(advertised.id())
///             .mode("DELEGATION")
///             .build());
///
///         var subprefix = new PublicDelegatedPrefix("subprefix", PublicDelegatedPrefixArgs.builder()
///             .name("ipv6-sub-pdp")
///             .description("test-subnet-mode-pdp")
///             .region("us-east1")
///             .ipCidrRange("2001:db8::/48")
///             .parentPrefix(prefix.id())
///             .mode("INTERNAL_IPV6_SUBNETWORK_CREATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advertised:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: ipv6-pap
///       description: description
///       ipCidrRange: 2001:db8::/32
///       pdpScope: REGIONAL
///       ipv6AccessType: INTERNAL
///   prefix:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: ipv6-root-pdp
///       description: test-delegation-mode-pdp
///       region: us-east1
///       ipCidrRange: 2001:db8::/40
///       parentPrefix: ${advertised.id}
///       mode: DELEGATION
///   subprefix:
///     type: gcp:compute:PublicDelegatedPrefix
///     properties:
///       name: ipv6-sub-pdp
///       description: test-subnet-mode-pdp
///       region: us-east1
///       ipCidrRange: 2001:db8::/48
///       parentPrefix: ${prefix.id}
///       mode: INTERNAL_IPV6_SUBNETWORK_CREATION
/// ```
///
///
/// ## Import
///
/// PublicDelegatedPrefix can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/publicDelegatedPrefixes/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PublicDelegatedPrefix can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default projects/{{project}}/regions/{{region}}/publicDelegatedPrefixes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix default {{name}}
/// ```
class PublicDelegatedPrefix extends pulumi.CustomResource {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  late final pulumi.Output<int> allocatablePrefixLength;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// (Output)
  /// Whether this PublicDelegatedSubPrefix supports enhanced IPv4 allocations.
  /// Applicable for IPv4 sub-PDPs only.
  late final pulumi.Output<bool> enableEnhancedIpv4Allocation;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  late final pulumi.Output<String> ipCidrRange;
  /// (Output)
  /// The internet access type for IPv6 Public Delegated Prefixes. Inherited
  /// from parent prefix and can be one of following:
  /// * EXTERNAL: The prefix will be announced to the internet. All children
  /// PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  late final pulumi.Output<String> ipv6AccessType;
  /// If true, the prefix will be live migrated.
  late final pulumi.Output<bool?> isLiveMigration;
  /// Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// * DELEGATION
  /// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
  /// * EXTERNAL_IPV6_SUBNETWORK_CREATION
  /// * INTERNAL_IPV6_SUBNETWORK_CREATION
  /// Possible values are: `DELEGATION`, `EXTERNAL_IPV6_FORWARDING_RULE_CREATION`, `EXTERNAL_IPV6_SUBNETWORK_CREATION`, `INTERNAL_IPV6_SUBNETWORK_CREATION`.
  late final pulumi.Output<String?> mode;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  late final pulumi.Output<String> parentPrefix;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// List of sub public delegated fixes for BYO IP functionality.
  /// Each item in this array represents a sub prefix that can be
  /// used to create addresses or further allocations.
  /// Structure is documented below.
  late final pulumi.Output<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>> publicDelegatedSubPrefixs;
  /// A region where the prefix will reside.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [PublicDelegatedPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicDelegatedPrefix]. {@macro pulumi_compute_public_delegated_prefix_public_delegated_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicDelegatedPrefix(
    String name, {
    PublicDelegatedPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatablePrefixLength = registerOutput<int>('allocatablePrefixLength');
    this.description = registerOutput<String?>('description');
    this.enableEnhancedIpv4Allocation = registerOutput<bool>('enableEnhancedIpv4Allocation');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.isLiveMigration = registerOutput<bool?>('isLiveMigration');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.parentPrefix = registerOutput<String>('parentPrefix');
    this.project = registerOutput<String>('project');
    this.publicDelegatedSubPrefixs = registerOutput<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>('publicDelegatedSubPrefixs');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [PublicDelegatedPrefix] resource's state with the given [name] and [id].
  static PublicDelegatedPrefix get(
    String name,
    pulumi.Input<String> id, {
    PublicDelegatedPrefixState? state,
  }) {
    return PublicDelegatedPrefix._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicDelegatedPrefix._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/publicDelegatedPrefix:PublicDelegatedPrefix',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatablePrefixLength = registerOutput<int>('allocatablePrefixLength');
    this.description = registerOutput<String?>('description');
    this.enableEnhancedIpv4Allocation = registerOutput<bool>('enableEnhancedIpv4Allocation');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.isLiveMigration = registerOutput<bool?>('isLiveMigration');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.parentPrefix = registerOutput<String>('parentPrefix');
    this.project = registerOutput<String>('project');
    this.publicDelegatedSubPrefixs = registerOutput<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>('publicDelegatedSubPrefixs');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
