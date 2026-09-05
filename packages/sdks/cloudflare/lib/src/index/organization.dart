import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_args.dart';
import 'organization_meta.dart';
import 'organization_parent.dart';
import 'organization_profile.dart';
import 'organization_state.dart';

/// Accepted Permissions
///
/// - `User Details Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleOrganization = new cloudflare.Organization("example_organization", {
///     name: "name",
///     parent: {
///         id: "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8",
///     },
///     profile: {
///         businessAddress: "business_address",
///         businessEmail: "business_email",
///         businessName: "business_name",
///         businessPhone: "business_phone",
///         externalMetadata: "external_metadata",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_organization = cloudflare.Organization("example_organization",
///     name="name",
///     parent={
///         "id": "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8",
///     },
///     profile={
///         "business_address": "business_address",
///         "business_email": "business_email",
///         "business_name": "business_name",
///         "business_phone": "business_phone",
///         "external_metadata": "external_metadata",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOrganization = new Cloudflare.Organization("example_organization", new()
///     {
///         Name = "name",
///         Parent = new Cloudflare.Inputs.OrganizationParentArgs
///         {
///             Id = "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8",
///         },
///         Profile = new Cloudflare.Inputs.OrganizationProfileArgs
///         {
///             BusinessAddress = "business_address",
///             BusinessEmail = "business_email",
///             BusinessName = "business_name",
///             BusinessPhone = "business_phone",
///             ExternalMetadata = "external_metadata",
///         },
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
/// 		_, err := cloudflare.NewOrganization(ctx, "example_organization", &cloudflare.OrganizationArgs{
/// 			Name: pulumi.String("name"),
/// 			Parent: &cloudflare.OrganizationParentArgs{
/// 				Id: pulumi.String("a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8"),
/// 			},
/// 			Profile: &cloudflare.OrganizationProfileTypeArgs{
/// 				BusinessAddress:  pulumi.String("business_address"),
/// 				BusinessEmail:    pulumi.String("business_email"),
/// 				BusinessName:     pulumi.String("business_name"),
/// 				BusinessPhone:    pulumi.String("business_phone"),
/// 				ExternalMetadata: pulumi.String("external_metadata"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_organization" "example_organization" {
///   name = "name"
///   parent = {
///     id = "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8"
///   }
///   profile = {
///     business_address  = "business_address"
///     business_email    = "business_email"
///     business_name     = "business_name"
///     business_phone    = "business_phone"
///     external_metadata = "external_metadata"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Organization;
/// import com.pulumi.cloudflare.OrganizationArgs;
/// import com.pulumi.cloudflare.inputs.OrganizationParentArgs;
/// import com.pulumi.cloudflare.inputs.OrganizationProfileArgs;
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
///         var exampleOrganization = new Organization("exampleOrganization", OrganizationArgs.builder()
///             .name("name")
///             .parent(OrganizationParentArgs.builder()
///                 .id("a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8")
///                 .build())
///             .profile(OrganizationProfileArgs.builder()
///                 .businessAddress("business_address")
///                 .businessEmail("business_email")
///                 .businessName("business_name")
///                 .businessPhone("business_phone")
///                 .externalMetadata("external_metadata")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOrganization:
///     type: cloudflare:Organization
///     name: example_organization
///     properties:
///       name: name
///       parent:
///         id: a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8
///       profile:
///         businessAddress: business_address
///         businessEmail: business_email
///         businessName: business_name
///         businessPhone: business_phone
///         externalMetadata: external_metadata
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/organization:Organization example '<organization_id>'
/// ```
class Organization extends pulumi.CustomResource {
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<OrganizationMeta> meta;
  late final pulumi.Output<String> name;
  late final pulumi.Output<OrganizationParent> parent;
  late final pulumi.Output<OrganizationProfile?> profile;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_index_organization_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/organization:Organization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    meta = registerOutput<OrganizationMeta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<OrganizationParent>('parent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profile = registerOutput<OrganizationProfile?>('profile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Organization] resource's state with the given [name] and [id].
  static Organization get(
    String name,
    pulumi.Input<String> id, {
    OrganizationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Organization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Organization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/organization:Organization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    meta = registerOutput<OrganizationMeta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<OrganizationParent>('parent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profile = registerOutput<OrganizationProfile?>('profile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Organization] resource.
  Organization.reference(String urn)
    : super(
        'cloudflare:index/organization:Organization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    meta = registerOutput<OrganizationMeta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<OrganizationParent>('parent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationParent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profile = registerOutput<OrganizationProfile?>('profile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
