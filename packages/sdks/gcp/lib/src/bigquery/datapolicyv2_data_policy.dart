import 'package:pulumi/pulumi.dart' as pulumi;
import 'datapolicyv2_data_policy_args.dart';
import 'datapolicyv2_data_policy_data_masking_policy.dart';
import 'datapolicyv2_data_policy_state.dart';

/// BigQuery Data Policy
///
///
/// To get more information about DataPolicy, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/bigquerydatapolicy/rest/v2/projects.locations.dataPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/column-data-masking-intro)
///
/// ## Example Usage
///
/// ### Bigquery Datapolicyv2 Datapolicy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicDataPolicy = new gcp.bigquery.Datapolicyv2DataPolicy("basic_data_policy", {
///     location: "us-central1",
///     dataPolicyType: "RAW_DATA_ACCESS_POLICY",
///     dataPolicyId: "basic_data_policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_data_policy = gcp.bigquery.Datapolicyv2DataPolicy("basic_data_policy",
///     location="us-central1",
///     data_policy_type="RAW_DATA_ACCESS_POLICY",
///     data_policy_id="basic_data_policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicDataPolicy = new Gcp.BigQuery.Datapolicyv2DataPolicy("basic_data_policy", new()
///     {
///         Location = "us-central1",
///         DataPolicyType = "RAW_DATA_ACCESS_POLICY",
///         DataPolicyId = "basic_data_policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicy(ctx, "basic_data_policy", &bigquery.Datapolicyv2DataPolicyArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			DataPolicyType: pulumi.String("RAW_DATA_ACCESS_POLICY"),
/// 			DataPolicyId:   pulumi.String("basic_data_policy"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyArgs;
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
///         var basicDataPolicy = new Datapolicyv2DataPolicy("basicDataPolicy", Datapolicyv2DataPolicyArgs.builder()
///             .location("us-central1")
///             .dataPolicyType("RAW_DATA_ACCESS_POLICY")
///             .dataPolicyId("basic_data_policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicDataPolicy:
///     type: gcp:bigquery:Datapolicyv2DataPolicy
///     name: basic_data_policy
///     properties:
///       location: us-central1
///       dataPolicyType: RAW_DATA_ACCESS_POLICY
///       dataPolicyId: basic_data_policy
/// ```
///
/// ### Bigquery Datapolicyv2 Datapolicy Predefined Masking
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const predefinedMaskingDataPolicy = new gcp.bigquery.Datapolicyv2DataPolicy("predefined_masking_data_policy", {
///     location: "us-central1",
///     dataPolicyType: "DATA_MASKING_POLICY",
///     dataMaskingPolicy: {
///         predefinedExpression: "SHA256",
///     },
///     dataPolicyId: "predefined_masking_data_policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// predefined_masking_data_policy = gcp.bigquery.Datapolicyv2DataPolicy("predefined_masking_data_policy",
///     location="us-central1",
///     data_policy_type="DATA_MASKING_POLICY",
///     data_masking_policy={
///         "predefined_expression": "SHA256",
///     },
///     data_policy_id="predefined_masking_data_policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var predefinedMaskingDataPolicy = new Gcp.BigQuery.Datapolicyv2DataPolicy("predefined_masking_data_policy", new()
///     {
///         Location = "us-central1",
///         DataPolicyType = "DATA_MASKING_POLICY",
///         DataMaskingPolicy = new Gcp.BigQuery.Inputs.Datapolicyv2DataPolicyDataMaskingPolicyArgs
///         {
///             PredefinedExpression = "SHA256",
///         },
///         DataPolicyId = "predefined_masking_data_policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicy(ctx, "predefined_masking_data_policy", &bigquery.Datapolicyv2DataPolicyArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			DataPolicyType: pulumi.String("DATA_MASKING_POLICY"),
/// 			DataMaskingPolicy: &bigquery.Datapolicyv2DataPolicyDataMaskingPolicyArgs{
/// 				PredefinedExpression: pulumi.String("SHA256"),
/// 			},
/// 			DataPolicyId: pulumi.String("predefined_masking_data_policy"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyArgs;
/// import com.pulumi.gcp.bigquery.inputs.Datapolicyv2DataPolicyDataMaskingPolicyArgs;
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
///         var predefinedMaskingDataPolicy = new Datapolicyv2DataPolicy("predefinedMaskingDataPolicy", Datapolicyv2DataPolicyArgs.builder()
///             .location("us-central1")
///             .dataPolicyType("DATA_MASKING_POLICY")
///             .dataMaskingPolicy(Datapolicyv2DataPolicyDataMaskingPolicyArgs.builder()
///                 .predefinedExpression("SHA256")
///                 .build())
///             .dataPolicyId("predefined_masking_data_policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   predefinedMaskingDataPolicy:
///     type: gcp:bigquery:Datapolicyv2DataPolicy
///     name: predefined_masking_data_policy
///     properties:
///       location: us-central1
///       dataPolicyType: DATA_MASKING_POLICY
///       dataMaskingPolicy:
///         predefinedExpression: SHA256
///       dataPolicyId: predefined_masking_data_policy
/// ```
///
/// ### Bigquery Datapolicyv2 Datapolicy Routine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {
///     datasetId: "dataset_id",
///     location: "us-central1",
/// });
/// const customMaskingRoutine = new gcp.bigquery.Routine("custom_masking_routine", {
///     datasetId: test.datasetId,
///     routineId: "custom_masking_routine",
///     routineType: "SCALAR_FUNCTION",
///     language: "SQL",
///     dataGovernanceType: "DATA_MASKING",
///     definitionBody: "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///     returnType: "{\"typeKind\" :  \"STRING\"}",
///     arguments: [{
///         name: "ssn",
///         dataType: "{\"typeKind\" :  \"STRING\"}",
///     }],
/// });
/// const routineDataPolicy = new gcp.bigquery.Datapolicyv2DataPolicy("routine_data_policy", {
///     location: "us-central1",
///     dataPolicyId: "routine_data_policy",
///     dataPolicyType: "DATA_MASKING_POLICY",
///     dataMaskingPolicy: {
///         routine: customMaskingRoutine.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test",
///     dataset_id="dataset_id",
///     location="us-central1")
/// custom_masking_routine = gcp.bigquery.Routine("custom_masking_routine",
///     dataset_id=test.dataset_id,
///     routine_id="custom_masking_routine",
///     routine_type="SCALAR_FUNCTION",
///     language="SQL",
///     data_governance_type="DATA_MASKING",
///     definition_body="SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///     return_type="{\"typeKind\" :  \"STRING\"}",
///     arguments=[{
///         "name": "ssn",
///         "data_type": "{\"typeKind\" :  \"STRING\"}",
///     }])
/// routine_data_policy = gcp.bigquery.Datapolicyv2DataPolicy("routine_data_policy",
///     location="us-central1",
///     data_policy_id="routine_data_policy",
///     data_policy_type="DATA_MASKING_POLICY",
///     data_masking_policy={
///         "routine": custom_masking_routine.id,
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
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///         Location = "us-central1",
///     });
///
///     var customMaskingRoutine = new Gcp.BigQuery.Routine("custom_masking_routine", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "custom_masking_routine",
///         RoutineType = "SCALAR_FUNCTION",
///         Language = "SQL",
///         DataGovernanceType = "DATA_MASKING",
///         DefinitionBody = "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///         ReturnType = "{\"typeKind\" :  \"STRING\"}",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "ssn",
///                 DataType = "{\"typeKind\" :  \"STRING\"}",
///             },
///         },
///     });
///
///     var routineDataPolicy = new Gcp.BigQuery.Datapolicyv2DataPolicy("routine_data_policy", new()
///     {
///         Location = "us-central1",
///         DataPolicyId = "routine_data_policy",
///         DataPolicyType = "DATA_MASKING_POLICY",
///         DataMaskingPolicy = new Gcp.BigQuery.Inputs.Datapolicyv2DataPolicyDataMaskingPolicyArgs
///         {
///             Routine = customMaskingRoutine.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 			Location:  pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customMaskingRoutine, err := bigquery.NewRoutine(ctx, "custom_masking_routine", &bigquery.RoutineArgs{
/// 			DatasetId:          test.DatasetId,
/// 			RoutineId:          pulumi.String("custom_masking_routine"),
/// 			RoutineType:        pulumi.String("SCALAR_FUNCTION"),
/// 			Language:           pulumi.String("SQL"),
/// 			DataGovernanceType: pulumi.String("DATA_MASKING"),
/// 			DefinitionBody:     pulumi.String("SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')"),
/// 			ReturnType:         pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("ssn"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatapolicyv2DataPolicy(ctx, "routine_data_policy", &bigquery.Datapolicyv2DataPolicyArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			DataPolicyId:   pulumi.String("routine_data_policy"),
/// 			DataPolicyType: pulumi.String("DATA_MASKING_POLICY"),
/// 			DataMaskingPolicy: &bigquery.Datapolicyv2DataPolicyDataMaskingPolicyArgs{
/// 				Routine: customMaskingRoutine.ID(),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyArgs;
/// import com.pulumi.gcp.bigquery.inputs.Datapolicyv2DataPolicyDataMaskingPolicyArgs;
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
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .location("us-central1")
///             .build());
///
///         var customMaskingRoutine = new Routine("customMaskingRoutine", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("custom_masking_routine")
///             .routineType("SCALAR_FUNCTION")
///             .language("SQL")
///             .dataGovernanceType("DATA_MASKING")
///             .definitionBody("SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')")
///             .returnType("{\"typeKind\" :  \"STRING\"}")
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("ssn")
///                 .dataType("{\"typeKind\" :  \"STRING\"}")
///                 .build())
///             .build());
///
///         var routineDataPolicy = new Datapolicyv2DataPolicy("routineDataPolicy", Datapolicyv2DataPolicyArgs.builder()
///             .location("us-central1")
///             .dataPolicyId("routine_data_policy")
///             .dataPolicyType("DATA_MASKING_POLICY")
///             .dataMaskingPolicy(Datapolicyv2DataPolicyDataMaskingPolicyArgs.builder()
///                 .routine(customMaskingRoutine.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   routineDataPolicy:
///     type: gcp:bigquery:Datapolicyv2DataPolicy
///     name: routine_data_policy
///     properties:
///       location: us-central1
///       dataPolicyId: routine_data_policy
///       dataPolicyType: DATA_MASKING_POLICY
///       dataMaskingPolicy:
///         routine: ${customMaskingRoutine.id}
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///       location: us-central1
///   customMaskingRoutine:
///     type: gcp:bigquery:Routine
///     name: custom_masking_routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: custom_masking_routine
///       routineType: SCALAR_FUNCTION
///       language: SQL
///       dataGovernanceType: DATA_MASKING
///       definitionBody: SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')
///       returnType: '{"typeKind" :  "STRING"}'
///       arguments:
///         - name: ssn
///           dataType: '{"typeKind" :  "STRING"}'
/// ```
///
/// ### Bigquery Datapolicyv2 Datapolicy Withgrantees
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataPolicyWithGrantees = new gcp.bigquery.Datapolicyv2DataPolicy("data_policy_with_grantees", {
///     location: "us-central1",
///     dataPolicyType: "RAW_DATA_ACCESS_POLICY",
///     grantees: ["principal://goog/subject/jane@example.com"],
///     dataPolicyId: "data_policy_with_grantees",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_policy_with_grantees = gcp.bigquery.Datapolicyv2DataPolicy("data_policy_with_grantees",
///     location="us-central1",
///     data_policy_type="RAW_DATA_ACCESS_POLICY",
///     grantees=["principal://goog/subject/jane@example.com"],
///     data_policy_id="data_policy_with_grantees")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataPolicyWithGrantees = new Gcp.BigQuery.Datapolicyv2DataPolicy("data_policy_with_grantees", new()
///     {
///         Location = "us-central1",
///         DataPolicyType = "RAW_DATA_ACCESS_POLICY",
///         Grantees = new[]
///         {
///             "principal://goog/subject/jane@example.com",
///         },
///         DataPolicyId = "data_policy_with_grantees",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewDatapolicyv2DataPolicy(ctx, "data_policy_with_grantees", &bigquery.Datapolicyv2DataPolicyArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			DataPolicyType: pulumi.String("RAW_DATA_ACCESS_POLICY"),
/// 			Grantees: pulumi.StringArray{
/// 				pulumi.String("principal://goog/subject/jane@example.com"),
/// 			},
/// 			DataPolicyId: pulumi.String("data_policy_with_grantees"),
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
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicy;
/// import com.pulumi.gcp.bigquery.Datapolicyv2DataPolicyArgs;
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
///         var dataPolicyWithGrantees = new Datapolicyv2DataPolicy("dataPolicyWithGrantees", Datapolicyv2DataPolicyArgs.builder()
///             .location("us-central1")
///             .dataPolicyType("RAW_DATA_ACCESS_POLICY")
///             .grantees("principal://goog/subject/jane@example.com")
///             .dataPolicyId("data_policy_with_grantees")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataPolicyWithGrantees:
///     type: gcp:bigquery:Datapolicyv2DataPolicy
///     name: data_policy_with_grantees
///     properties:
///       location: us-central1
///       dataPolicyType: RAW_DATA_ACCESS_POLICY
///       grantees:
///         - principal://goog/subject/jane@example.com
///       dataPolicyId: data_policy_with_grantees
/// ```
///
///
/// ## Import
///
/// DataPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}`
///
/// * `{{project}}/{{location}}/{{data_policy_id}}`
///
/// * `{{location}}/{{data_policy_id}}`
///
/// When using the `pulumi import` command, DataPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy default projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy default {{project}}/{{location}}/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy default {{location}}/{{data_policy_id}}
/// ```
class Datapolicyv2DataPolicy extends pulumi.CustomResource {
  /// The policy used to specify data masking rule.
  /// Structure is documented below.
  late final pulumi.Output<Datapolicyv2DataPolicyDataMaskingPolicy?> dataMaskingPolicy;
  /// User-assigned (human readable) ID of the data policy that needs to be
  /// unique within a project. Used as {data_policy_id} in part of the resource
  /// name.
  late final pulumi.Output<String> dataPolicyId;
  /// Type of data policy.
  /// Possible values:
  /// DATA_MASKING_POLICY
  /// RAW_DATA_ACCESS_POLICY
  /// COLUMN_LEVEL_SECURITY_POLICY
  late final pulumi.Output<String> dataPolicyType;
  /// The etag for this Data Policy.
  /// This field is used for UpdateDataPolicy calls. If Data Policy exists, this
  /// field is required and must match the server's etag. It will also be
  /// populated in the response of GetDataPolicy, CreateDataPolicy, and
  /// UpdateDataPolicy calls.
  late final pulumi.Output<String> etag;
  /// The list of IAM principals that have Fine Grained Access to the underlying
  /// data goverened by this data policy.
  /// Uses the [IAM V2 principal
  /// syntax](https://cloud.google.com/iam/docs/principal-identifiers#v2) Only
  /// supports principal types users, groups, serviceaccounts, cloudidentity.
  /// This field is supported in V2 Data Policy only. In case of V1 data policies
  /// (i.e. verion = 1 and policy_tag is set), this field is not populated.
  late final pulumi.Output<List<String>> grantees;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. Resource name of this data policy, in the format of
  /// `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  late final pulumi.Output<String> name;
  /// Policy tag resource name, in the format of
  /// `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  /// policy_tag is supported only for V1 data policies.
  late final pulumi.Output<String> policyTag;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The version of the Data Policy resource.
  /// Possible values:
  /// V1
  /// V2
  late final pulumi.Output<String> version;

  /// Creates a new [Datapolicyv2DataPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datapolicyv2DataPolicy]. {@macro pulumi_bigquery_datapolicyv2_data_policy_datapolicyv2_data_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datapolicyv2DataPolicy(
    String name, {
    Datapolicyv2DataPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataMaskingPolicy = registerOutput<Datapolicyv2DataPolicyDataMaskingPolicy?>('dataMaskingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Datapolicyv2DataPolicyDataMaskingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataPolicyId = registerOutput<String>('dataPolicyId');
    dataPolicyType = registerOutput<String>('dataPolicyType');
    etag = registerOutput<String>('etag');
    grantees = registerOutput<List<String>>('grantees');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyTag = registerOutput<String>('policyTag');
    project = registerOutput<String>('project');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Datapolicyv2DataPolicy] resource's state with the given [name] and [id].
  static Datapolicyv2DataPolicy get(
    String name,
    pulumi.Input<String> id, {
    Datapolicyv2DataPolicyState? state,
  }) {
    return Datapolicyv2DataPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Datapolicyv2DataPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataMaskingPolicy = registerOutput<Datapolicyv2DataPolicyDataMaskingPolicy?>('dataMaskingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Datapolicyv2DataPolicyDataMaskingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataPolicyId = registerOutput<String>('dataPolicyId');
    dataPolicyType = registerOutput<String>('dataPolicyType');
    etag = registerOutput<String>('etag');
    grantees = registerOutput<List<String>>('grantees');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyTag = registerOutput<String>('policyTag');
    project = registerOutput<String>('project');
    version = registerOutput<String>('version');
  }
}
