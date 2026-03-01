import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// Provides a DigitalOcean domain resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new domain
/// const _default = new digitalocean.Domain("default", {
///     name: "example.com",
///     ipAddress: foo.ipv4Address,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new domain
/// default = digitalocean.Domain("default",
///     name="example.com",
///     ip_address=foo["ipv4Address"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new domain
///     var @default = new DigitalOcean.Domain("default", new()
///     {
///         Name = "example.com",
///         IpAddress = foo.Ipv4Address,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new domain
/// 		_, err := digitalocean.NewDomain(ctx, "default", &digitalocean.DomainArgs{
/// 			Name:      pulumi.String("example.com"),
/// 			IpAddress: pulumi.Any(foo.Ipv4Address),
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
/// import com.pulumi.digitalocean.Domain;
/// import com.pulumi.digitalocean.DomainArgs;
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
///         // Create a new domain
///         var default_ = new Domain("default", DomainArgs.builder()
///             .name("example.com")
///             .ipAddress(foo.ipv4Address())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new domain
///   default:
///     type: digitalocean:Domain
///     properties:
///       name: example.com
///       ipAddress: ${foo.ipv4Address}
/// ```
///
///
/// ## Import
///
/// Domains can be imported using the `domain name`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/domain:Domain mydomain mytestdomain.com
/// ```
class Domain extends pulumi.CustomResource {
  /// The uniform resource name of the domain
  late final pulumi.Output<String> domainUrn;
  /// The IP address of the domain. If specified, this IP
  /// is used to created an initial A record for the domain.
  late final pulumi.Output<String?> ipAddress;
  /// The name of the domain
  late final pulumi.Output<String> name;
  /// The TTL value of the domain
  late final pulumi.Output<int> ttl;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_index_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainUrn = registerOutput<String>('domainUrn');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.name = registerOutput<String>('name');
    this.ttl = registerOutput<int>('ttl');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainUrn = registerOutput<String>('domainUrn');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.name = registerOutput<String>('name');
    this.ttl = registerOutput<int>('ttl');
  }
}
