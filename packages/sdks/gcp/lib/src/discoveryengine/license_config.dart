import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_config_args.dart';
import 'license_config_end_date.dart';
import 'license_config_start_date.dart';
import 'license_config_state.dart';

/// License Configuration.
///
///
/// To get more information about LicenseConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.licenseConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Licenseconfig Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.LicenseConfig("basic", {
///     location: "global",
///     licenseConfigId: "license-config-id",
///     licenseCount: 50,
///     subscriptionTier: "SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
///     startDate: {
///         year: 2099,
///         month: 1,
///         day: 1,
///     },
///     endDate: {
///         year: 2100,
///         month: 1,
///         day: 1,
///     },
///     subscriptionTerm: "SUBSCRIPTION_TERM_ONE_YEAR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.LicenseConfig("basic",
///     location="global",
///     license_config_id="license-config-id",
///     license_count=50,
///     subscription_tier="SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
///     start_date={
///         "year": 2099,
///         "month": 1,
///         "day": 1,
///     },
///     end_date={
///         "year": 2100,
///         "month": 1,
///         "day": 1,
///     },
///     subscription_term="SUBSCRIPTION_TERM_ONE_YEAR")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DiscoveryEngine.LicenseConfig("basic", new()
///     {
///         Location = "global",
///         LicenseConfigId = "license-config-id",
///         LicenseCount = 50,
///         SubscriptionTier = "SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
///         StartDate = new Gcp.DiscoveryEngine.Inputs.LicenseConfigStartDateArgs
///         {
///             Year = 2099,
///             Month = 1,
///             Day = 1,
///         },
///         EndDate = new Gcp.DiscoveryEngine.Inputs.LicenseConfigEndDateArgs
///         {
///             Year = 2100,
///             Month = 1,
///             Day = 1,
///         },
///         SubscriptionTerm = "SUBSCRIPTION_TERM_ONE_YEAR",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewLicenseConfig(ctx, "basic", &discoveryengine.LicenseConfigArgs{
/// 			Location:         pulumi.String("global"),
/// 			LicenseConfigId:  pulumi.String("license-config-id"),
/// 			LicenseCount:     pulumi.Int(50),
/// 			SubscriptionTier: pulumi.String("SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT"),
/// 			StartDate: &discoveryengine.LicenseConfigStartDateArgs{
/// 				Year:  pulumi.Int(2099),
/// 				Month: pulumi.Int(1),
/// 				Day:   pulumi.Int(1),
/// 			},
/// 			EndDate: &discoveryengine.LicenseConfigEndDateArgs{
/// 				Year:  pulumi.Int(2100),
/// 				Month: pulumi.Int(1),
/// 				Day:   pulumi.Int(1),
/// 			},
/// 			SubscriptionTerm: pulumi.String("SUBSCRIPTION_TERM_ONE_YEAR"),
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
/// import com.pulumi.gcp.discoveryengine.LicenseConfig;
/// import com.pulumi.gcp.discoveryengine.LicenseConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.LicenseConfigStartDateArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.LicenseConfigEndDateArgs;
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
///         var basic = new LicenseConfig("basic", LicenseConfigArgs.builder()
///             .location("global")
///             .licenseConfigId("license-config-id")
///             .licenseCount(50)
///             .subscriptionTier("SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT")
///             .startDate(LicenseConfigStartDateArgs.builder()
///                 .year(2099)
///                 .month(1)
///                 .day(1)
///                 .build())
///             .endDate(LicenseConfigEndDateArgs.builder()
///                 .year(2100)
///                 .month(1)
///                 .day(1)
///                 .build())
///             .subscriptionTerm("SUBSCRIPTION_TERM_ONE_YEAR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:LicenseConfig
///     properties:
///       location: global
///       licenseConfigId: license-config-id
///       licenseCount: 50
///       subscriptionTier: SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT
///       startDate:
///         year: 2099
///         month: 1
///         day: 1
///       endDate:
///         year: 2100
///         month: 1
///         day: 1
///       subscriptionTerm: SUBSCRIPTION_TERM_ONE_YEAR
/// ```
///
///
/// ## Import
///
/// LicenseConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/licenseConfigs/{{license_config_id}}`
///
/// * `{{project}}/{{location}}/{{license_config_id}}`
///
/// * `{{location}}/{{license_config_id}}`
///
/// When using the `pulumi import` command, LicenseConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/licenseConfig:LicenseConfig default projects/{{project}}/locations/{{location}}/licenseConfigs/{{license_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/licenseConfig:LicenseConfig default {{project}}/{{location}}/{{license_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/licenseConfig:LicenseConfig default {{location}}/{{license_config_id}}
/// ```
class LicenseConfig extends pulumi.CustomResource {
  /// Whether the license config should be auto renewed when it reaches the end date.
  late final pulumi.Output<bool?> autoRenew;

  /// The planned end date.
  /// Structure is documented below.
  late final pulumi.Output<LicenseConfigEndDate?> endDate;

  /// Whether the license config is for free trial.
  late final pulumi.Output<bool?> freeTrial;

  /// The unique id of the license config.
  late final pulumi.Output<String> licenseConfigId;

  /// Number of licenses purchased.
  late final pulumi.Output<int> licenseCount;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the license config. Values are of the format
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The start date.
  /// Structure is documented below.
  late final pulumi.Output<LicenseConfigStartDate> startDate;

  /// Subscription term.
  /// Possible values are: `SUBSCRIPTION_TERM_UNSPECIFIED`, `SUBSCRIPTION_TERM_ONE_MONTH`, `SUBSCRIPTION_TERM_ONE_YEAR`, `SUBSCRIPTION_TERM_THREE_YEARS`, `SUBSCRIPTION_TERM_THREE_MONTHS`, `SUBSCRIPTION_TERM_FOURTEEN_DAYS`, `SUBSCRIPTION_TERM_CUSTOM`.
  late final pulumi.Output<String> subscriptionTerm;

  /// Subscription tier information for the license config.
  /// Possible values are: `SUBSCRIPTION_TIER_UNSPECIFIED`, `SUBSCRIPTION_TIER_SEARCH`, `SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT`, `SUBSCRIPTION_TIER_NOTEBOOK_LM`, `SUBSCRIPTION_TIER_FRONTLINE_WORKER`, `SUBSCRIPTION_TIER_AGENTSPACE_STARTER`, `SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS`, `SUBSCRIPTION_TIER_ENTERPRISE`, `SUBSCRIPTION_TIER_EDU`, `SUBSCRIPTION_TIER_EDU_PRO`.
  late final pulumi.Output<String> subscriptionTier;

  /// Creates a new [LicenseConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseConfig]. {@macro pulumi_discoveryengine_license_config_license_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseConfig(
    String name, {
    LicenseConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/licenseConfig:LicenseConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    endDate = registerOutput<LicenseConfigEndDate?>(
      'endDate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LicenseConfigEndDate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    freeTrial = registerOutput<bool?>('freeTrial');
    licenseConfigId = registerOutput<String>('licenseConfigId');
    licenseCount = registerOutput<int>('licenseCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    startDate = registerOutput<LicenseConfigStartDate>(
      'startDate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LicenseConfigStartDate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    subscriptionTerm = registerOutput<String>('subscriptionTerm');
    subscriptionTier = registerOutput<String>('subscriptionTier');
  }

  /// Gets an existing [LicenseConfig] resource's state with the given [name] and [id].
  static LicenseConfig get(
    String name,
    pulumi.Input<String> id, {
    LicenseConfigState? state,
  }) {
    return LicenseConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LicenseConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/licenseConfig:LicenseConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    endDate = registerOutput<LicenseConfigEndDate?>(
      'endDate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LicenseConfigEndDate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    freeTrial = registerOutput<bool?>('freeTrial');
    licenseConfigId = registerOutput<String>('licenseConfigId');
    licenseCount = registerOutput<int>('licenseCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    startDate = registerOutput<LicenseConfigStartDate>(
      'startDate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LicenseConfigStartDate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    subscriptionTerm = registerOutput<String>('subscriptionTerm');
    subscriptionTier = registerOutput<String>('subscriptionTier');
  }
}
