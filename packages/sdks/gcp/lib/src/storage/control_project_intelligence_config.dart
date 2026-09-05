import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_intelligence_config_args.dart';
import 'control_project_intelligence_config_effective_intelligence_config.dart';
import 'control_project_intelligence_config_filter.dart';
import 'control_project_intelligence_config_state.dart';
import 'control_project_intelligence_config_trial_config.dart';

/// The Project Storage Intelligence Config resource represents GCS Storage Intelligence operating on individual GCP project. Storage Intelligence Config is a singleton resource and individual instance exists on each GCP project.
///
/// Storage Intelligence is for Storage Admins to manage GCP storage assets at scale for performance, cost, security & compliance.
///
///
///
/// &gt; **Warning:** Storage Intelligence Config is a singleton resource which cannot be created or deleted. A single instance of Storage Intelligence Config exist for each GCP Project. Terraform does not create or destroy this resource.
/// Terraform resource creation for this resource is simply an update operation on existing resource with specified properties, absence of any optional field in the create operation will result in clearance of that field. Terraform deletion won't have any effect on this resource rather it will only remove it from the state file.
///
/// ## Example Usage
///
/// ### Storage Control Project Intelligence Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.ControlProjectIntelligenceConfig("example", {
///     name: "test-project",
///     editionConfig: "TRIAL",
///     filter: {
///         includedCloudStorageBuckets: {
///             bucketIdRegexes: [
///                 "test-id-1*",
///                 "test-id-2*",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.ControlProjectIntelligenceConfig("example",
///     name="test-project",
///     edition_config="TRIAL",
///     filter={
///         "included_cloud_storage_buckets": {
///             "bucket_id_regexes": [
///                 "test-id-1*",
///                 "test-id-2*",
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
///     var example = new Gcp.Storage.ControlProjectIntelligenceConfig("example", new()
///     {
///         Name = "test-project",
///         EditionConfig = "TRIAL",
///         Filter = new Gcp.Storage.Inputs.ControlProjectIntelligenceConfigFilterArgs
///         {
///             IncludedCloudStorageBuckets = new Gcp.Storage.Inputs.ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs
///             {
///                 BucketIdRegexes = new[]
///                 {
///                     "test-id-1*",
///                     "test-id-2*",
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
/// 		_, err := storage.NewControlProjectIntelligenceConfig(ctx, "example", &storage.ControlProjectIntelligenceConfigArgs{
/// 			Name:          pulumi.String("test-project"),
/// 			EditionConfig: pulumi.String("TRIAL"),
/// 			Filter: &storage.ControlProjectIntelligenceConfigFilterArgs{
/// 				IncludedCloudStorageBuckets: &storage.ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs{
/// 					BucketIdRegexes: pulumi.StringArray{
/// 						pulumi.String("test-id-1*"),
/// 						pulumi.String("test-id-2*"),
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
/// resource "gcp_storage_controlprojectintelligenceconfig" "example" {
///   name           = "test-project"
///   edition_config = "TRIAL"
///   filter = {
///     included_cloud_storage_buckets = {
///       bucket_id_regexes = ["test-id-1*", "test-id-2*"]
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
/// import com.pulumi.gcp.storage.ControlProjectIntelligenceConfig;
/// import com.pulumi.gcp.storage.ControlProjectIntelligenceConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectIntelligenceConfigFilterArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs;
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
///         var example = new ControlProjectIntelligenceConfig("example", ControlProjectIntelligenceConfigArgs.builder()
///             .name("test-project")
///             .editionConfig("TRIAL")
///             .filter(ControlProjectIntelligenceConfigFilterArgs.builder()
///                 .includedCloudStorageBuckets(ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs.builder()
///                     .bucketIdRegexes(
///                         "test-id-1*",
///                         "test-id-2*")
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
///     type: gcp:storage:ControlProjectIntelligenceConfig
///     properties:
///       name: test-project
///       editionConfig: TRIAL
///       filter:
///         includedCloudStorageBuckets:
///           bucketIdRegexes:
///             - test-id-1*
///             - test-id-2*
/// ```
///
///
/// ## Import
///
/// ProjectIntelligenceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{name}}/locations/global/intelligenceConfig`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ProjectIntelligenceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig default projects/{{name}}/locations/global/intelligenceConfig
/// $ pulumi import gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig default {{name}}
/// ```
class ControlProjectIntelligenceConfig extends pulumi.CustomResource {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  late final pulumi.Output<String> editionConfig;
  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>> effectiveIntelligenceConfigs;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  late final pulumi.Output<ControlProjectIntelligenceConfigFilter?> filter;
  /// Identifier of the GCP project. For GCP project, this field can be project name or project number.
  late final pulumi.Output<String> name;
  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlProjectIntelligenceConfigTrialConfig>> trialConfigs;
  /// The time at which the Storage Intelligence Config resource is last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ControlProjectIntelligenceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlProjectIntelligenceConfig]. {@macro pulumi_storage_control_project_intelligence_config_control_project_intelligence_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlProjectIntelligenceConfig(
    String name, {
    ControlProjectIntelligenceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    editionConfig = registerOutput<String>('editionConfig');
    effectiveIntelligenceConfigs = registerOutput<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => ControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<ControlProjectIntelligenceConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectIntelligenceConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    trialConfigs = registerOutput<List<ControlProjectIntelligenceConfigTrialConfig>>('trialConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlProjectIntelligenceConfigTrialConfig>(guardedValue, (value) => ControlProjectIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ControlProjectIntelligenceConfig] resource's state with the given [name] and [id].
  static ControlProjectIntelligenceConfig get(
    String name,
    pulumi.Input<String> id, {
    ControlProjectIntelligenceConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ControlProjectIntelligenceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ControlProjectIntelligenceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editionConfig = registerOutput<String>('editionConfig');
    effectiveIntelligenceConfigs = registerOutput<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => ControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<ControlProjectIntelligenceConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectIntelligenceConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    trialConfigs = registerOutput<List<ControlProjectIntelligenceConfigTrialConfig>>('trialConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlProjectIntelligenceConfigTrialConfig>(guardedValue, (value) => ControlProjectIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ControlProjectIntelligenceConfig] resource.
  ControlProjectIntelligenceConfig.reference(String urn)
    : super(
        'gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    editionConfig = registerOutput<String>('editionConfig');
    effectiveIntelligenceConfigs = registerOutput<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => ControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<ControlProjectIntelligenceConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectIntelligenceConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    trialConfigs = registerOutput<List<ControlProjectIntelligenceConfigTrialConfig>>('trialConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ControlProjectIntelligenceConfigTrialConfig>(guardedValue, (value) => ControlProjectIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
