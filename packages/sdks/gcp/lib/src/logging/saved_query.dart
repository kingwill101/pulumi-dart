import 'package:pulumi/pulumi.dart' as pulumi;
import 'saved_query_args.dart';
import 'saved_query_logging_query.dart';
import 'saved_query_ops_analytics_query.dart';
import 'saved_query_state.dart';

/// Describes a query that has been saved by a user.
///
///
/// To get more information about SavedQuery, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.locations.savedQueries)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
/// * [Save and share SQL queries](https://docs.cloud.google.com/logging/docs/analyze/save-share-query)
/// * [Save and share queries](https://docs.cloud.google.com/logging/docs/view/building-queries#saved-queries)
///
/// ## Example Usage
///
/// ### Logging Saved Query Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const savedQuery = new gcp.logging.SavedQuery("saved_query", {
///     name: "my-saved-query",
///     displayName: "My Saved Query",
///     parent: "projects/my-project-name",
///     location: "global",
///     description: "A saved query",
///     loggingQuery: {
///         filter: "resource.type=gce_instance",
///     },
///     visibility: "SHARED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// saved_query = gcp.logging.SavedQuery("saved_query",
///     name="my-saved-query",
///     display_name="My Saved Query",
///     parent="projects/my-project-name",
///     location="global",
///     description="A saved query",
///     logging_query={
///         "filter": "resource.type=gce_instance",
///     },
///     visibility="SHARED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var savedQuery = new Gcp.Logging.SavedQuery("saved_query", new()
///     {
///         Name = "my-saved-query",
///         DisplayName = "My Saved Query",
///         Parent = "projects/my-project-name",
///         Location = "global",
///         Description = "A saved query",
///         LoggingQuery = new Gcp.Logging.Inputs.SavedQueryLoggingQueryArgs
///         {
///             Filter = "resource.type=gce_instance",
///         },
///         Visibility = "SHARED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewSavedQuery(ctx, "saved_query", &logging.SavedQueryArgs{
/// 			Name:        pulumi.String("my-saved-query"),
/// 			DisplayName: pulumi.String("My Saved Query"),
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A saved query"),
/// 			LoggingQuery: &logging.SavedQueryLoggingQueryArgs{
/// 				Filter: pulumi.String("resource.type=gce_instance"),
/// 			},
/// 			Visibility: pulumi.String("SHARED"),
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
/// resource "gcp_logging_savedquery" "saved_query" {
///   name         = "my-saved-query"
///   display_name = "My Saved Query"
///   parent       = "projects/my-project-name"
///   location     = "global"
///   description  = "A saved query"
///   logging_query = {
///     filter = "resource.type=gce_instance"
///   }
///   visibility = "SHARED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.SavedQuery;
/// import com.pulumi.gcp.logging.SavedQueryArgs;
/// import com.pulumi.gcp.logging.inputs.SavedQueryLoggingQueryArgs;
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
///         var savedQuery = new SavedQuery("savedQuery", SavedQueryArgs.builder()
///             .name("my-saved-query")
///             .displayName("My Saved Query")
///             .parent("projects/my-project-name")
///             .location("global")
///             .description("A saved query")
///             .loggingQuery(SavedQueryLoggingQueryArgs.builder()
///                 .filter("resource.type=gce_instance")
///                 .build())
///             .visibility("SHARED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   savedQuery:
///     type: gcp:logging:SavedQuery
///     name: saved_query
///     properties:
///       name: my-saved-query
///       displayName: My Saved Query
///       parent: projects/my-project-name
///       location: global
///       description: A saved query
///       loggingQuery:
///         filter: resource.type=gce_instance
///       visibility: SHARED
/// ```
///
/// ### Logging Saved Query Private
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const savedQuery = new gcp.logging.SavedQuery("saved_query", {
///     name: "my-saved-query-private",
///     displayName: "My Saved Query",
///     parent: "projects/my-project-name",
///     location: "global",
///     description: "A saved query",
///     loggingQuery: {
///         filter: "resource.type=gce_instance",
///     },
///     visibility: "PRIVATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// saved_query = gcp.logging.SavedQuery("saved_query",
///     name="my-saved-query-private",
///     display_name="My Saved Query",
///     parent="projects/my-project-name",
///     location="global",
///     description="A saved query",
///     logging_query={
///         "filter": "resource.type=gce_instance",
///     },
///     visibility="PRIVATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var savedQuery = new Gcp.Logging.SavedQuery("saved_query", new()
///     {
///         Name = "my-saved-query-private",
///         DisplayName = "My Saved Query",
///         Parent = "projects/my-project-name",
///         Location = "global",
///         Description = "A saved query",
///         LoggingQuery = new Gcp.Logging.Inputs.SavedQueryLoggingQueryArgs
///         {
///             Filter = "resource.type=gce_instance",
///         },
///         Visibility = "PRIVATE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewSavedQuery(ctx, "saved_query", &logging.SavedQueryArgs{
/// 			Name:        pulumi.String("my-saved-query-private"),
/// 			DisplayName: pulumi.String("My Saved Query"),
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A saved query"),
/// 			LoggingQuery: &logging.SavedQueryLoggingQueryArgs{
/// 				Filter: pulumi.String("resource.type=gce_instance"),
/// 			},
/// 			Visibility: pulumi.String("PRIVATE"),
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
/// resource "gcp_logging_savedquery" "saved_query" {
///   name         = "my-saved-query-private"
///   display_name = "My Saved Query"
///   parent       = "projects/my-project-name"
///   location     = "global"
///   description  = "A saved query"
///   logging_query = {
///     filter = "resource.type=gce_instance"
///   }
///   visibility = "PRIVATE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.SavedQuery;
/// import com.pulumi.gcp.logging.SavedQueryArgs;
/// import com.pulumi.gcp.logging.inputs.SavedQueryLoggingQueryArgs;
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
///         var savedQuery = new SavedQuery("savedQuery", SavedQueryArgs.builder()
///             .name("my-saved-query-private")
///             .displayName("My Saved Query")
///             .parent("projects/my-project-name")
///             .location("global")
///             .description("A saved query")
///             .loggingQuery(SavedQueryLoggingQueryArgs.builder()
///                 .filter("resource.type=gce_instance")
///                 .build())
///             .visibility("PRIVATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   savedQuery:
///     type: gcp:logging:SavedQuery
///     name: saved_query
///     properties:
///       name: my-saved-query-private
///       displayName: My Saved Query
///       parent: projects/my-project-name
///       location: global
///       description: A saved query
///       loggingQuery:
///         filter: resource.type=gce_instance
///       visibility: PRIVATE
/// ```
///
/// ### Logging Saved Query Summary Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const savedQuery = new gcp.logging.SavedQuery("saved_query", {
///     name: "my-saved-query-summary-fields",
///     displayName: "My Saved Query",
///     parent: "projects/my-project-name",
///     location: "global",
///     description: "A saved query",
///     loggingQuery: {
///         filter: "resource.type=gce_instance",
///         summaryFields: [
///             {
///                 field: "jsonPayload.paymentId",
///             },
///             {
///                 field: "jsonPayload.errorMessage",
///             },
///         ],
///         summaryFieldStart: 100,
///     },
///     visibility: "SHARED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// saved_query = gcp.logging.SavedQuery("saved_query",
///     name="my-saved-query-summary-fields",
///     display_name="My Saved Query",
///     parent="projects/my-project-name",
///     location="global",
///     description="A saved query",
///     logging_query={
///         "filter": "resource.type=gce_instance",
///         "summary_fields": [
///             {
///                 "field": "jsonPayload.paymentId",
///             },
///             {
///                 "field": "jsonPayload.errorMessage",
///             },
///         ],
///         "summary_field_start": 100,
///     },
///     visibility="SHARED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var savedQuery = new Gcp.Logging.SavedQuery("saved_query", new()
///     {
///         Name = "my-saved-query-summary-fields",
///         DisplayName = "My Saved Query",
///         Parent = "projects/my-project-name",
///         Location = "global",
///         Description = "A saved query",
///         LoggingQuery = new Gcp.Logging.Inputs.SavedQueryLoggingQueryArgs
///         {
///             Filter = "resource.type=gce_instance",
///             SummaryFields = new[]
///             {
///                 new Gcp.Logging.Inputs.SavedQueryLoggingQuerySummaryFieldArgs
///                 {
///                     Field = "jsonPayload.paymentId",
///                 },
///                 new Gcp.Logging.Inputs.SavedQueryLoggingQuerySummaryFieldArgs
///                 {
///                     Field = "jsonPayload.errorMessage",
///                 },
///             },
///             SummaryFieldStart = 100,
///         },
///         Visibility = "SHARED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewSavedQuery(ctx, "saved_query", &logging.SavedQueryArgs{
/// 			Name:        pulumi.String("my-saved-query-summary-fields"),
/// 			DisplayName: pulumi.String("My Saved Query"),
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A saved query"),
/// 			LoggingQuery: &logging.SavedQueryLoggingQueryArgs{
/// 				Filter: pulumi.String("resource.type=gce_instance"),
/// 				SummaryFields: logging.SavedQueryLoggingQuerySummaryFieldArray{
/// 					&logging.SavedQueryLoggingQuerySummaryFieldArgs{
/// 						Field: pulumi.String("jsonPayload.paymentId"),
/// 					},
/// 					&logging.SavedQueryLoggingQuerySummaryFieldArgs{
/// 						Field: pulumi.String("jsonPayload.errorMessage"),
/// 					},
/// 				},
/// 				SummaryFieldStart: pulumi.Int(100),
/// 			},
/// 			Visibility: pulumi.String("SHARED"),
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
/// resource "gcp_logging_savedquery" "saved_query" {
///   name         = "my-saved-query-summary-fields"
///   display_name = "My Saved Query"
///   parent       = "projects/my-project-name"
///   location     = "global"
///   description  = "A saved query"
///   logging_query = {
///     filter = "resource.type=gce_instance"
///     summary_fields = [{
///       "field" = "jsonPayload.paymentId"
///       }, {
///       "field" = "jsonPayload.errorMessage"
///     }]
///     summary_field_start = 100
///   }
///   # truncates after the first 100 characters
///   visibility = "SHARED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.SavedQuery;
/// import com.pulumi.gcp.logging.SavedQueryArgs;
/// import com.pulumi.gcp.logging.inputs.SavedQueryLoggingQueryArgs;
/// import com.pulumi.gcp.logging.inputs.SavedQueryLoggingQuerySummaryFieldArgs;
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
///         var savedQuery = new SavedQuery("savedQuery", SavedQueryArgs.builder()
///             .name("my-saved-query-summary-fields")
///             .displayName("My Saved Query")
///             .parent("projects/my-project-name")
///             .location("global")
///             .description("A saved query")
///             .loggingQuery(SavedQueryLoggingQueryArgs.builder()
///                 .filter("resource.type=gce_instance")
///                 .summaryFields(
///                     SavedQueryLoggingQuerySummaryFieldArgs.builder()
///                         .field("jsonPayload.paymentId")
///                         .build(),
///                     SavedQueryLoggingQuerySummaryFieldArgs.builder()
///                         .field("jsonPayload.errorMessage")
///                         .build())
///                 .summaryFieldStart(100)
///                 .build())
///             .visibility("SHARED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   savedQuery:
///     type: gcp:logging:SavedQuery
///     name: saved_query
///     properties:
///       name: my-saved-query-summary-fields
///       displayName: My Saved Query
///       parent: projects/my-project-name
///       location: global
///       description: A saved query
///       loggingQuery:
///         filter: resource.type=gce_instance
///         summaryFields:
///           - field: jsonPayload.paymentId
///           - field: jsonPayload.errorMessage
///         summaryFieldStart: 100
///       visibility: SHARED
/// ```
///
/// ### Logging Saved Query Sql Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const savedQuery = new gcp.logging.SavedQuery("saved_query", {
///     name: "my-saved-query-sql",
///     displayName: "My Saved Query",
///     parent: "projects/my-project-name",
///     location: "global",
///     description: "A saved query",
///     opsAnalyticsQuery: {
///         sqlQueryText: `SELECT
///   timestamp, log_name, severity, json_payload, resource, labels
/// FROM
///   VIEW
/// WHERE
///   timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)
/// ORDER BY timestamp ASC
/// LIMIT 100
/// `,
///     },
///     visibility: "SHARED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// saved_query = gcp.logging.SavedQuery("saved_query",
///     name="my-saved-query-sql",
///     display_name="My Saved Query",
///     parent="projects/my-project-name",
///     location="global",
///     description="A saved query",
///     ops_analytics_query={
///         "sql_query_text": """SELECT
///   timestamp, log_name, severity, json_payload, resource, labels
/// FROM
///   VIEW
/// WHERE
///   timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)
/// ORDER BY timestamp ASC
/// LIMIT 100
/// """,
///     },
///     visibility="SHARED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var savedQuery = new Gcp.Logging.SavedQuery("saved_query", new()
///     {
///         Name = "my-saved-query-sql",
///         DisplayName = "My Saved Query",
///         Parent = "projects/my-project-name",
///         Location = "global",
///         Description = "A saved query",
///         OpsAnalyticsQuery = new Gcp.Logging.Inputs.SavedQueryOpsAnalyticsQueryArgs
///         {
///             SqlQueryText = @"SELECT
///   timestamp, log_name, severity, json_payload, resource, labels
/// FROM
///   VIEW
/// WHERE
///   timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)
/// ORDER BY timestamp ASC
/// LIMIT 100
/// ",
///         },
///         Visibility = "SHARED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewSavedQuery(ctx, "saved_query", &logging.SavedQueryArgs{
/// 			Name:        pulumi.String("my-saved-query-sql"),
/// 			DisplayName: pulumi.String("My Saved Query"),
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A saved query"),
/// 			OpsAnalyticsQuery: &logging.SavedQueryOpsAnalyticsQueryArgs{
/// 				SqlQueryText: pulumi.String(`SELECT
///   timestamp, log_name, severity, json_payload, resource, labels
/// FROM
///   VIEW
/// WHERE
///   timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)
/// ORDER BY timestamp ASC
/// LIMIT 100
/// `),
/// 			},
/// 			Visibility: pulumi.String("SHARED"),
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
/// resource "gcp_logging_savedquery" "saved_query" {
///   name         = "my-saved-query-sql"
///   display_name = "My Saved Query"
///   parent       = "projects/my-project-name"
///   location     = "global"
///   description  = "A saved query"
///   ops_analytics_query = {
///     sql_query_text = "SELECT\n  timestamp, log_name, severity, json_payload, resource, labels\nFROM\n  VIEW\nWHERE\n  timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)\nORDER BY timestamp ASC\nLIMIT 100\n"
///   }
///   visibility = "SHARED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.SavedQuery;
/// import com.pulumi.gcp.logging.SavedQueryArgs;
/// import com.pulumi.gcp.logging.inputs.SavedQueryOpsAnalyticsQueryArgs;
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
///         var savedQuery = new SavedQuery("savedQuery", SavedQueryArgs.builder()
///             .name("my-saved-query-sql")
///             .displayName("My Saved Query")
///             .parent("projects/my-project-name")
///             .location("global")
///             .description("A saved query")
///             .opsAnalyticsQuery(SavedQueryOpsAnalyticsQueryArgs.builder()
///                 .sqlQueryText("""
/// SELECT
///   timestamp, log_name, severity, json_payload, resource, labels
/// FROM
///   VIEW
/// WHERE
///   timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)
/// ORDER BY timestamp ASC
/// LIMIT 100
///                 """)
///                 .build())
///             .visibility("SHARED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   savedQuery:
///     type: gcp:logging:SavedQuery
///     name: saved_query
///     properties:
///       name: my-saved-query-sql
///       displayName: My Saved Query
///       parent: projects/my-project-name
///       location: global
///       description: A saved query
///       opsAnalyticsQuery:
///         sqlQueryText: |
///           SELECT
///             timestamp, log_name, severity, json_payload, resource, labels
///           FROM
///             VIEW
///           WHERE
///             timestamp > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR)
///           ORDER BY timestamp ASC
///           LIMIT 100
///       visibility: SHARED
/// ```
///
///
/// ## Import
///
/// SavedQuery can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/savedQueries/{{name}}`
///
///
/// When using the `pulumi import` command, SavedQuery can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/savedQuery:SavedQuery default {{parent}}/locations/{{location}}/savedQueries/{{name}}
/// ```
class SavedQuery extends pulumi.CustomResource {
  /// Output only. The creation timestamp of the saved query.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the saved query.
  late final pulumi.Output<String?> description;
  /// The user-visible display name of the saved query.
  late final pulumi.Output<String> displayName;
  /// The location of the resource see
  /// [supported regions](https://docs.cloud.google.com/logging/docs/region-support#bucket-regions).
  late final pulumi.Output<String> location;
  /// The contents of the saved query.
  /// Structure is documented below.
  late final pulumi.Output<SavedQueryLoggingQuery?> loggingQuery;
  /// The name of the saved query. For example: `my-saved-query`
  late final pulumi.Output<String> name;
  /// The contents of the saved query.
  /// Structure is documented below.
  late final pulumi.Output<SavedQueryOpsAnalyticsQuery?> opsAnalyticsQuery;
  /// The parent of the resource.
  late final pulumi.Output<String> parent;
  /// Output only. The last update timestamp of the saved query.
  late final pulumi.Output<String> updateTime;
  /// The visibility of the saved query.
  /// Possible values are: `SHARED`, `PRIVATE`.
  late final pulumi.Output<String> visibility;

  /// Creates a new [SavedQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SavedQuery]. {@macro pulumi_logging_saved_query_saved_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SavedQuery(
    String name, {
    SavedQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/savedQuery:SavedQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    loggingQuery = registerOutput<SavedQueryLoggingQuery?>('loggingQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavedQueryLoggingQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    opsAnalyticsQuery = registerOutput<SavedQueryOpsAnalyticsQuery?>('opsAnalyticsQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavedQueryOpsAnalyticsQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String>('parent');
    updateTime = registerOutput<String>('updateTime');
    visibility = registerOutput<String>('visibility');
  }

  /// Gets an existing [SavedQuery] resource's state with the given [name] and [id].
  static SavedQuery get(
    String name,
    pulumi.Input<String> id, {
    SavedQueryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SavedQuery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SavedQuery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/savedQuery:SavedQuery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    loggingQuery = registerOutput<SavedQueryLoggingQuery?>('loggingQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavedQueryLoggingQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    opsAnalyticsQuery = registerOutput<SavedQueryOpsAnalyticsQuery?>('opsAnalyticsQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavedQueryOpsAnalyticsQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String>('parent');
    updateTime = registerOutput<String>('updateTime');
    visibility = registerOutput<String>('visibility');
  }

  /// Creates a typed reference to an existing [SavedQuery] resource.
  SavedQuery.reference(String urn)
    : super(
        'gcp:logging/savedQuery:SavedQuery',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    loggingQuery = registerOutput<SavedQueryLoggingQuery?>('loggingQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavedQueryLoggingQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    opsAnalyticsQuery = registerOutput<SavedQueryOpsAnalyticsQuery?>('opsAnalyticsQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavedQueryOpsAnalyticsQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parent = registerOutput<String>('parent');
    updateTime = registerOutput<String>('updateTime');
    visibility = registerOutput<String>('visibility');
  }
}
