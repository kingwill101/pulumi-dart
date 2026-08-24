import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_posture_rule_args.dart';
import 'zero_trust_device_posture_rule_input.dart';
import 'zero_trust_device_posture_rule_match.dart';
import 'zero_trust_device_posture_rule_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDevicePostureRule = new cloudflare.ZeroTrustDevicePostureRule("example_zero_trust_device_posture_rule", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "Admin Serial Numbers",
///     type: "file",
///     description: "The rule for admin serial numbers",
///     expiration: "1h",
///     input: {
///         operatingSystem: "linux",
///         path: "/bin/cat",
///         exists: true,
///         sha256: "https://api.us-2.crowdstrike.com",
///         thumbprint: "0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e",
///     },
///     matches: [{
///         platform: "windows",
///     }],
///     schedule: "1h",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_posture_rule = cloudflare.ZeroTrustDevicePostureRule("example_zero_trust_device_posture_rule",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="Admin Serial Numbers",
///     type="file",
///     description="The rule for admin serial numbers",
///     expiration="1h",
///     input={
///         "operating_system": "linux",
///         "path": "/bin/cat",
///         "exists": True,
///         "sha256": "https://api.us-2.crowdstrike.com",
///         "thumbprint": "0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e",
///     },
///     matches=[{
///         "platform": "windows",
///     }],
///     schedule="1h")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDevicePostureRule = new Cloudflare.ZeroTrustDevicePostureRule("example_zero_trust_device_posture_rule", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "Admin Serial Numbers",
///         Type = "file",
///         Description = "The rule for admin serial numbers",
///         Expiration = "1h",
///         Input = new Cloudflare.Inputs.ZeroTrustDevicePostureRuleInputArgs
///         {
///             OperatingSystem = "linux",
///             Path = "/bin/cat",
///             Exists = true,
///             Sha256 = "https://api.us-2.crowdstrike.com",
///             Thumbprint = "0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e",
///         },
///         Matches = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDevicePostureRuleMatchArgs
///             {
///                 Platform = "windows",
///             },
///         },
///         Schedule = "1h",
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
/// 		_, err := cloudflare.NewZeroTrustDevicePostureRule(ctx, "example_zero_trust_device_posture_rule", &cloudflare.ZeroTrustDevicePostureRuleArgs{
/// 			AccountId:   pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:        pulumi.String("Admin Serial Numbers"),
/// 			Type:        pulumi.String("file"),
/// 			Description: pulumi.String("The rule for admin serial numbers"),
/// 			Expiration:  pulumi.String("1h"),
/// 			Input: &cloudflare.ZeroTrustDevicePostureRuleInputTypeArgs{
/// 				OperatingSystem: pulumi.String("linux"),
/// 				Path:            pulumi.String("/bin/cat"),
/// 				Exists:          pulumi.Bool(true),
/// 				Sha256:          pulumi.String("https://api.us-2.crowdstrike.com"),
/// 				Thumbprint:      pulumi.String("0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e"),
/// 			},
/// 			Matches: cloudflare.ZeroTrustDevicePostureRuleMatchArray{
/// 				&cloudflare.ZeroTrustDevicePostureRuleMatchArgs{
/// 					Platform: pulumi.String("windows"),
/// 				},
/// 			},
/// 			Schedule: pulumi.String("1h"),
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
/// resource "cloudflare_zerotrustdeviceposturerule" "example_zero_trust_device_posture_rule" {
///   account_id  = "699d98642c564d2e855e9661899b7252"
///   name        = "Admin Serial Numbers"
///   type        = "file"
///   description = "The rule for admin serial numbers"
///   expiration  = "1h"
///   input = {
///     operating_system = "linux"
///     path             = "/bin/cat"
///     exists           = true
///     sha256           = "https://api.us-2.crowdstrike.com"
///     thumbprint       = "0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e"
///   }
///   matches {
///     platform = "windows"
///   }
///   schedule = "1h"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDevicePostureRule;
/// import com.pulumi.cloudflare.ZeroTrustDevicePostureRuleArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDevicePostureRuleInputArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDevicePostureRuleMatchArgs;
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
///         var exampleZeroTrustDevicePostureRule = new ZeroTrustDevicePostureRule("exampleZeroTrustDevicePostureRule", ZeroTrustDevicePostureRuleArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("Admin Serial Numbers")
///             .type("file")
///             .description("The rule for admin serial numbers")
///             .expiration("1h")
///             .input(ZeroTrustDevicePostureRuleInputArgs.builder()
///                 .operatingSystem("linux")
///                 .path("/bin/cat")
///                 .exists(true)
///                 .sha256("https://api.us-2.crowdstrike.com")
///                 .thumbprint("0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e")
///                 .build())
///             .matches(ZeroTrustDevicePostureRuleMatchArgs.builder()
///                 .platform("windows")
///                 .build())
///             .schedule("1h")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDevicePostureRule:
///     type: cloudflare:ZeroTrustDevicePostureRule
///     name: example_zero_trust_device_posture_rule
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: Admin Serial Numbers
///       type: file
///       description: The rule for admin serial numbers
///       expiration: 1h
///       input:
///         operatingSystem: linux
///         path: /bin/cat
///         exists: true
///         sha256: https://api.us-2.crowdstrike.com
///         thumbprint: 0aabab210bdb998e9cf45da2c9ce352977ab531c681b74cf1e487be1bbe9fe6e
///       matches:
///         - platform: windows
///       schedule: 1h
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDevicePostureRule:ZeroTrustDevicePostureRule example '<account_id>/<rule_id>'
/// ```
class ZeroTrustDevicePostureRule extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// The description of the device posture rule.
  late final pulumi.Output<String> description;
  /// Whether the rule is enabled. This is a computed, read-only value. It is false for deprecated Kolide posture rules that still use the issueCount input, and true otherwise.
  late final pulumi.Output<bool> enabled;
  /// Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  late final pulumi.Output<String?> expiration;
  /// The value to be checked against.
  late final pulumi.Output<ZeroTrustDevicePostureRuleInput?> input;
  /// The conditions that the client must match to run the rule.
  late final pulumi.Output<List<ZeroTrustDevicePostureRuleMatch>?> matches;
  /// The name of the device posture rule.
  late final pulumi.Output<String?> name;
  /// Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  late final pulumi.Output<String?> schedule;
  /// The type of device posture rule.
  /// Available values: "file", "application", "tanium", "gateway", "warp", "disk*encryption", "serial*number", "sentinelone", "carbonblack", "firewall", "os*version", "domain*joined", "client*certificate", "client*certificate*v2", "antivirus", "unique*client*id", "kolide", "tanium*s2s", "crowdstrike*s2s", "intune", "workspace*one", "sentinelone*s2s", "custom*s2s".
  late final pulumi.Output<String> type;

  /// Creates a new [ZeroTrustDevicePostureRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDevicePostureRule]. {@macro pulumi_index_zero_trust_device_posture_rule_zero_trust_device_posture_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDevicePostureRule(
    String name, {
    ZeroTrustDevicePostureRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDevicePostureRule:ZeroTrustDevicePostureRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expiration = registerOutput<String?>('expiration');
    input = registerOutput<ZeroTrustDevicePostureRuleInput?>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDevicePostureRuleInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matches = registerOutput<List<ZeroTrustDevicePostureRuleMatch>?>('matches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDevicePostureRuleMatch>(guardedValue, (value) => ZeroTrustDevicePostureRuleMatch.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    schedule = registerOutput<String?>('schedule');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ZeroTrustDevicePostureRule] resource's state with the given [name] and [id].
  static ZeroTrustDevicePostureRule get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDevicePostureRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDevicePostureRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDevicePostureRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDevicePostureRule:ZeroTrustDevicePostureRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expiration = registerOutput<String?>('expiration');
    input = registerOutput<ZeroTrustDevicePostureRuleInput?>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDevicePostureRuleInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matches = registerOutput<List<ZeroTrustDevicePostureRuleMatch>?>('matches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDevicePostureRuleMatch>(guardedValue, (value) => ZeroTrustDevicePostureRuleMatch.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    schedule = registerOutput<String?>('schedule');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ZeroTrustDevicePostureRule] resource.
  ZeroTrustDevicePostureRule.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDevicePostureRule:ZeroTrustDevicePostureRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    expiration = registerOutput<String?>('expiration');
    input = registerOutput<ZeroTrustDevicePostureRuleInput?>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDevicePostureRuleInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    matches = registerOutput<List<ZeroTrustDevicePostureRuleMatch>?>('matches', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDevicePostureRuleMatch>(guardedValue, (value) => ZeroTrustDevicePostureRuleMatch.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String?>('name');
    schedule = registerOutput<String?>('schedule');
    type = registerOutput<String>('type');
  }
}
