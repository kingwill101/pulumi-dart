import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_address_args.dart';
import 'email_routing_address_state.dart';

/// Accepted Permissions
///
/// - `Email Routing Addresses Read`
/// - `Email Routing Addresses Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailRoutingAddress = new cloudflare.EmailRoutingAddress("example_email_routing_address", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     email: "user@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_routing_address = cloudflare.EmailRoutingAddress("example_email_routing_address",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     email="user@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailRoutingAddress = new Cloudflare.EmailRoutingAddress("example_email_routing_address", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Email = "user@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewEmailRoutingAddress(ctx, "example_email_routing_address", &cloudflare.EmailRoutingAddressArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Email:     pulumi.String("user@example.com"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_emailroutingaddress" "example_email_routing_address" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   email      = "user@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailRoutingAddress;
/// import com.pulumi.cloudflare.EmailRoutingAddressArgs;
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
///         var exampleEmailRoutingAddress = new EmailRoutingAddress("exampleEmailRoutingAddress", EmailRoutingAddressArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .email("user@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailRoutingAddress:
///     type: cloudflare:EmailRoutingAddress
///     name: example_email_routing_address
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       email: user@example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailRoutingAddress:EmailRoutingAddress example '<account_id>/<destination_address_identifier>'
/// ```
class EmailRoutingAddress extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The date and time the destination address has been created.
  late final pulumi.Output<String> created;
  /// The contact email address of the user.
  late final pulumi.Output<String> email;
  /// The date and time the destination address was last modified.
  late final pulumi.Output<String> modified;
  /// Destination address status. Non-admin callers may only set verified addresses back to unverified; setting to verified requires admin privileges.
  /// Available values: "unverified", "verified".
  late final pulumi.Output<String?> status;
  /// Destination address tag. (Deprecated, replaced by destination address identifier)
  late final pulumi.Output<String> tag;
  /// The date and time the destination address has been verified. Null means not verified yet.
  late final pulumi.Output<String> verified;

  /// Creates a new [EmailRoutingAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailRoutingAddress]. {@macro pulumi_index_email_routing_address_email_routing_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailRoutingAddress(
    String name, {
    EmailRoutingAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingAddress:EmailRoutingAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    email = registerOutput<String>('email');
    modified = registerOutput<String>('modified');
    status = registerOutput<String?>('status');
    tag = registerOutput<String>('tag');
    verified = registerOutput<String>('verified');
  }

  /// Gets an existing [EmailRoutingAddress] resource's state with the given [name] and [id].
  static EmailRoutingAddress get(
    String name,
    pulumi.Input<String> id, {
    EmailRoutingAddressState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailRoutingAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailRoutingAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingAddress:EmailRoutingAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    email = registerOutput<String>('email');
    modified = registerOutput<String>('modified');
    status = registerOutput<String?>('status');
    tag = registerOutput<String>('tag');
    verified = registerOutput<String>('verified');
  }

  /// Creates a typed reference to an existing [EmailRoutingAddress] resource.
  EmailRoutingAddress.reference(String urn)
    : super(
        'cloudflare:index/emailRoutingAddress:EmailRoutingAddress',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    email = registerOutput<String>('email');
    modified = registerOutput<String>('modified');
    status = registerOutput<String?>('status');
    tag = registerOutput<String>('tag');
    verified = registerOutput<String>('verified');
  }
}
