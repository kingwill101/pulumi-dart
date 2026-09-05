import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_domain_args.dart';
import 'pages_domain_state.dart';
import 'pages_domain_validation_data.dart';
import 'pages_domain_verification_data.dart';

/// Accepted Permissions
///
/// - `Pages Read`
/// - `Pages Write`
///
/// &gt; A DNS record for the domain is not automatically created. You need to create
/// a `cloudflareRecord` resource for the domain you want to use.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const examplePagesDomain = new cloudflare.PagesDomain("example_pages_domain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     projectName: "this-is-my-project-01",
///     name: "this-is-my-domain-01.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_pages_domain = cloudflare.PagesDomain("example_pages_domain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     project_name="this-is-my-project-01",
///     name="this-is-my-domain-01.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePagesDomain = new Cloudflare.PagesDomain("example_pages_domain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ProjectName = "this-is-my-project-01",
///         Name = "this-is-my-domain-01.com",
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
/// 		_, err := cloudflare.NewPagesDomain(ctx, "example_pages_domain", &cloudflare.PagesDomainArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ProjectName: pulumi.String("this-is-my-project-01"),
/// 			Name:        pulumi.String("this-is-my-domain-01.com"),
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
/// resource "cloudflare_pagesdomain" "example_pages_domain" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   project_name = "this-is-my-project-01"
///   name         = "this-is-my-domain-01.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.PagesDomain;
/// import com.pulumi.cloudflare.PagesDomainArgs;
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
///         var examplePagesDomain = new PagesDomain("examplePagesDomain", PagesDomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .projectName("this-is-my-project-01")
///             .name("this-is-my-domain-01.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePagesDomain:
///     type: cloudflare:PagesDomain
///     name: example_pages_domain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       projectName: this-is-my-project-01
///       name: this-is-my-domain-01.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/pagesDomain:PagesDomain example '<account_id>/<project_name>/<domain_name>'
/// ```
class PagesDomain extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Available values: "google", "letsEncrypt".
  late final pulumi.Output<String> certificateAuthority;
  late final pulumi.Output<String> createdOn;
  late final pulumi.Output<String> domainId;
  /// The domain name.
  late final pulumi.Output<String> name;
  /// Name of the project.
  late final pulumi.Output<String> projectName;
  /// Available values: "initializing", "pending", "active", "deactivated", "blocked", "error".
  late final pulumi.Output<String> status;
  late final pulumi.Output<PagesDomainValidationData> validationData;
  late final pulumi.Output<PagesDomainVerificationData> verificationData;
  late final pulumi.Output<String> zoneTag;

  /// Creates a new [PagesDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PagesDomain]. {@macro pulumi_index_pages_domain_pages_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PagesDomain(
    String name, {
    PagesDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pagesDomain:PagesDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    certificateAuthority = registerOutput<String>('certificateAuthority');
    createdOn = registerOutput<String>('createdOn');
    domainId = registerOutput<String>('domainId');
    this.name = registerOutput<String>('name');
    projectName = registerOutput<String>('projectName');
    status = registerOutput<String>('status');
    validationData = registerOutput<PagesDomainValidationData>('validationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesDomainValidationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verificationData = registerOutput<PagesDomainVerificationData>('verificationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesDomainVerificationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneTag = registerOutput<String>('zoneTag');
  }

  /// Gets an existing [PagesDomain] resource's state with the given [name] and [id].
  static PagesDomain get(
    String name,
    pulumi.Input<String> id, {
    PagesDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PagesDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PagesDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pagesDomain:PagesDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    certificateAuthority = registerOutput<String>('certificateAuthority');
    createdOn = registerOutput<String>('createdOn');
    domainId = registerOutput<String>('domainId');
    this.name = registerOutput<String>('name');
    projectName = registerOutput<String>('projectName');
    status = registerOutput<String>('status');
    validationData = registerOutput<PagesDomainValidationData>('validationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesDomainValidationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verificationData = registerOutput<PagesDomainVerificationData>('verificationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesDomainVerificationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneTag = registerOutput<String>('zoneTag');
  }

  /// Creates a typed reference to an existing [PagesDomain] resource.
  PagesDomain.reference(String urn)
    : super(
        'cloudflare:index/pagesDomain:PagesDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    certificateAuthority = registerOutput<String>('certificateAuthority');
    createdOn = registerOutput<String>('createdOn');
    domainId = registerOutput<String>('domainId');
    this.name = registerOutput<String>('name');
    projectName = registerOutput<String>('projectName');
    status = registerOutput<String>('status');
    validationData = registerOutput<PagesDomainValidationData>('validationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesDomainValidationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verificationData = registerOutput<PagesDomainVerificationData>('verificationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PagesDomainVerificationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneTag = registerOutput<String>('zoneTag');
  }
}
