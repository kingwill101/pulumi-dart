import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_export_args.dart';
import 'big_query_export_entity_graph_settings.dart';
import 'big_query_export_ioc_matches_settings.dart';
import 'big_query_export_rule_detections_settings.dart';
import 'big_query_export_state.dart';
import 'big_query_export_udm_events_aggregates_settings.dart';
import 'big_query_export_udm_events_settings.dart';

/// BigQueryExport resource represents the BigQuery export configuration for a Chronicle instance.
///
///
/// To get more information about BigQueryExport, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.bigQueryExport)
/// * How-to Guides
/// * [BigQuery Export Overview](https://cloud.google.com/chronicle/docs/secops/bigquery-export-overview)
///
/// ## Example Usage
///
/// ### Chronicle Bigquery Export Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.BigQueryExport("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     udmEventsSettings: {
///         enabled: true,
///         retentionDays: 7,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.BigQueryExport("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     udm_events_settings={
///         "enabled": True,
///         "retention_days": 7,
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
///     var example = new Gcp.Chronicle.BigQueryExport("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         UdmEventsSettings = new Gcp.Chronicle.Inputs.BigQueryExportUdmEventsSettingsArgs
///         {
///             Enabled = true,
///             RetentionDays = 7,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewBigQueryExport(ctx, "example", &chronicle.BigQueryExportArgs{
/// 			Location: pulumi.String("us"),
/// 			Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			UdmEventsSettings: &chronicle.BigQueryExportUdmEventsSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				RetentionDays: pulumi.Int(7),
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
/// resource "gcp_chronicle_bigqueryexport" "example" {
///   location = "us"
///   instance = "00000000-0000-0000-0000-000000000000"
///   udm_events_settings = {
///     enabled        = true
///     retention_days = 7
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.BigQueryExport;
/// import com.pulumi.gcp.chronicle.BigQueryExportArgs;
/// import com.pulumi.gcp.chronicle.inputs.BigQueryExportUdmEventsSettingsArgs;
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
///         var example = new BigQueryExport("example", BigQueryExportArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .udmEventsSettings(BigQueryExportUdmEventsSettingsArgs.builder()
///                 .enabled(true)
///                 .retentionDays(7)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:BigQueryExport
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       udmEventsSettings:
///         enabled: true
///         retentionDays: 7
/// ```
///
/// ### Chronicle Bigquery Export Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.BigQueryExport("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     bigQueryExportPackage: "BIG_QUERY_EXPORT_PACKAGE_BYOBQ",
///     udmEventsSettings: {
///         enabled: true,
///         retentionDays: 7,
///     },
///     entityGraphSettings: {
///         enabled: true,
///         retentionDays: 7,
///     },
///     iocMatchesSettings: {
///         enabled: true,
///         retentionDays: 7,
///     },
///     ruleDetectionsSettings: {
///         enabled: true,
///         retentionDays: 7,
///     },
///     udmEventsAggregatesSettings: {
///         enabled: true,
///         retentionDays: 7,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.BigQueryExport("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     big_query_export_package="BIG_QUERY_EXPORT_PACKAGE_BYOBQ",
///     udm_events_settings={
///         "enabled": True,
///         "retention_days": 7,
///     },
///     entity_graph_settings={
///         "enabled": True,
///         "retention_days": 7,
///     },
///     ioc_matches_settings={
///         "enabled": True,
///         "retention_days": 7,
///     },
///     rule_detections_settings={
///         "enabled": True,
///         "retention_days": 7,
///     },
///     udm_events_aggregates_settings={
///         "enabled": True,
///         "retention_days": 7,
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
///     var example = new Gcp.Chronicle.BigQueryExport("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         BigQueryExportPackage = "BIG_QUERY_EXPORT_PACKAGE_BYOBQ",
///         UdmEventsSettings = new Gcp.Chronicle.Inputs.BigQueryExportUdmEventsSettingsArgs
///         {
///             Enabled = true,
///             RetentionDays = 7,
///         },
///         EntityGraphSettings = new Gcp.Chronicle.Inputs.BigQueryExportEntityGraphSettingsArgs
///         {
///             Enabled = true,
///             RetentionDays = 7,
///         },
///         IocMatchesSettings = new Gcp.Chronicle.Inputs.BigQueryExportIocMatchesSettingsArgs
///         {
///             Enabled = true,
///             RetentionDays = 7,
///         },
///         RuleDetectionsSettings = new Gcp.Chronicle.Inputs.BigQueryExportRuleDetectionsSettingsArgs
///         {
///             Enabled = true,
///             RetentionDays = 7,
///         },
///         UdmEventsAggregatesSettings = new Gcp.Chronicle.Inputs.BigQueryExportUdmEventsAggregatesSettingsArgs
///         {
///             Enabled = true,
///             RetentionDays = 7,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewBigQueryExport(ctx, "example", &chronicle.BigQueryExportArgs{
/// 			Location:              pulumi.String("us"),
/// 			Instance:              pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			BigQueryExportPackage: pulumi.String("BIG_QUERY_EXPORT_PACKAGE_BYOBQ"),
/// 			UdmEventsSettings: &chronicle.BigQueryExportUdmEventsSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				RetentionDays: pulumi.Int(7),
/// 			},
/// 			EntityGraphSettings: &chronicle.BigQueryExportEntityGraphSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				RetentionDays: pulumi.Int(7),
/// 			},
/// 			IocMatchesSettings: &chronicle.BigQueryExportIocMatchesSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				RetentionDays: pulumi.Int(7),
/// 			},
/// 			RuleDetectionsSettings: &chronicle.BigQueryExportRuleDetectionsSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				RetentionDays: pulumi.Int(7),
/// 			},
/// 			UdmEventsAggregatesSettings: &chronicle.BigQueryExportUdmEventsAggregatesSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				RetentionDays: pulumi.Int(7),
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
/// resource "gcp_chronicle_bigqueryexport" "example" {
///   location                 = "us"
///   instance                 = "00000000-0000-0000-0000-000000000000"
///   big_query_export_package = "BIG_QUERY_EXPORT_PACKAGE_BYOBQ"
///   udm_events_settings = {
///     enabled        = true
///     retention_days = 7
///   }
///   entity_graph_settings = {
///     enabled        = true
///     retention_days = 7
///   }
///   ioc_matches_settings = {
///     enabled        = true
///     retention_days = 7
///   }
///   rule_detections_settings = {
///     enabled        = true
///     retention_days = 7
///   }
///   udm_events_aggregates_settings = {
///     enabled        = true
///     retention_days = 7
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.BigQueryExport;
/// import com.pulumi.gcp.chronicle.BigQueryExportArgs;
/// import com.pulumi.gcp.chronicle.inputs.BigQueryExportUdmEventsSettingsArgs;
/// import com.pulumi.gcp.chronicle.inputs.BigQueryExportEntityGraphSettingsArgs;
/// import com.pulumi.gcp.chronicle.inputs.BigQueryExportIocMatchesSettingsArgs;
/// import com.pulumi.gcp.chronicle.inputs.BigQueryExportRuleDetectionsSettingsArgs;
/// import com.pulumi.gcp.chronicle.inputs.BigQueryExportUdmEventsAggregatesSettingsArgs;
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
///         var example = new BigQueryExport("example", BigQueryExportArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .bigQueryExportPackage("BIG_QUERY_EXPORT_PACKAGE_BYOBQ")
///             .udmEventsSettings(BigQueryExportUdmEventsSettingsArgs.builder()
///                 .enabled(true)
///                 .retentionDays(7)
///                 .build())
///             .entityGraphSettings(BigQueryExportEntityGraphSettingsArgs.builder()
///                 .enabled(true)
///                 .retentionDays(7)
///                 .build())
///             .iocMatchesSettings(BigQueryExportIocMatchesSettingsArgs.builder()
///                 .enabled(true)
///                 .retentionDays(7)
///                 .build())
///             .ruleDetectionsSettings(BigQueryExportRuleDetectionsSettingsArgs.builder()
///                 .enabled(true)
///                 .retentionDays(7)
///                 .build())
///             .udmEventsAggregatesSettings(BigQueryExportUdmEventsAggregatesSettingsArgs.builder()
///                 .enabled(true)
///                 .retentionDays(7)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:BigQueryExport
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       bigQueryExportPackage: BIG_QUERY_EXPORT_PACKAGE_BYOBQ
///       udmEventsSettings:
///         enabled: true
///         retentionDays: 7
///       entityGraphSettings:
///         enabled: true
///         retentionDays: 7
///       iocMatchesSettings:
///         enabled: true
///         retentionDays: 7
///       ruleDetectionsSettings:
///         enabled: true
///         retentionDays: 7
///       udmEventsAggregatesSettings:
///         enabled: true
///         retentionDays: 7
/// ```
///
///
/// ## Import
///
/// BigQueryExport can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/bigQueryExport`
/// * `{{project}}/{{location}}/{{instance}}`
/// * `{{location}}/{{instance}}`
///
///
/// When using the `pulumi import` command, BigQueryExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/bigQueryExport:BigQueryExport default projects/{{project}}/locations/{{location}}/instances/{{instance}}/bigQueryExport
/// $ pulumi import gcp:chronicle/bigQueryExport:BigQueryExport default {{project}}/{{location}}/{{instance}}
/// $ pulumi import gcp:chronicle/bigQueryExport:BigQueryExport default {{location}}/{{instance}}
/// ```
class BigQueryExport extends pulumi.CustomResource {
  /// The BigQueryExportPackage entitled for the Chronicle instance.
  /// Possible values are: `BIG_QUERY_EXPORT_PACKAGE_BYOBQ`, `BIG_QUERY_EXPORT_PACKAGE_ADVANCED`.
  late final pulumi.Output<String> bigQueryExportPackage;
  /// The export settings for a data source.
  /// Structure is documented below.
  late final pulumi.Output<BigQueryExportEntityGraphSettings> entityGraphSettings;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// The export settings for a data source.
  /// Structure is documented below.
  late final pulumi.Output<BigQueryExportIocMatchesSettings> iocMatchesSettings;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the BigQueryExport.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/bigQueryExport
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Whether the BigQueryExport has been provisioned for the Chronicle instance.
  late final pulumi.Output<bool> provisioned;
  /// The export settings for a data source.
  /// Structure is documented below.
  late final pulumi.Output<BigQueryExportRuleDetectionsSettings> ruleDetectionsSettings;
  /// The export settings for a data source.
  /// Structure is documented below.
  late final pulumi.Output<BigQueryExportUdmEventsAggregatesSettings> udmEventsAggregatesSettings;
  /// The export settings for a data source.
  /// Structure is documented below.
  late final pulumi.Output<BigQueryExportUdmEventsSettings> udmEventsSettings;

  /// Creates a new [BigQueryExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BigQueryExport]. {@macro pulumi_chronicle_big_query_export_big_query_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BigQueryExport(
    String name, {
    BigQueryExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/bigQueryExport:BigQueryExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bigQueryExportPackage = registerOutput<String>('bigQueryExportPackage');
    entityGraphSettings = registerOutput<BigQueryExportEntityGraphSettings>('entityGraphSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportEntityGraphSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    iocMatchesSettings = registerOutput<BigQueryExportIocMatchesSettings>('iocMatchesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportIocMatchesSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    provisioned = registerOutput<bool>('provisioned');
    ruleDetectionsSettings = registerOutput<BigQueryExportRuleDetectionsSettings>('ruleDetectionsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportRuleDetectionsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    udmEventsAggregatesSettings = registerOutput<BigQueryExportUdmEventsAggregatesSettings>('udmEventsAggregatesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportUdmEventsAggregatesSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    udmEventsSettings = registerOutput<BigQueryExportUdmEventsSettings>('udmEventsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportUdmEventsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BigQueryExport] resource's state with the given [name] and [id].
  static BigQueryExport get(
    String name,
    pulumi.Input<String> id, {
    BigQueryExportState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BigQueryExport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BigQueryExport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/bigQueryExport:BigQueryExport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigQueryExportPackage = registerOutput<String>('bigQueryExportPackage');
    entityGraphSettings = registerOutput<BigQueryExportEntityGraphSettings>('entityGraphSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportEntityGraphSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    iocMatchesSettings = registerOutput<BigQueryExportIocMatchesSettings>('iocMatchesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportIocMatchesSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    provisioned = registerOutput<bool>('provisioned');
    ruleDetectionsSettings = registerOutput<BigQueryExportRuleDetectionsSettings>('ruleDetectionsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportRuleDetectionsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    udmEventsAggregatesSettings = registerOutput<BigQueryExportUdmEventsAggregatesSettings>('udmEventsAggregatesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportUdmEventsAggregatesSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    udmEventsSettings = registerOutput<BigQueryExportUdmEventsSettings>('udmEventsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportUdmEventsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [BigQueryExport] resource.
  BigQueryExport.reference(String urn)
    : super(
        'gcp:chronicle/bigQueryExport:BigQueryExport',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bigQueryExportPackage = registerOutput<String>('bigQueryExportPackage');
    entityGraphSettings = registerOutput<BigQueryExportEntityGraphSettings>('entityGraphSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportEntityGraphSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    iocMatchesSettings = registerOutput<BigQueryExportIocMatchesSettings>('iocMatchesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportIocMatchesSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    provisioned = registerOutput<bool>('provisioned');
    ruleDetectionsSettings = registerOutput<BigQueryExportRuleDetectionsSettings>('ruleDetectionsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportRuleDetectionsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    udmEventsAggregatesSettings = registerOutput<BigQueryExportUdmEventsAggregatesSettings>('udmEventsAggregatesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportUdmEventsAggregatesSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    udmEventsSettings = registerOutput<BigQueryExportUdmEventsSettings>('udmEventsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BigQueryExportUdmEventsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
