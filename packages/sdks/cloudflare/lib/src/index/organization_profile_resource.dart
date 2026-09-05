import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_profile_args.dart';
import 'organization_profile_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleOrganizationProfile = new cloudflare.OrganizationProfile("example_organization_profile", {
///     organizationId: "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8",
///     businessAddress: "business_address",
///     businessEmail: "business_email",
///     businessName: "business_name",
///     businessPhone: "business_phone",
///     externalMetadata: "external_metadata",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_organization_profile = cloudflare.OrganizationProfile("example_organization_profile",
///     organization_id="a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8",
///     business_address="business_address",
///     business_email="business_email",
///     business_name="business_name",
///     business_phone="business_phone",
///     external_metadata="external_metadata")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOrganizationProfile = new Cloudflare.OrganizationProfile("example_organization_profile", new()
///     {
///         OrganizationId = "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8",
///         BusinessAddress = "business_address",
///         BusinessEmail = "business_email",
///         BusinessName = "business_name",
///         BusinessPhone = "business_phone",
///         ExternalMetadata = "external_metadata",
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
/// 		_, err := cloudflare.NewOrganizationProfile(ctx, "example_organization_profile", &cloudflare.OrganizationProfileArgs{
/// 			OrganizationId:   pulumi.String("a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8"),
/// 			BusinessAddress:  pulumi.String("business_address"),
/// 			BusinessEmail:    pulumi.String("business_email"),
/// 			BusinessName:     pulumi.String("business_name"),
/// 			BusinessPhone:    pulumi.String("business_phone"),
/// 			ExternalMetadata: pulumi.String("external_metadata"),
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
/// resource "cloudflare_organizationprofile" "example_organization_profile" {
///   organization_id   = "a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8"
///   business_address  = "business_address"
///   business_email    = "business_email"
///   business_name     = "business_name"
///   business_phone    = "business_phone"
///   external_metadata = "external_metadata"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.OrganizationProfile;
/// import com.pulumi.cloudflare.OrganizationProfileArgs;
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
///         var exampleOrganizationProfile = new OrganizationProfile("exampleOrganizationProfile", OrganizationProfileArgs.builder()
///             .organizationId("a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8")
///             .businessAddress("business_address")
///             .businessEmail("business_email")
///             .businessName("business_name")
///             .businessPhone("business_phone")
///             .externalMetadata("external_metadata")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOrganizationProfile:
///     type: cloudflare:OrganizationProfile
///     name: example_organization_profile
///     properties:
///       organizationId: a7b9c3d2e8f4g1h5i6j0k9l2m3n7o4p8
///       businessAddress: business_address
///       businessEmail: business_email
///       businessName: business_name
///       businessPhone: business_phone
///       externalMetadata: external_metadata
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class OrganizationProfileResource extends pulumi.CustomResource {
  late final pulumi.Output<String> businessAddress;
  late final pulumi.Output<String> businessEmail;
  late final pulumi.Output<String> businessName;
  late final pulumi.Output<String> businessPhone;
  late final pulumi.Output<String> externalMetadata;
  late final pulumi.Output<String> organizationId;

  /// Creates a new [OrganizationProfileResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationProfileResource]. {@macro pulumi_index_organization_profile_organization_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationProfileResource(
    String name, {
    OrganizationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/organizationProfile:OrganizationProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    businessAddress = registerOutput<String>('businessAddress');
    businessEmail = registerOutput<String>('businessEmail');
    businessName = registerOutput<String>('businessName');
    businessPhone = registerOutput<String>('businessPhone');
    externalMetadata = registerOutput<String>('externalMetadata');
    organizationId = registerOutput<String>('organizationId');
  }

  /// Gets an existing [OrganizationProfileResource] resource's state with the given [name] and [id].
  static OrganizationProfileResource get(
    String name,
    pulumi.Input<String> id, {
    OrganizationProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationProfileResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationProfileResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/organizationProfile:OrganizationProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    businessAddress = registerOutput<String>('businessAddress');
    businessEmail = registerOutput<String>('businessEmail');
    businessName = registerOutput<String>('businessName');
    businessPhone = registerOutput<String>('businessPhone');
    externalMetadata = registerOutput<String>('externalMetadata');
    organizationId = registerOutput<String>('organizationId');
  }

  /// Creates a typed reference to an existing [OrganizationProfileResource] resource.
  OrganizationProfileResource.reference(String urn)
    : super(
        'cloudflare:index/organizationProfile:OrganizationProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    businessAddress = registerOutput<String>('businessAddress');
    businessEmail = registerOutput<String>('businessEmail');
    businessName = registerOutput<String>('businessName');
    businessPhone = registerOutput<String>('businessPhone');
    externalMetadata = registerOutput<String>('externalMetadata');
    organizationId = registerOutput<String>('organizationId');
  }
}
