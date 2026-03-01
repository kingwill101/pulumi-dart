import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_advertised_prefix_args.dart';
import 'public_advertised_prefix_state.dart';

/// Represents a PublicAdvertisedPrefix for use with bring your own IP addresses (BYOIP).
///
///
/// To get more information about PublicAdvertisedPrefix, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes)
/// * How-to Guides
/// * [Using bring your own IP](https://cloud.google.com/vpc/docs/using-bring-your-own-ip)
///
/// ## Example Usage
///
/// ### Public Advertised Prefixes Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prefixes = new gcp.compute.PublicAdvertisedPrefix("prefixes", {
///     name: "my-prefix",
///     description: "description",
///     dnsVerificationIp: "127.127.0.0",
///     ipCidrRange: "127.127.0.0/16",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prefixes = gcp.compute.PublicAdvertisedPrefix("prefixes",
///     name="my-prefix",
///     description="description",
///     dns_verification_ip="127.127.0.0",
///     ip_cidr_range="127.127.0.0/16")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixes = new Gcp.Compute.PublicAdvertisedPrefix("prefixes", new()
///     {
///         Name = "my-prefix",
///         Description = "description",
///         DnsVerificationIp = "127.127.0.0",
///         IpCidrRange = "127.127.0.0/16",
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
/// 		_, err := compute.NewPublicAdvertisedPrefix(ctx, "prefixes", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:              pulumi.String("my-prefix"),
/// 			Description:       pulumi.String("description"),
/// 			DnsVerificationIp: pulumi.String("127.127.0.0"),
/// 			IpCidrRange:       pulumi.String("127.127.0.0/16"),
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
///         var prefixes = new PublicAdvertisedPrefix("prefixes", PublicAdvertisedPrefixArgs.builder()
///             .name("my-prefix")
///             .description("description")
///             .dnsVerificationIp("127.127.0.0")
///             .ipCidrRange("127.127.0.0/16")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prefixes:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: my-prefix
///       description: description
///       dnsVerificationIp: 127.127.0.0
///       ipCidrRange: 127.127.0.0/16
/// ```
///
/// ### Public Advertised Prefixes Pdp Scope
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prefixes = new gcp.compute.PublicAdvertisedPrefix("prefixes", {
///     name: "my-pap",
///     description: "description",
///     dnsVerificationIp: "127.127.0.0",
///     ipCidrRange: "127.127.0.0/16",
///     pdpScope: "REGIONAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prefixes = gcp.compute.PublicAdvertisedPrefix("prefixes",
///     name="my-pap",
///     description="description",
///     dns_verification_ip="127.127.0.0",
///     ip_cidr_range="127.127.0.0/16",
///     pdp_scope="REGIONAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixes = new Gcp.Compute.PublicAdvertisedPrefix("prefixes", new()
///     {
///         Name = "my-pap",
///         Description = "description",
///         DnsVerificationIp = "127.127.0.0",
///         IpCidrRange = "127.127.0.0/16",
///         PdpScope = "REGIONAL",
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
/// 		_, err := compute.NewPublicAdvertisedPrefix(ctx, "prefixes", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:              pulumi.String("my-pap"),
/// 			Description:       pulumi.String("description"),
/// 			DnsVerificationIp: pulumi.String("127.127.0.0"),
/// 			IpCidrRange:       pulumi.String("127.127.0.0/16"),
/// 			PdpScope:          pulumi.String("REGIONAL"),
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
///         var prefixes = new PublicAdvertisedPrefix("prefixes", PublicAdvertisedPrefixArgs.builder()
///             .name("my-pap")
///             .description("description")
///             .dnsVerificationIp("127.127.0.0")
///             .ipCidrRange("127.127.0.0/16")
///             .pdpScope("REGIONAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prefixes:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: my-pap
///       description: description
///       dnsVerificationIp: 127.127.0.0
///       ipCidrRange: 127.127.0.0/16
///       pdpScope: REGIONAL
/// ```
///
/// ### Public Advertised Prefixes Ipv6 Access Type
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prefixes = new gcp.compute.PublicAdvertisedPrefix("prefixes", {
///     name: "my-pap",
///     description: "description",
///     ipCidrRange: "2001:db8::/32",
///     pdpScope: "REGIONAL",
///     ipv6AccessType: "INTERNAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prefixes = gcp.compute.PublicAdvertisedPrefix("prefixes",
///     name="my-pap",
///     description="description",
///     ip_cidr_range="2001:db8::/32",
///     pdp_scope="REGIONAL",
///     ipv6_access_type="INTERNAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixes = new Gcp.Compute.PublicAdvertisedPrefix("prefixes", new()
///     {
///         Name = "my-pap",
///         Description = "description",
///         IpCidrRange = "2001:db8::/32",
///         PdpScope = "REGIONAL",
///         Ipv6AccessType = "INTERNAL",
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
/// 		_, err := compute.NewPublicAdvertisedPrefix(ctx, "prefixes", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:           pulumi.String("my-pap"),
/// 			Description:    pulumi.String("description"),
/// 			IpCidrRange:    pulumi.String("2001:db8::/32"),
/// 			PdpScope:       pulumi.String("REGIONAL"),
/// 			Ipv6AccessType: pulumi.String("INTERNAL"),
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
///         var prefixes = new PublicAdvertisedPrefix("prefixes", PublicAdvertisedPrefixArgs.builder()
///             .name("my-pap")
///             .description("description")
///             .ipCidrRange("2001:db8::/32")
///             .pdpScope("REGIONAL")
///             .ipv6AccessType("INTERNAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prefixes:
///     type: gcp:compute:PublicAdvertisedPrefix
///     properties:
///       name: my-pap
///       description: description
///       ipCidrRange: 2001:db8::/32
///       pdpScope: REGIONAL
///       ipv6AccessType: INTERNAL
/// ```
///
///
/// ## Import
///
/// PublicAdvertisedPrefix can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/publicAdvertisedPrefixes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PublicAdvertisedPrefix can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix default projects/{{project}}/global/publicAdvertisedPrefixes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix default {{name}}
/// ```
class PublicAdvertisedPrefix extends pulumi.CustomResource {
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// The IPv4 address to be used for reverse DNS verification.
  late final pulumi.Output<String?> dnsVerificationIp;
  /// The address range, in CIDR format, represented by this public advertised prefix.
  late final pulumi.Output<String> ipCidrRange;
  /// The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// set to one of following:
  /// * EXTERNAL: Default access type. The prefix will be announced to the
  /// internet. All children PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final pulumi.Output<String> ipv6AccessType;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Specifies how child public delegated prefix will be scoped. pdpScope
  /// must be one of: GLOBAL, REGIONAL
  /// * REGIONAL: The public delegated prefix is regional only. The
  /// provisioning will take a few minutes.
  /// * GLOBAL: The public delegated prefix is global only. The provisioning
  /// will take ~4 weeks.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  late final pulumi.Output<String?> pdpScope;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Output Only. The shared secret to be used for reverse DNS verification.
  late final pulumi.Output<String> sharedSecret;

  /// Creates a new [PublicAdvertisedPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicAdvertisedPrefix]. {@macro pulumi_compute_public_advertised_prefix_public_advertised_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicAdvertisedPrefix(
    String name, {
    PublicAdvertisedPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.dnsVerificationIp = registerOutput<String?>('dnsVerificationIp');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.name = registerOutput<String>('name');
    this.pdpScope = registerOutput<String?>('pdpScope');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sharedSecret = registerOutput<String>('sharedSecret');
  }

  /// Gets an existing [PublicAdvertisedPrefix] resource's state with the given [name] and [id].
  static PublicAdvertisedPrefix get(
    String name,
    pulumi.Input<String> id, {
    PublicAdvertisedPrefixState? state,
  }) {
    return PublicAdvertisedPrefix._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicAdvertisedPrefix._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/publicAdvertisedPrefix:PublicAdvertisedPrefix',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.dnsVerificationIp = registerOutput<String?>('dnsVerificationIp');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.ipv6AccessType = registerOutput<String>('ipv6AccessType');
    this.name = registerOutput<String>('name');
    this.pdpScope = registerOutput<String?>('pdpScope');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sharedSecret = registerOutput<String>('sharedSecret');
  }
}
