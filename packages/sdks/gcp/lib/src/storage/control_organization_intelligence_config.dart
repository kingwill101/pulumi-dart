import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_organization_intelligence_config_args.dart';
import 'control_organization_intelligence_config_effective_intelligence_config.dart';
import 'control_organization_intelligence_config_filter.dart';
import 'control_organization_intelligence_config_state.dart';
import 'control_organization_intelligence_config_trial_config.dart';

/// The Organization Storage Intelligence Config resource represents GCS Storage Intelligence operating on individual GCP organization. Storage Intelligence Config is a singleton resource and individual instance exists on each GCP organization.
///
/// Storage Intelligence is for Storage Admins to manage GCP storage assets at scale for performance, cost, security & compliance.
///
///
///
/// &gt; **Warning:** Storage Intelligence is a singleton resource which cannot be created or deleted. A single instance of Storage Intelligence exist for each GCP Organization. Terraform does not create or destroy this resource.
/// Terraform resource creation for this resource is simply an update operation on existing resource with specified properties, absence of any optional field in the create operation will result in clearance of that field. Terraform deletion won't have any effect on this resource rather it will only remove it from the state file.
///
/// ## Example Usage
///
/// ### Storage Control Organization Intelligence Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.ControlOrganizationIntelligenceConfig("example", {
///     name: "12345678",
///     editionConfig: "STANDARD",
///     filter: {
///         excludedCloudStorageBuckets: {
///             bucketIdRegexes: [
///                 "test-id-1*",
///                 "test-id-2*",
///             ],
///         },
///         includedCloudStorageLocations: {
///             locations: [
///                 "test-location-1*",
///                 "test-locations-2*",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.ControlOrganizationIntelligenceConfig("example",
///     name="12345678",
///     edition_config="STANDARD",
///     filter={
///         "excluded_cloud_storage_buckets": {
///             "bucket_id_regexes": [
///                 "test-id-1*",
///                 "test-id-2*",
///             ],
///         },
///         "included_cloud_storage_locations": {
///             "locations": [
///                 "test-location-1*",
///                 "test-locations-2*",
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Storage.ControlOrganizationIntelligenceConfig("example", new()
///     {
///         Name = "12345678",
///         EditionConfig = "STANDARD",
///         Filter = new Gcp.Storage.Inputs.ControlOrganizationIntelligenceConfigFilterArgs
///         {
///             ExcludedCloudStorageBuckets = new Gcp.Storage.Inputs.ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsArgs
///             {
///                 BucketIdRegexes = new[]
///                 {
///                     "test-id-1*",
///                     "test-id-2*",
///                 },
///             },
///             IncludedCloudStorageLocations = new Gcp.Storage.Inputs.ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocationsArgs
///             {
///                 Locations = new[]
///                 {
///                     "test-location-1*",
///                     "test-locations-2*",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewControlOrganizationIntelligenceConfig(ctx, "example", &storage.ControlOrganizationIntelligenceConfigArgs{
/// 			Name:          pulumi.String("12345678"),
/// 			EditionConfig: pulumi.String("STANDARD"),
/// 			Filter: &storage.ControlOrganizationIntelligenceConfigFilterArgs{
/// 				ExcludedCloudStorageBuckets: &storage.ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsArgs{
/// 					BucketIdRegexes: pulumi.StringArray{
/// 						pulumi.String("test-id-1*"),
/// 						pulumi.String("test-id-2*"),
/// 					},
/// 				},
/// 				IncludedCloudStorageLocations: &storage.ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocationsArgs{
/// 					Locations: pulumi.StringArray{
/// 						pulumi.String("test-location-1*"),
/// 						pulumi.String("test-locations-2*"),
/// 					},
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_controlorganizationintelligenceconfig" "example" {
///   name           = "12345678"
///   edition_config = "STANDARD"
///   filter = {
///     excluded_cloud_storage_buckets = {
///       bucket_id_regexes = ["test-id-1*", "test-id-2*"]
///     }
///     included_cloud_storage_locations = {
///       locations = ["test-location-1*", "test-locations-2*"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.ControlOrganizationIntelligenceConfig;
/// import com.pulumi.gcp.storage.ControlOrganizationIntelligenceConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlOrganizationIntelligenceConfigFilterArgs;
/// import com.pulumi.gcp.storage.inputs.ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsArgs;
/// import com.pulumi.gcp.storage.inputs.ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocationsArgs;
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
///         var example = new ControlOrganizationIntelligenceConfig("example", ControlOrganizationIntelligenceConfigArgs.builder()
///             .name("12345678")
///             .editionConfig("STANDARD")
///             .filter(ControlOrganizationIntelligenceConfigFilterArgs.builder()
///                 .excludedCloudStorageBuckets(ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucketsArgs.builder()
///                     .bucketIdRegexes(
///                         "test-id-1*",
///                         "test-id-2*")
///                     .build())
///                 .includedCloudStorageLocations(ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocationsArgs.builder()
///                     .locations(
///                         "test-location-1*",
///                         "test-locations-2*")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:storage:ControlOrganizationIntelligenceConfig
///     properties:
///       name: '12345678'
///       editionConfig: STANDARD
///       filter:
///         excludedCloudStorageBuckets:
///           bucketIdRegexes:
///             - test-id-1*
///             - test-id-2*
///         includedCloudStorageLocations:
///           locations:
///             - test-location-1*
///             - test-locations-2*
/// ```
///
///
/// ## Import
///
/// OrganizationIntelligenceConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}/locations/global/intelligenceConfig`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, OrganizationIntelligenceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig default organizations/{{name}}/locations/global/intelligenceConfig
/// $ pulumi import gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig default {{name}}
/// ```
class ControlOrganizationIntelligenceConfig extends pulumi.CustomResource {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  late final pulumi.Output<String> editionConfig;
  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>> effectiveIntelligenceConfigs;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  late final pulumi.Output<ControlOrganizationIntelligenceConfigFilter?> filter;
  /// Identifier of the GCP Organization. For GCP org, this field should be organization number.
  late final pulumi.Output<String> name;
  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlOrganizationIntelligenceConfigTrialConfig>> trialConfigs;
  /// The time at which the Storage Intelligence Config resource is last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ControlOrganizationIntelligenceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlOrganizationIntelligenceConfig]. {@macro pulumi_storage_control_organization_intelligence_config_control_organization_intelligence_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlOrganizationIntelligenceConfig(
    String name, {
    ControlOrganizationIntelligenceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    editionConfig = registerOutput<String>('editionConfig');
    effectiveIntelligenceConfigs = registerOutput<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<ControlOrganizationIntelligenceConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlOrganizationIntelligenceConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    trialConfigs = registerOutput<List<ControlOrganizationIntelligenceConfigTrialConfig>>('trialConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigTrialConfig>(guardedValue, (value) => ControlOrganizationIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ControlOrganizationIntelligenceConfig] resource's state with the given [name] and [id].
  static ControlOrganizationIntelligenceConfig get(
    String name,
    pulumi.Input<String> id, {
    ControlOrganizationIntelligenceConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ControlOrganizationIntelligenceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ControlOrganizationIntelligenceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editionConfig = registerOutput<String>('editionConfig');
    effectiveIntelligenceConfigs = registerOutput<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<ControlOrganizationIntelligenceConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlOrganizationIntelligenceConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    trialConfigs = registerOutput<List<ControlOrganizationIntelligenceConfigTrialConfig>>('trialConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigTrialConfig>(guardedValue, (value) => ControlOrganizationIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ControlOrganizationIntelligenceConfig] resource.
  ControlOrganizationIntelligenceConfig.reference(String urn)
    : super(
        'gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    editionConfig = registerOutput<String>('editionConfig');
    effectiveIntelligenceConfigs = registerOutput<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<ControlOrganizationIntelligenceConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlOrganizationIntelligenceConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    trialConfigs = registerOutput<List<ControlOrganizationIntelligenceConfigTrialConfig>>('trialConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigTrialConfig>(guardedValue, (value) => ControlOrganizationIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
