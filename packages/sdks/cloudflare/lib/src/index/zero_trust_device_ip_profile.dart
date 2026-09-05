import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_ip_profile_args.dart';
import 'zero_trust_device_ip_profile_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceIpProfile = new cloudflare.ZeroTrustDeviceIpProfile("example_zero_trust_device_ip_profile", {
///     accountId: "account_id",
///     match: "identity.email == \"test@cloudflare.com\"",
///     name: "IPv4 Cloudflare Source IPs",
///     precedence: 100,
///     subnetId: "b70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     description: "example comment",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_ip_profile = cloudflare.ZeroTrustDeviceIpProfile("example_zero_trust_device_ip_profile",
///     account_id="account_id",
///     match="identity.email == \"test@cloudflare.com\"",
///     name="IPv4 Cloudflare Source IPs",
///     precedence=100,
///     subnet_id="b70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///     description="example comment",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDeviceIpProfile = new Cloudflare.ZeroTrustDeviceIpProfile("example_zero_trust_device_ip_profile", new()
///     {
///         AccountId = "account_id",
///         Match = "identity.email == \"test@cloudflare.com\"",
///         Name = "IPv4 Cloudflare Source IPs",
///         Precedence = 100,
///         SubnetId = "b70ff985-a4ef-4643-bbbc-4a0ed4fc8415",
///         Description = "example comment",
///         Enabled = true,
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
/// 		_, err := cloudflare.NewZeroTrustDeviceIpProfile(ctx, "example_zero_trust_device_ip_profile", &cloudflare.ZeroTrustDeviceIpProfileArgs{
/// 			AccountId:   pulumi.String("account_id"),
/// 			Match:       pulumi.String("identity.email == \"test@cloudflare.com\""),
/// 			Name:        pulumi.String("IPv4 Cloudflare Source IPs"),
/// 			Precedence:  pulumi.Int(100),
/// 			SubnetId:    pulumi.String("b70ff985-a4ef-4643-bbbc-4a0ed4fc8415"),
/// 			Description: pulumi.String("example comment"),
/// 			Enabled:     pulumi.Bool(true),
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
/// resource "cloudflare_zerotrustdeviceipprofile" "example_zero_trust_device_ip_profile" {
///   account_id  = "account_id"
///   match       = "identity.email == \"test@cloudflare.com\""
///   name        = "IPv4 Cloudflare Source IPs"
///   precedence  = 100
///   subnet_id   = "b70ff985-a4ef-4643-bbbc-4a0ed4fc8415"
///   description = "example comment"
///   enabled     = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceIpProfile;
/// import com.pulumi.cloudflare.ZeroTrustDeviceIpProfileArgs;
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
///         var exampleZeroTrustDeviceIpProfile = new ZeroTrustDeviceIpProfile("exampleZeroTrustDeviceIpProfile", ZeroTrustDeviceIpProfileArgs.builder()
///             .accountId("account_id")
///             .match("identity.email == \"test@cloudflare.com\"")
///             .name("IPv4 Cloudflare Source IPs")
///             .precedence(100)
///             .subnetId("b70ff985-a4ef-4643-bbbc-4a0ed4fc8415")
///             .description("example comment")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceIpProfile:
///     type: cloudflare:ZeroTrustDeviceIpProfile
///     name: example_zero_trust_device_ip_profile
///     properties:
///       accountId: account_id
///       match: identity.email == "test@cloudflare.com"
///       name: IPv4 Cloudflare Source IPs
///       precedence: 100
///       subnetId: b70ff985-a4ef-4643-bbbc-4a0ed4fc8415
///       description: example comment
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDeviceIpProfile:ZeroTrustDeviceIpProfile example '<account_id>/<profile_id>'
/// ```
class ZeroTrustDeviceIpProfile extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// The RFC3339Nano timestamp when the Device IP profile was created.
  late final pulumi.Output<String> createdAt;
  /// An optional description of the Device IP profile.
  late final pulumi.Output<String?> description;
  /// Whether the Device IP profile will be applied to matching devices.
  late final pulumi.Output<bool> enabled;
  /// The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  late final pulumi.Output<String> match;
  /// A user-friendly name for the Device IP profile.
  late final pulumi.Output<String> name;
  /// The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  late final pulumi.Output<int> precedence;
  /// The ID of the Subnet.
  late final pulumi.Output<String> subnetId;
  /// The RFC3339Nano timestamp when the Device IP profile was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDeviceIpProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceIpProfile]. {@macro pulumi_index_zero_trust_device_ip_profile_zero_trust_device_ip_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceIpProfile(
    String name, {
    ZeroTrustDeviceIpProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceIpProfile:ZeroTrustDeviceIpProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    match = registerOutput<String>('match');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int>('precedence');
    subnetId = registerOutput<String>('subnetId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDeviceIpProfile] resource's state with the given [name] and [id].
  static ZeroTrustDeviceIpProfile get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceIpProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceIpProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceIpProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceIpProfile:ZeroTrustDeviceIpProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    match = registerOutput<String>('match');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int>('precedence');
    subnetId = registerOutput<String>('subnetId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceIpProfile] resource.
  ZeroTrustDeviceIpProfile.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceIpProfile:ZeroTrustDeviceIpProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    match = registerOutput<String>('match');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int>('precedence');
    subnetId = registerOutput<String>('subnetId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
