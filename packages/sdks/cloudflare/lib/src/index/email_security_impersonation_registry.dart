import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_security_impersonation_registry_args.dart';
import 'email_security_impersonation_registry_state.dart';

/// Accepted Permissions
///
/// - `Cloud Email Security: Read`
/// - `Cloud Email Security: Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailSecurityImpersonationRegistry = new cloudflare.EmailSecurityImpersonationRegistry("example_email_security_impersonation_registry", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     email: "email",
///     isEmailRegex: true,
///     name: "name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_security_impersonation_registry = cloudflare.EmailSecurityImpersonationRegistry("example_email_security_impersonation_registry",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     email="email",
///     is_email_regex=True,
///     name="name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailSecurityImpersonationRegistry = new Cloudflare.EmailSecurityImpersonationRegistry("example_email_security_impersonation_registry", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Email = "email",
///         IsEmailRegex = true,
///         Name = "name",
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
/// 		_, err := cloudflare.NewEmailSecurityImpersonationRegistry(ctx, "example_email_security_impersonation_registry", &cloudflare.EmailSecurityImpersonationRegistryArgs{
/// 			AccountId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Email:        pulumi.String("email"),
/// 			IsEmailRegex: pulumi.Bool(true),
/// 			Name:         pulumi.String("name"),
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
/// resource "cloudflare_emailsecurityimpersonationregistry" "example_email_security_impersonation_registry" {
///   account_id     = "023e105f4ecef8ad9ca31a8372d0c353"
///   email          = "email"
///   is_email_regex = true
///   name           = "name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailSecurityImpersonationRegistry;
/// import com.pulumi.cloudflare.EmailSecurityImpersonationRegistryArgs;
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
///         var exampleEmailSecurityImpersonationRegistry = new EmailSecurityImpersonationRegistry("exampleEmailSecurityImpersonationRegistry", EmailSecurityImpersonationRegistryArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .email("email")
///             .isEmailRegex(true)
///             .name("name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailSecurityImpersonationRegistry:
///     type: cloudflare:EmailSecurityImpersonationRegistry
///     name: example_email_security_impersonation_registry
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       email: email
///       isEmailRegex: true
///       name: name
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailSecurityImpersonationRegistry:EmailSecurityImpersonationRegistry example '<account_id>/<display_name_id>'
/// ```
class EmailSecurityImpersonationRegistry extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String?> comments;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<int?> directoryId;
  late final pulumi.Output<int?> directoryNodeId;
  late final pulumi.Output<String> email;
  late final pulumi.Output<String?> externalDirectoryNodeId;
  late final pulumi.Output<bool> isEmailRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> name;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  late final pulumi.Output<String?> provenance;

  /// Creates a new [EmailSecurityImpersonationRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailSecurityImpersonationRegistry]. {@macro pulumi_index_email_security_impersonation_registry_email_security_impersonation_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailSecurityImpersonationRegistry(
    String name, {
    EmailSecurityImpersonationRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityImpersonationRegistry:EmailSecurityImpersonationRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    directoryId = registerOutput<int?>('directoryId');
    directoryNodeId = registerOutput<int?>('directoryNodeId');
    email = registerOutput<String>('email');
    externalDirectoryNodeId = registerOutput<String?>('externalDirectoryNodeId');
    isEmailRegex = registerOutput<bool>('isEmailRegex');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    provenance = registerOutput<String?>('provenance');
  }

  /// Gets an existing [EmailSecurityImpersonationRegistry] resource's state with the given [name] and [id].
  static EmailSecurityImpersonationRegistry get(
    String name,
    pulumi.Input<String> id, {
    EmailSecurityImpersonationRegistryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailSecurityImpersonationRegistry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailSecurityImpersonationRegistry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityImpersonationRegistry:EmailSecurityImpersonationRegistry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    directoryId = registerOutput<int?>('directoryId');
    directoryNodeId = registerOutput<int?>('directoryNodeId');
    email = registerOutput<String>('email');
    externalDirectoryNodeId = registerOutput<String?>('externalDirectoryNodeId');
    isEmailRegex = registerOutput<bool>('isEmailRegex');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    provenance = registerOutput<String?>('provenance');
  }

  /// Creates a typed reference to an existing [EmailSecurityImpersonationRegistry] resource.
  EmailSecurityImpersonationRegistry.reference(String urn)
    : super(
        'cloudflare:index/emailSecurityImpersonationRegistry:EmailSecurityImpersonationRegistry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    directoryId = registerOutput<int?>('directoryId');
    directoryNodeId = registerOutput<int?>('directoryNodeId');
    email = registerOutput<String>('email');
    externalDirectoryNodeId = registerOutput<String?>('externalDirectoryNodeId');
    isEmailRegex = registerOutput<bool>('isEmailRegex');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    provenance = registerOutput<String?>('provenance');
  }
}
