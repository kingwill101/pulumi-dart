import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_args.dart';
import 'report_config_group_preferenceset_assignment.dart';
import 'report_config_state.dart';

/// ReportConfig defines the configuration and criteria used to generate Migration Center reports.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Report Config Basic
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
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
///     groupPreferencesetAssignments: [{
///         group: _default.id,
///         preferenceSet: defaultPreferenceSet.id,
///     }],
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
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     group_preferenceset_assignments=[{
///         "group": default.id,
///         "preference_set": default_preference_set.id,
///     }])
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
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
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
/// 		_, err = migrationcenter.NewReportConfig(ctx, "default", &migrationcenter.ReportConfigArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			ReportConfigId: pulumi.String("report-config-test"),
/// 			Description:    pulumi.String("Terraform integration test description"),
/// 			DisplayName:    pulumi.String("Terraform integration test display"),
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
///   description      = "Terraform integration test description"
///   display_name     = "Terraform integration test display"
///   group_preferenceset_assignments {
///     group          = gcp_migrationcenter_group.default.id
///     preference_set = gcp_migrationcenter_preferenceset.default.id
///   }
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
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .groupPreferencesetAssignments(ReportConfigGroupPreferencesetAssignmentArgs.builder()
///                 .group(default_.id())
///                 .preferenceSet(defaultPreferenceSet.id())
///                 .build())
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
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       groupPreferencesetAssignments:
///         - group: ${default.id}
///           preferenceSet: ${defaultPreferenceSet.id}
/// ```
///
///
/// ## Import
///
/// ReportConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reportConfigs/{{report_config_id}}`
/// * `{{project}}/{{location}}/{{report_config_id}}`
/// * `{{location}}/{{report_config_id}}`
///
///
/// When using the `pulumi import` command, ReportConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/reportConfig:ReportConfig default projects/{{project}}/locations/{{location}}/reportConfigs/{{report_config_id}}
/// $ pulumi import gcp:migrationcenter/reportConfig:ReportConfig default {{project}}/{{location}}/{{report_config_id}}
/// $ pulumi import gcp:migrationcenter/reportConfig:ReportConfig default {{location}}/{{report_config_id}}
/// ```
class ReportConfig extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
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
  /// Collection of combinations of groups and preference sets.
  /// Structure is documented below.
  late final pulumi.Output<List<ReportConfigGroupPreferencesetAssignment>> groupPreferencesetAssignments;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Name of resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// User specified ID for the report config. It will become the last component
  /// of the report config name. The ID must be unique within the project, must
  /// conform with RFC-1034, is restricted to lower-cased letters, and has a
  /// maximum length of 63 characters. The ID must match the regular expression:
  /// a-z?.
  late final pulumi.Output<String> reportConfigId;
  /// The timestamp when the resource was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ReportConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReportConfig]. {@macro pulumi_migrationcenter_report_config_report_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReportConfig(
    String name, {
    ReportConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/reportConfig:ReportConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    groupPreferencesetAssignments = registerOutput<List<ReportConfigGroupPreferencesetAssignment>>('groupPreferencesetAssignments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportConfigGroupPreferencesetAssignment>(guardedValue, (value) => ReportConfigGroupPreferencesetAssignment.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reportConfigId = registerOutput<String>('reportConfigId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ReportConfig] resource's state with the given [name] and [id].
  static ReportConfig get(
    String name,
    pulumi.Input<String> id, {
    ReportConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReportConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReportConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/reportConfig:ReportConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    groupPreferencesetAssignments = registerOutput<List<ReportConfigGroupPreferencesetAssignment>>('groupPreferencesetAssignments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportConfigGroupPreferencesetAssignment>(guardedValue, (value) => ReportConfigGroupPreferencesetAssignment.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reportConfigId = registerOutput<String>('reportConfigId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ReportConfig] resource.
  ReportConfig.reference(String urn)
    : super(
        'gcp:migrationcenter/reportConfig:ReportConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    groupPreferencesetAssignments = registerOutput<List<ReportConfigGroupPreferencesetAssignment>>('groupPreferencesetAssignments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportConfigGroupPreferencesetAssignment>(guardedValue, (value) => ReportConfigGroupPreferencesetAssignment.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reportConfigId = registerOutput<String>('reportConfigId');
    updateTime = registerOutput<String>('updateTime');
  }
}
