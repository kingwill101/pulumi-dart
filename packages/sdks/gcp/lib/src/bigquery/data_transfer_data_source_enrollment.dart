import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_data_source_enrollment_args.dart';
import 'data_transfer_data_source_enrollment_parameter.dart';
import 'data_transfer_data_source_enrollment_state.dart';

/// Enrolls a BigQuery Data Transfer Service data source in a project, making it available
/// for use by `gcp.bigquery.DataTransferConfig`. Some data sources, notably Google Cloud
/// Carbon Footprint exports, must be enrolled before a transfer config can be created against
/// them.
///
/// Enrollment is project-wide: a data source enrolled in a project is available in every
/// location that offers it.
///
/// Enrollment is eventually consistent, so a newly created or recreated enrollment may briefly
/// read as absent before it settles.
///
///
/// To get more information about DataSourceEnrollment, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/v1/projects/enrollDataSources)
/// * How-to Guides
/// * [Export your carbon footprint](https://cloud.google.com/carbon-footprint/docs/export)
/// * [Working with transfers](https://cloud.google.com/bigquery/docs/working-with-transfers)
///
/// ## Example Usage
///
/// ### Bigquerydatatransfer Data Source Enrollment Carbon
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const carbon = new gcp.bigquery.DataTransferDataSourceEnrollment("carbon", {
///     project: "my-project-name",
///     dataSourceId: "61cede5a-0000-2440-ad42-883d24f8f7b8",
///     unenrollLocation: "us",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// carbon = gcp.bigquery.DataTransferDataSourceEnrollment("carbon",
///     project="my-project-name",
///     data_source_id="61cede5a-0000-2440-ad42-883d24f8f7b8",
///     unenroll_location="us")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var carbon = new Gcp.BigQuery.DataTransferDataSourceEnrollment("carbon", new()
///     {
///         Project = "my-project-name",
///         DataSourceId = "61cede5a-0000-2440-ad42-883d24f8f7b8",
///         UnenrollLocation = "us",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDataTransferDataSourceEnrollment(ctx, "carbon", &bigquery.DataTransferDataSourceEnrollmentArgs{
/// 			Project:          pulumi.String("my-project-name"),
/// 			DataSourceId:     pulumi.String("61cede5a-0000-2440-ad42-883d24f8f7b8"),
/// 			UnenrollLocation: pulumi.String("us"),
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
/// resource "gcp_bigquery_datatransferdatasourceenrollment" "carbon" {
///   project           = "my-project-name"
///   data_source_id    = "61cede5a-0000-2440-ad42-883d24f8f7b8"
///   unenroll_location = "us"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.DataTransferDataSourceEnrollment;
/// import com.pulumi.gcp.bigquery.DataTransferDataSourceEnrollmentArgs;
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
///         var carbon = new DataTransferDataSourceEnrollment("carbon", DataTransferDataSourceEnrollmentArgs.builder()
///             .project("my-project-name")
///             .dataSourceId("61cede5a-0000-2440-ad42-883d24f8f7b8")
///             .unenrollLocation("us")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   carbon:
///     type: gcp:bigquery:DataTransferDataSourceEnrollment
///     properties:
///       project: my-project-name
///       dataSourceId: 61cede5a-0000-2440-ad42-883d24f8f7b8
///       unenrollLocation: us
/// ```
///
///
/// ## Import
///
/// DataSourceEnrollment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/dataSources/{{data_source_id}}`
/// * `{{project}}/{{data_source_id}}`
/// * `{{data_source_id}}`
///
///
/// When using the `pulumi import` command, DataSourceEnrollment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferDataSourceEnrollment:DataTransferDataSourceEnrollment default projects/{{project}}/dataSources/{{data_source_id}}
/// $ pulumi import gcp:bigquery/dataTransferDataSourceEnrollment:DataTransferDataSourceEnrollment default {{project}}/{{data_source_id}}
/// $ pulumi import gcp:bigquery/dataTransferDataSourceEnrollment:DataTransferDataSourceEnrollment default {{data_source_id}}
/// ```
class DataTransferDataSourceEnrollment extends pulumi.CustomResource {
  /// Indicates the type of authorization.
  late final pulumi.Output<String> authorizationType;
  /// Data source client id which should be used to receive refresh token.
  late final pulumi.Output<String> clientId;
  /// Data refresh type.
  late final pulumi.Output<String> dataRefreshType;
  /// The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
  /// `61cede5a-0000-2440-ad42-883d24f8f7b8`. Call `projects.dataSources.list` to see the data
  /// sources currently enrolled in a project.
  late final pulumi.Output<String> dataSourceId;
  /// Default data refresh window on days.
  late final pulumi.Output<int> defaultDataRefreshWindowDays;
  /// Default data transfer schedule.
  late final pulumi.Output<String> defaultSchedule;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// (Output)
  /// Parameter description.
  late final pulumi.Output<String> description;
  /// (Output)
  /// User friendly parameter name.
  late final pulumi.Output<String> displayName;
  /// Url to the documentation about the data source.
  late final pulumi.Output<String> helpUrl;
  /// Disables support for manual transfer runs.
  late final pulumi.Output<bool> manualRunsDisabled;
  /// The minimum interval between two scheduled runs.
  late final pulumi.Output<String> minimumScheduleInterval;
  /// The resource name of the data source.
  late final pulumi.Output<String> name;
  /// Data source parameters.
  /// Structure is documented below.
  late final pulumi.Output<List<DataTransferDataSourceEnrollmentParameter>> parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Api auth scopes for which refresh token needs to be obtained.
  late final pulumi.Output<List<String>> scopes;
  /// Specifies whether the data source supports a user defined schedule.
  late final pulumi.Output<bool> supportsCustomSchedule;
  /// The location whose `unenrollDataSources` endpoint is called when this resource is destroyed.
  /// Enrollment itself is project-wide and unenrolling through any location removes it everywhere;
  /// this only exists because the API offers no project-level unenroll method. Override it only if
  /// `us` is not routable for the project, for example under a data-residency organization policy.
  late final pulumi.Output<String?> unenrollLocation;
  /// The number of seconds to wait for a transfer to start before declaring the failure.
  late final pulumi.Output<int> updateDeadlineSeconds;

  /// Creates a new [DataTransferDataSourceEnrollment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataTransferDataSourceEnrollment]. {@macro pulumi_bigquery_data_transfer_data_source_enrollment_data_transfer_data_source_enrollment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataTransferDataSourceEnrollment(
    String name, {
    DataTransferDataSourceEnrollmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataTransferDataSourceEnrollment:DataTransferDataSourceEnrollment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    authorizationType = registerOutput<String>('authorizationType');
    clientId = registerOutput<String>('clientId');
    dataRefreshType = registerOutput<String>('dataRefreshType');
    dataSourceId = registerOutput<String>('dataSourceId');
    defaultDataRefreshWindowDays = registerOutput<int>('defaultDataRefreshWindowDays');
    defaultSchedule = registerOutput<String>('defaultSchedule');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    helpUrl = registerOutput<String>('helpUrl');
    manualRunsDisabled = registerOutput<bool>('manualRunsDisabled');
    minimumScheduleInterval = registerOutput<String>('minimumScheduleInterval');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<DataTransferDataSourceEnrollmentParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataTransferDataSourceEnrollmentParameter>(guardedValue, (value) => DataTransferDataSourceEnrollmentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportsCustomSchedule = registerOutput<bool>('supportsCustomSchedule');
    unenrollLocation = registerOutput<String?>('unenrollLocation');
    updateDeadlineSeconds = registerOutput<int>('updateDeadlineSeconds');
  }

  /// Gets an existing [DataTransferDataSourceEnrollment] resource's state with the given [name] and [id].
  static DataTransferDataSourceEnrollment get(
    String name,
    pulumi.Input<String> id, {
    DataTransferDataSourceEnrollmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataTransferDataSourceEnrollment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataTransferDataSourceEnrollment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataTransferDataSourceEnrollment:DataTransferDataSourceEnrollment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationType = registerOutput<String>('authorizationType');
    clientId = registerOutput<String>('clientId');
    dataRefreshType = registerOutput<String>('dataRefreshType');
    dataSourceId = registerOutput<String>('dataSourceId');
    defaultDataRefreshWindowDays = registerOutput<int>('defaultDataRefreshWindowDays');
    defaultSchedule = registerOutput<String>('defaultSchedule');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    helpUrl = registerOutput<String>('helpUrl');
    manualRunsDisabled = registerOutput<bool>('manualRunsDisabled');
    minimumScheduleInterval = registerOutput<String>('minimumScheduleInterval');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<DataTransferDataSourceEnrollmentParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataTransferDataSourceEnrollmentParameter>(guardedValue, (value) => DataTransferDataSourceEnrollmentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportsCustomSchedule = registerOutput<bool>('supportsCustomSchedule');
    unenrollLocation = registerOutput<String?>('unenrollLocation');
    updateDeadlineSeconds = registerOutput<int>('updateDeadlineSeconds');
  }

  /// Creates a typed reference to an existing [DataTransferDataSourceEnrollment] resource.
  DataTransferDataSourceEnrollment.reference(String urn)
    : super(
        'gcp:bigquery/dataTransferDataSourceEnrollment:DataTransferDataSourceEnrollment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authorizationType = registerOutput<String>('authorizationType');
    clientId = registerOutput<String>('clientId');
    dataRefreshType = registerOutput<String>('dataRefreshType');
    dataSourceId = registerOutput<String>('dataSourceId');
    defaultDataRefreshWindowDays = registerOutput<int>('defaultDataRefreshWindowDays');
    defaultSchedule = registerOutput<String>('defaultSchedule');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    helpUrl = registerOutput<String>('helpUrl');
    manualRunsDisabled = registerOutput<bool>('manualRunsDisabled');
    minimumScheduleInterval = registerOutput<String>('minimumScheduleInterval');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<DataTransferDataSourceEnrollmentParameter>>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataTransferDataSourceEnrollmentParameter>(guardedValue, (value) => DataTransferDataSourceEnrollmentParameter.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportsCustomSchedule = registerOutput<bool>('supportsCustomSchedule');
    unenrollLocation = registerOutput<String?>('unenrollLocation');
    updateDeadlineSeconds = registerOutput<int>('updateDeadlineSeconds');
  }
}
