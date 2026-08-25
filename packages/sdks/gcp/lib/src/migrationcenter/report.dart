import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_args.dart';
import 'report_state.dart';
import 'report_summary.dart';

/// Report represents an analytical assessment report summarizing infrastructure size, costs, and target suggestions.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Report Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.Group("default", {
///     location: "us-central1",
///     groupId: "group-test",
/// });
/// const defaultPreferenceSet = new gcp.migrationcenter.PreferenceSet("default", {
///     location: "us-central1",
///     preferenceSetId: "pref-set-test",
/// });
/// const defaultReportConfig = new gcp.migrationcenter.ReportConfig("default", {
///     location: "us-central1",
///     reportConfigId: "report-config-test",
///     groupPreferencesetAssignments: [{
///         group: _default.id,
///         preferenceSet: defaultPreferenceSet.id,
///     }],
/// });
/// const defaultReport = new gcp.migrationcenter.Report("default", {
///     location: "us-central1",
///     reportId: "report-test",
///     reportConfig: defaultReportConfig.reportConfigId,
///     type: "TOTAL_COST_OF_OWNERSHIP",
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.Group("default",
///     location="us-central1",
///     group_id="group-test")
/// default_preference_set = gcp.migrationcenter.PreferenceSet("default",
///     location="us-central1",
///     preference_set_id="pref-set-test")
/// default_report_config = gcp.migrationcenter.ReportConfig("default",
///     location="us-central1",
///     report_config_id="report-config-test",
///     group_preferenceset_assignments=[{
///         "group": default.id,
///         "preference_set": default_preference_set.id,
///     }])
/// default_report = gcp.migrationcenter.Report("default",
///     location="us-central1",
///     report_id="report-test",
///     report_config=default_report_config.report_config_id,
///     type="TOTAL_COST_OF_OWNERSHIP",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.MigrationCenter.Group("default", new()
///     {
///         Location = "us-central1",
///         GroupId = "group-test",
///     });
///
///     var defaultPreferenceSet = new Gcp.MigrationCenter.PreferenceSet("default", new()
///     {
///         Location = "us-central1",
///         PreferenceSetId = "pref-set-test",
///     });
///
///     var defaultReportConfig = new Gcp.MigrationCenter.ReportConfig("default", new()
///     {
///         Location = "us-central1",
///         ReportConfigId = "report-config-test",
///         GroupPreferencesetAssignments = new[]
///         {
///             new Gcp.MigrationCenter.Inputs.ReportConfigGroupPreferencesetAssignmentArgs
///             {
///                 Group = @default.Id,
///                 PreferenceSet = defaultPreferenceSet.Id,
///             },
///         },
///     });
///
///     var defaultReport = new Gcp.MigrationCenter.Report("default", new()
///     {
///         Location = "us-central1",
///         ReportId = "report-test",
///         ReportConfig = defaultReportConfig.ReportConfigId,
///         Type = "TOTAL_COST_OF_OWNERSHIP",
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := migrationcenter.NewGroup(ctx, "default", &migrationcenter.GroupArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			GroupId:  pulumi.String("group-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPreferenceSet, err := migrationcenter.NewPreferenceSet(ctx, "default", &migrationcenter.PreferenceSetArgs{
/// 			Location:        pulumi.String("us-central1"),
/// 			PreferenceSetId: pulumi.String("pref-set-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultReportConfig, err := migrationcenter.NewReportConfig(ctx, "default", &migrationcenter.ReportConfigArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			ReportConfigId: pulumi.String("report-config-test"),
/// 			GroupPreferencesetAssignments: migrationcenter.ReportConfigGroupPreferencesetAssignmentArray{
/// 				&migrationcenter.ReportConfigGroupPreferencesetAssignmentArgs{
/// 					Group:         _default.ID().ToIDOutput().ToStringOutput(),
/// 					PreferenceSet: defaultPreferenceSet.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = migrationcenter.NewReport(ctx, "default", &migrationcenter.ReportArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ReportId:     pulumi.String("report-test"),
/// 			ReportConfig: defaultReportConfig.ReportConfigId,
/// 			Type:         pulumi.String("TOTAL_COST_OF_OWNERSHIP"),
/// 			Description:  pulumi.String("Terraform integration test description"),
/// 			DisplayName:  pulumi.String("Terraform integration test display"),
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
/// resource "gcp_migrationcenter_group" "default" {
///   location = "us-central1"
///   group_id = "group-test"
/// }
/// resource "gcp_migrationcenter_preferenceset" "default" {
///   location          = "us-central1"
///   preference_set_id = "pref-set-test"
/// }
/// resource "gcp_migrationcenter_reportconfig" "default" {
///   location         = "us-central1"
///   report_config_id = "report-config-test"
///   group_preferenceset_assignments {
///     group          = gcp_migrationcenter_group.default.id
///     preference_set = gcp_migrationcenter_preferenceset.default.id
///   }
/// }
/// resource "gcp_migrationcenter_report" "default" {
///   location      = "us-central1"
///   report_id     = "report-test"
///   report_config = gcp_migrationcenter_reportconfig.default.report_config_id
///   type          = "TOTAL_COST_OF_OWNERSHIP"
///   description   = "Terraform integration test description"
///   display_name  = "Terraform integration test display"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.migrationcenter.Group;
/// import com.pulumi.gcp.migrationcenter.GroupArgs;
/// import com.pulumi.gcp.migrationcenter.PreferenceSet;
/// import com.pulumi.gcp.migrationcenter.PreferenceSetArgs;
/// import com.pulumi.gcp.migrationcenter.ReportConfig;
/// import com.pulumi.gcp.migrationcenter.ReportConfigArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.ReportConfigGroupPreferencesetAssignmentArgs;
/// import com.pulumi.gcp.migrationcenter.Report;
/// import com.pulumi.gcp.migrationcenter.ReportArgs;
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
///         var default_ = new Group("default", GroupArgs.builder()
///             .location("us-central1")
///             .groupId("group-test")
///             .build());
///
///         var defaultPreferenceSet = new PreferenceSet("defaultPreferenceSet", PreferenceSetArgs.builder()
///             .location("us-central1")
///             .preferenceSetId("pref-set-test")
///             .build());
///
///         var defaultReportConfig = new ReportConfig("defaultReportConfig", ReportConfigArgs.builder()
///             .location("us-central1")
///             .reportConfigId("report-config-test")
///             .groupPreferencesetAssignments(ReportConfigGroupPreferencesetAssignmentArgs.builder()
///                 .group(default_.id())
///                 .preferenceSet(defaultPreferenceSet.id())
///                 .build())
///             .build());
///
///         var defaultReport = new Report("defaultReport", ReportArgs.builder()
///             .location("us-central1")
///             .reportId("report-test")
///             .reportConfig(defaultReportConfig.reportConfigId())
///             .type("TOTAL_COST_OF_OWNERSHIP")
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:Group
///     properties:
///       location: us-central1
///       groupId: group-test
///   defaultPreferenceSet:
///     type: gcp:migrationcenter:PreferenceSet
///     name: default
///     properties:
///       location: us-central1
///       preferenceSetId: pref-set-test
///   defaultReportConfig:
///     type: gcp:migrationcenter:ReportConfig
///     name: default
///     properties:
///       location: us-central1
///       reportConfigId: report-config-test
///       groupPreferencesetAssignments:
///         - group: ${default.id}
///           preferenceSet: ${defaultPreferenceSet.id}
///   defaultReport:
///     type: gcp:migrationcenter:Report
///     name: default
///     properties:
///       location: us-central1
///       reportId: report-test
///       reportConfig: ${defaultReportConfig.reportConfigId}
///       type: TOTAL_COST_OF_OWNERSHIP
///       description: Terraform integration test description
///       displayName: Terraform integration test display
/// ```
///
///
/// ## Import
///
/// Report can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reportConfigs/{{report_config}}/reports/{{report_id}}`
/// * `{{project}}/{{location}}/{{report_config}}/{{report_id}}`
/// * `{{location}}/{{report_config}}/{{report_id}}`
///
///
/// When using the `pulumi import` command, Report can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/report:Report default projects/{{project}}/locations/{{location}}/reportConfigs/{{report_config}}/reports/{{report_id}}
/// $ pulumi import gcp:migrationcenter/report:Report default {{project}}/{{location}}/{{report_config}}/{{report_id}}
/// $ pulumi import gcp:migrationcenter/report:Report default {{location}}/{{report_config}}/{{report_id}}
/// ```
class Report extends pulumi.CustomResource {
  /// Creation timestamp.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Free-text description.
  late final pulumi.Output<String?> description;
  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String?> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Name of resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> reportConfig;
  /// User specified id for the report. It will become the last component
  /// of the report name. The id must be unique within the project, must
  /// conform with RFC-1034, is restricted to lower-cased letters, and has a
  /// maximum length of 63 characters. The id must match the regular expression:
  /// a-z?.
  late final pulumi.Output<String> reportId;
  /// Report creation state.
  /// Possible values:
  /// PENDING
  /// SUCCEEDED
  /// FAILED
  late final pulumi.Output<String> state;
  /// Describes the Summary view of a Report, which contains aggregated values
  /// for all the groups and preference sets included in this Report.
  /// Structure is documented below.
  late final pulumi.Output<List<ReportSummary>> summaries;
  /// Report type.
  /// Possible values:
  /// TOTAL_COST_OF_OWNERSHIP
  late final pulumi.Output<String?> type;
  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Report].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Report]. {@macro pulumi_migrationcenter_report_report_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Report(
    String name, {
    ReportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/report:Report',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reportConfig = registerOutput<String>('reportConfig');
    reportId = registerOutput<String>('reportId');
    state = registerOutput<String>('state');
    summaries = registerOutput<List<ReportSummary>>('summaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportSummary>(guardedValue, (value) => ReportSummary.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Report] resource's state with the given [name] and [id].
  static Report get(
    String name,
    pulumi.Input<String> id, {
    ReportState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Report._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Report._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/report:Report',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reportConfig = registerOutput<String>('reportConfig');
    reportId = registerOutput<String>('reportId');
    this.state = registerOutput<String>('state');
    summaries = registerOutput<List<ReportSummary>>('summaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportSummary>(guardedValue, (value) => ReportSummary.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Report] resource.
  Report.reference(String urn)
    : super(
        'gcp:migrationcenter/report:Report',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reportConfig = registerOutput<String>('reportConfig');
    reportId = registerOutput<String>('reportId');
    state = registerOutput<String>('state');
    summaries = registerOutput<List<ReportSummary>>('summaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportSummary>(guardedValue, (value) => ReportSummary.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
