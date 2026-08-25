import 'package:pulumi/pulumi.dart' as pulumi;
import 'row_access_policy_args.dart';
import 'row_access_policy_state.dart';

/// Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy.
///
///
///
/// ## Example Usage
///
/// ### Bigquery Row Access Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.bigquery.Dataset("example", {
///     datasetId: "dataset_id",
///     location: "US",
/// });
/// const exampleTable = new gcp.bigquery.Table("example", {
///     deletionProtection: false,
///     schema: `[
///   {
///     \\"name\\": \\"nullable_field\\",
///     \\"type\\": \\"STRING\\"
///   }
/// ]
/// `,
///     datasetId: example.datasetId,
///     tableId: "table_id",
/// });
/// const exampleRowAccessPolicy = new gcp.bigquery.RowAccessPolicy("example", {
///     datasetId: example.datasetId,
///     tableId: exampleTable.tableId,
///     policyId: "policy_id",
///     filterPredicate: "nullable_field is not NULL",
///     grantees: ["domain:google.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.bigquery.Dataset("example",
///     dataset_id="dataset_id",
///     location="US")
/// example_table = gcp.bigquery.Table("example",
///     deletion_protection=False,
///     schema="""[
///   {
///     \"name\": \"nullable_field\",
///     \"type\": \"STRING\"
///   }
/// ]
/// """,
///     dataset_id=example.dataset_id,
///     table_id="table_id")
/// example_row_access_policy = gcp.bigquery.RowAccessPolicy("example",
///     dataset_id=example.dataset_id,
///     table_id=example_table.table_id,
///     policy_id="policy_id",
///     filter_predicate="nullable_field is not NULL",
///     grantees=["domain:google.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.BigQuery.Dataset("example", new()
///     {
///         DatasetId = "dataset_id",
///         Location = "US",
///     });
///
///     var exampleTable = new Gcp.BigQuery.Table("example", new()
///     {
///         DeletionProtection = false,
///         Schema = @"[
///   {
///     \""name\"": \""nullable_field\"",
///     \""type\"": \""STRING\""
///   }
/// ]
/// ",
///         DatasetId = example.DatasetId,
///         TableId = "table_id",
///     });
///
///     var exampleRowAccessPolicy = new Gcp.BigQuery.RowAccessPolicy("example", new()
///     {
///         DatasetId = example.DatasetId,
///         TableId = exampleTable.TableId,
///         PolicyId = "policy_id",
///         FilterPredicate = "nullable_field is not NULL",
///         Grantees = new[]
///         {
///             "domain:google.com",
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
/// 		example, err := bigquery.NewDataset(ctx, "example", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 			Location:  pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTable, err := bigquery.NewTable(ctx, "example", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"nullable_field\",
///     \"type\": \"STRING\"
///   }
/// ]
/// `),
/// 			DatasetId: example.DatasetId,
/// 			TableId:   pulumi.String("table_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRowAccessPolicy(ctx, "example", &bigquery.RowAccessPolicyArgs{
/// 			DatasetId:       example.DatasetId,
/// 			TableId:         exampleTable.TableId,
/// 			PolicyId:        pulumi.String("policy_id"),
/// 			FilterPredicate: pulumi.String("nullable_field is not NULL"),
/// 			Grantees: pulumi.StringArray{
/// 				pulumi.String("domain:google.com"),
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
/// resource "gcp_bigquery_dataset" "example" {
///   dataset_id = "dataset_id"
///   location   = "US"
/// }
/// resource "gcp_bigquery_table" "example" {
///   deletion_protection = false
///   schema              = "[\n  {\n    \\\"name\\\": \\\"nullable_field\\\",\n    \\\"type\\\": \\\"STRING\\\"\n  }\n]\n"
///   dataset_id          = gcp_bigquery_dataset.example.dataset_id
///   table_id            = "table_id"
/// }
/// resource "gcp_bigquery_rowaccesspolicy" "example" {
///   dataset_id       = gcp_bigquery_dataset.example.dataset_id
///   table_id         = gcp_bigquery_table.example.table_id
///   policy_id        = "policy_id"
///   filter_predicate = "nullable_field is not NULL"
///   grantees         = ["domain:google.com"]
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
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.RowAccessPolicy;
/// import com.pulumi.gcp.bigquery.RowAccessPolicyArgs;
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
///         var example = new Dataset("example", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .location("US")
///             .build());
///
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .deletionProtection(false)
///             .schema("""
/// [
///   {
///     \"name\": \"nullable_field\",
///     \"type\": \"STRING\"
///   }
/// ]
///             """)
///             .datasetId(example.datasetId())
///             .tableId("table_id")
///             .build());
///
///         var exampleRowAccessPolicy = new RowAccessPolicy("exampleRowAccessPolicy", RowAccessPolicyArgs.builder()
///             .datasetId(example.datasetId())
///             .tableId(exampleTable.tableId())
///             .policyId("policy_id")
///             .filterPredicate("nullable_field is not NULL")
///             .grantees("domain:google.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///       location: US
///   exampleTable:
///     type: gcp:bigquery:Table
///     name: example
///     properties:
///       deletionProtection: false
///       schema: |
///         [
///           {
///             \"name\": \"nullable_field\",
///             \"type\": \"STRING\"
///           }
///         ]
///       datasetId: ${example.datasetId}
///       tableId: table_id
///   exampleRowAccessPolicy:
///     type: gcp:bigquery:RowAccessPolicy
///     name: example
///     properties:
///       datasetId: ${example.datasetId}
///       tableId: ${exampleTable.tableId}
///       policyId: policy_id
///       filterPredicate: nullable_field is not NULL
///       grantees:
///         - domain:google.com
/// ```
///
///
/// ## Import
///
/// RowAccessPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}/rowAccessPolicies/{{policy_id}}`
/// * `{{project}}/{{dataset_id}}/{{table_id}}/{{policy_id}}`
/// * `{{dataset_id}}/{{table_id}}/{{policy_id}}`
///
///
/// When using the `pulumi import` command, RowAccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}/rowAccessPolicies/{{policy_id}}
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default {{project}}/{{dataset_id}}/{{table_id}}/{{policy_id}}
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default {{dataset_id}}/{{table_id}}/{{policy_id}}
/// ```
class RowAccessPolicy extends pulumi.CustomResource {
  /// The time when this row access policy was created, in milliseconds since
  /// the epoch.
  late final pulumi.Output<String> creationTime;
  /// The ID of the dataset containing this row access policy.
  late final pulumi.Output<String> datasetId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  /// References to other tables, routines, and temporary functions are not
  /// supported.
  /// Examples: region="EU"
  /// dateField = CAST('2019-9-27' as DATE)
  /// nullableField is not NULL
  /// numericField BETWEEN 1.0 AND 5.0
  late final pulumi.Output<String> filterPredicate;
  /// Input only. The optional list of iamMember users or groups that specifies the initial
  /// members that the row-level access policy should be created with.
  /// grantees types:
  /// - "user:alice@example.com": An email address that represents a specific
  /// Google account.
  /// - "serviceAccount:my-other-app@appspot.gserviceaccount.com": An email
  /// address that represents a service account.
  /// - "group:admins@example.com": An email address that represents a Google
  /// group.
  /// - "domain:example.com":The Google Workspace domain (primary) that
  /// represents all the users of that domain.
  /// - "allAuthenticatedUsers": A special identifier that represents all service
  /// accounts and all users on the internet who have authenticated with a Google
  /// Account. This identifier includes accounts that aren't connected to a
  /// Google Workspace or Cloud Identity domain, such as personal Gmail accounts.
  /// Users who aren't authenticated, such as anonymous visitors, aren't
  /// included.
  /// - "allUsers":A special identifier that represents anyone who is on
  /// the internet, including authenticated and unauthenticated users. Because
  /// BigQuery requires authentication before a user can access the service,
  /// allUsers includes only authenticated users.
  late final pulumi.Output<List<String>?> grantees;
  /// The time when this row access policy was last modified, in milliseconds
  /// since the epoch.
  late final pulumi.Output<String> lastModifiedTime;
  /// The ID of the row access policy. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 256 characters.
  late final pulumi.Output<String> policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ID of the table containing this row access policy.
  late final pulumi.Output<String> tableId;

  /// Creates a new [RowAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RowAccessPolicy]. {@macro pulumi_bigquery_row_access_policy_row_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RowAccessPolicy(
    String name, {
    RowAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/rowAccessPolicy:RowAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    creationTime = registerOutput<String>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    filterPredicate = registerOutput<String>('filterPredicate');
    grantees = registerOutput<List<String>?>('grantees', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    tableId = registerOutput<String>('tableId');
  }

  /// Gets an existing [RowAccessPolicy] resource's state with the given [name] and [id].
  static RowAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    RowAccessPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RowAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RowAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/rowAccessPolicy:RowAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTime = registerOutput<String>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    filterPredicate = registerOutput<String>('filterPredicate');
    grantees = registerOutput<List<String>?>('grantees', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    tableId = registerOutput<String>('tableId');
  }

  /// Creates a typed reference to an existing [RowAccessPolicy] resource.
  RowAccessPolicy.reference(String urn)
    : super(
        'gcp:bigquery/rowAccessPolicy:RowAccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTime = registerOutput<String>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    filterPredicate = registerOutput<String>('filterPredicate');
    grantees = registerOutput<List<String>?>('grantees', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    tableId = registerOutput<String>('tableId');
  }
}
