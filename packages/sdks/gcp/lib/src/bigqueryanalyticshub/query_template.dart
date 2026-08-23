import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_template_args.dart';
import 'query_template_routine.dart';
import 'query_template_state.dart';

/// Represents a BigQuery Query Template within a Data Exchange.
/// This resource defines a reusable SQL routine (e.g., a TVF) that can be
/// shared or executed via the Data Exchange.
///
///
/// To get more information about QueryTemplate, see:
///
/// * [API documentation](https://docs.cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.dataExchanges.queryTemplates)
/// * How-to Guides
/// * [Use query templates](https://docs.cloud.google.com/bigquery/docs/query-templates)
///
/// ## Example Usage
///
/// ### Bigquery Analyticshub Querytemplate Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const me = gcp.organizations.getClientOpenIdUserInfo({});
/// const querytemplate = new gcp.bigqueryanalyticshub.DataExchange("querytemplate", {
///     displayName: "My Audience Data Exchange",
///     dataExchangeId: "my_data_exchange",
///     description: "example of query template",
///     location: "us",
///     sharingEnvironmentConfig: {
///         dcrExchangeConfig: {},
///     },
/// });
/// const querytemplateQueryTemplate = new gcp.bigqueryanalyticshub.QueryTemplate("querytemplate", {
///     location: "us",
///     dataExchangeId: querytemplate.dataExchangeId,
///     queryTemplateId: "my_query_template",
///     displayName: "my_query_template",
///     description: "example of query template",
///     primaryContact: me.then(me => me.email),
///     documentation: "This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.",
///     routine: {
///         routineType: "TABLE_VALUED_FUNCTION",
///         definitionBody: "my_query_template() as (select * from t1)",
///     },
///     submit: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// me = gcp.organizations.get_client_open_id_user_info()
/// querytemplate = gcp.bigqueryanalyticshub.DataExchange("querytemplate",
///     display_name="My Audience Data Exchange",
///     data_exchange_id="my_data_exchange",
///     description="example of query template",
///     location="us",
///     sharing_environment_config={
///         "dcr_exchange_config": {},
///     })
/// querytemplate_query_template = gcp.bigqueryanalyticshub.QueryTemplate("querytemplate",
///     location="us",
///     data_exchange_id=querytemplate.data_exchange_id,
///     query_template_id="my_query_template",
///     display_name="my_query_template",
///     description="example of query template",
///     primary_contact=me.email,
///     documentation="This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.",
///     routine={
///         "routine_type": "TABLE_VALUED_FUNCTION",
///         "definition_body": "my_query_template() as (select * from t1)",
///     },
///     submit=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
///     var querytemplate = new Gcp.BigQueryAnalyticsHub.DataExchange("querytemplate", new()
///     {
///         DisplayName = "My Audience Data Exchange",
///         DataExchangeId = "my_data_exchange",
///         Description = "example of query template",
///         Location = "us",
///         SharingEnvironmentConfig = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSharingEnvironmentConfigArgs
///         {
///             DcrExchangeConfig = null,
///         },
///     });
///
///     var querytemplateQueryTemplate = new Gcp.BigQueryAnalyticsHub.QueryTemplate("querytemplate", new()
///     {
///         Location = "us",
///         DataExchangeId = querytemplate.DataExchangeId,
///         QueryTemplateId = "my_query_template",
///         DisplayName = "my_query_template",
///         Description = "example of query template",
///         PrimaryContact = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
///         Documentation = "This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.",
///         Routine = new Gcp.BigQueryAnalyticsHub.Inputs.QueryTemplateRoutineArgs
///         {
///             RoutineType = "TABLE_VALUED_FUNCTION",
///             DefinitionBody = "my_query_template() as (select * from t1)",
///         },
///         Submit = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		querytemplate, err := bigqueryanalyticshub.NewDataExchange(ctx, "querytemplate", &bigqueryanalyticshub.DataExchangeArgs{
/// 			DisplayName:    pulumi.String("My Audience Data Exchange"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("example of query template"),
/// 			Location:       pulumi.String("us"),
/// 			SharingEnvironmentConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigArgs{
/// 				DcrExchangeConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewQueryTemplate(ctx, "querytemplate", &bigqueryanalyticshub.QueryTemplateArgs{
/// 			Location:        pulumi.String("us"),
/// 			DataExchangeId:  querytemplate.DataExchangeId,
/// 			QueryTemplateId: pulumi.String("my_query_template"),
/// 			DisplayName:     pulumi.String("my_query_template"),
/// 			Description:     pulumi.String("example of query template"),
/// 			PrimaryContact:  pulumi.String(me.Email),
/// 			Documentation:   pulumi.String("This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through."),
/// 			Routine: &bigqueryanalyticshub.QueryTemplateRoutineArgs{
/// 				RoutineType:    pulumi.String("TABLE_VALUED_FUNCTION"),
/// 				DefinitionBody: pulumi.String("my_query_template() as (select * from t1)"),
/// 			},
/// 			Submit: pulumi.Bool(false),
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
/// data "gcp_organizations_getclientopeniduserinfo" "me" {
/// }
///
/// resource "gcp_bigqueryanalyticshub_dataexchange" "querytemplate" {
///   display_name     = "My Audience Data Exchange"
///   data_exchange_id = "my_data_exchange"
///   description      = "example of query template"
///   location         = "us"
///   sharing_environment_config = {
///     dcr_exchange_config = {}
///   }
/// }
/// resource "gcp_bigqueryanalyticshub_querytemplate" "querytemplate" {
///   location          = "us"
///   data_exchange_id  = gcp_bigqueryanalyticshub_dataexchange.querytemplate.data_exchange_id
///   query_template_id = "my_query_template"
///   display_name      = "my_query_template"
///   description       = "example of query template"
///   primary_contact   = data.gcp_organizations_getclientopeniduserinfo.me.email
///   documentation     = "This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through."
///   routine = {
///     routine_type    = "TABLE_VALUED_FUNCTION"
///     definition_body = "my_query_template() as (select * from t1)"
///   }
///   submit = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.QueryTemplate;
/// import com.pulumi.gcp.bigqueryanalyticshub.QueryTemplateArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.QueryTemplateRoutineArgs;
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
///         final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var querytemplate = new DataExchange("querytemplate", DataExchangeArgs.builder()
///             .displayName("My Audience Data Exchange")
///             .dataExchangeId("my_data_exchange")
///             .description("example of query template")
///             .location("us")
///             .sharingEnvironmentConfig(DataExchangeSharingEnvironmentConfigArgs.builder()
///                 .dcrExchangeConfig(DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var querytemplateQueryTemplate = new QueryTemplate("querytemplateQueryTemplate", QueryTemplateArgs.builder()
///             .location("us")
///             .dataExchangeId(querytemplate.dataExchangeId())
///             .queryTemplateId("my_query_template")
///             .displayName("my_query_template")
///             .description("example of query template")
///             .primaryContact(me.email())
///             .documentation("This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.")
///             .routine(QueryTemplateRoutineArgs.builder()
///                 .routineType("TABLE_VALUED_FUNCTION")
///                 .definitionBody("my_query_template() as (select * from t1)")
///                 .build())
///             .submit(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   querytemplate:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       displayName: My Audience Data Exchange
///       dataExchangeId: my_data_exchange
///       description: example of query template
///       location: us
///       sharingEnvironmentConfig:
///         dcrExchangeConfig: {}
///   querytemplateQueryTemplate:
///     type: gcp:bigqueryanalyticshub:QueryTemplate
///     name: querytemplate
///     properties:
///       location: us
///       dataExchangeId: ${querytemplate.dataExchangeId}
///       queryTemplateId: my_query_template
///       displayName: my_query_template
///       description: example of query template
///       primaryContact: ${me.email}
///       documentation: This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.
///       routine:
///         routineType: TABLE_VALUED_FUNCTION
///         definitionBody: my_query_template() as (select * from t1)
///       submit: false
/// variables:
///   me:
///     fn::invoke:
///       function: gcp:organizations:getClientOpenIdUserInfo
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// QueryTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/queryTemplates/{{query_template_id}}`
/// * `{{project}}/{{location}}/{{data_exchange_id}}/{{query_template_id}}`
/// * `{{location}}/{{data_exchange_id}}/{{query_template_id}}`
///
///
/// When using the `pulumi import` command, QueryTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/queryTemplate:QueryTemplate default projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/queryTemplates/{{query_template_id}}
/// $ pulumi import gcp:bigqueryanalyticshub/queryTemplate:QueryTemplate default {{project}}/{{location}}/{{data_exchange_id}}/{{query_template_id}}
/// $ pulumi import gcp:bigqueryanalyticshub/queryTemplate:QueryTemplate default {{location}}/{{data_exchange_id}}/{{query_template_id}}
/// ```
class QueryTemplate extends pulumi.CustomResource {
  /// Timestamp when the QueryTemplate was created.
  late final pulumi.Output<String> createTime;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;
  /// Sets the policy for deleting the QueryTemplate. Defaults to `DELETE_IF_DRAFTED`.
  /// * `ABANDON`: Untracks the resource from Terraform state but leaves it intact in BigQuery.
  /// * `DELETE`: Deletes the QueryTemplate from BigQuery.
  /// * `DELETE_IF_DRAFTED`: Deletes the QueryTemplate only if it is in a `DRAFTED` state; otherwise, it abandons it.
  /// * `PREVENT`: Prevents deletion of the QueryTemplate.
  late final pulumi.Output<String> deletionPolicy;
  /// Short description of the QueryTemplate. The description must not contain
  /// Unicode non-characters and C0 and C1 control codes except tabs,
  /// new lines, carriage returns, and page breaks.
  /// Default value is an empty string. Max length: 2000 bytes.
  late final pulumi.Output<String?> description;
  /// Human-readable display name of the QueryTemplate. The display name must
  /// contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
  /// spaces ( ), ampersands (&) and can't start or end with spaces. Default
  /// value is an empty string.
  late final pulumi.Output<String> displayName;
  /// Documentation describing the QueryTemplate.
  late final pulumi.Output<String?> documentation;
  /// The name of the location this data exchange query template.
  late final pulumi.Output<String> location;
  /// The resource name of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/queryTemplates/456`
  late final pulumi.Output<String> name;
  /// Email or URL of the primary point of contact of the QueryTemplate.
  late final pulumi.Output<String?> primaryContact;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Unique QueryTemplate ID.
  late final pulumi.Output<String> queryTemplateId;
  /// The routine associated with the QueryTemplate.
  /// Structure is documented below.
  late final pulumi.Output<QueryTemplateRoutine?> routine;
  /// The QueryTemplate lifecycle state.
  late final pulumi.Output<String> state;
  /// If set to `true`, the QueryTemplate will be submitted for approval and cannot be updated afterwards. This is a one-time action.
  late final pulumi.Output<bool?> submit;
  /// Timestamp when the QueryTemplate was last modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [QueryTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueryTemplate]. {@macro pulumi_bigqueryanalyticshub_query_template_query_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueryTemplate(
    String name, {
    QueryTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/queryTemplate:QueryTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryContact = registerOutput<String?>('primaryContact');
    project = registerOutput<String>('project');
    queryTemplateId = registerOutput<String>('queryTemplateId');
    routine = registerOutput<QueryTemplateRoutine?>('routine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryTemplateRoutine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    submit = registerOutput<bool?>('submit');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [QueryTemplate] resource's state with the given [name] and [id].
  static QueryTemplate get(
    String name,
    pulumi.Input<String> id, {
    QueryTemplateState? state,
  }) {
    return QueryTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QueryTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/queryTemplate:QueryTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryContact = registerOutput<String?>('primaryContact');
    project = registerOutput<String>('project');
    queryTemplateId = registerOutput<String>('queryTemplateId');
    routine = registerOutput<QueryTemplateRoutine?>('routine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryTemplateRoutine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    submit = registerOutput<bool?>('submit');
    updateTime = registerOutput<String>('updateTime');
  }
}
