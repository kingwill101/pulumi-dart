import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_template_args.dart';
import 'query_template_encryption_configuration.dart';
import 'query_template_routine.dart';
import 'query_template_state.dart';

/// Represents a BigQuery Query Template within a Data Exchange.
/// This resource defines a reusable SQL routine (e.g., a TVF) that can be
/// shared or executed via the Data Exchange.
/// &gt; **Note:** Approving a Query Template is not supported by Terraform. The approve flow includes steps that can only be performed through the Google Cloud console UI. You can still create a Query Template (e.g. a TVF) and add it as a listing to a Data Clean Room via Terraform, but the final approval must be done manually.
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_client_open_id_user_info" "me" {
/// }
///
/// resource "gcp_bigqueryanalyticshub_data_exchange" "querytemplate" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name     = "My Audience Data Exchange"
///   data_exchange_id = "my_data_exchange"
///   description      = "example of query template"
///   location         = "us"
///   sharing_environment_config = {
///     dcr_exchange_config = {}
///   }
/// }
/// resource "gcp_bigqueryanalyticshub_query_template" "querytemplate" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location          = "us"
///   data_exchange_id  = gcp_bigqueryanalyticshub_data_exchange.querytemplate.data_exchange_id
///   query_template_id = "my_query_template"
///   display_name      = "my_query_template"
///   description       = "example of query template"
///   primary_contact   = data.gcp_organizations_client_open_id_user_info.me.email
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
/// ### Bigquery Analyticshub Querytemplate Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const me = gcp.organizations.getClientOpenIdUserInfo({});
/// const analyticshubSa = new gcp.projects.ServiceIdentity("analyticshub_sa", {service: "analyticshub.googleapis.com"});
/// const waitForSa = new time.Sleep("wait_for_sa", {createDuration: "30s"}, {
///     dependsOn: [analyticshubSa],
/// });
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: analyticshubSa.member,
/// }, {
///     dependsOn: [waitForSa],
/// });
/// const waitForIam = new time.Sleep("wait_for_iam", {createDuration: "30s"}, {
///     dependsOn: [cryptoKey],
/// });
/// const querytemplate = new gcp.bigqueryanalyticshub.DataExchange("querytemplate", {
///     displayName: "My Audience Data Exchange",
///     dataExchangeId: "my_data_exchange",
///     description: "example of query template with cmek",
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
///     description: "example of query template with cmek",
///     primaryContact: me.then(me => me.email),
///     documentation: "This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.",
///     routine: {
///         routineType: "TABLE_VALUED_FUNCTION",
///         definitionBody: "my_query_template() as (select * from t1)",
///     },
///     encryptionConfiguration: {
///         kmsKeyName: "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key",
///     },
/// }, {
///     dependsOn: [waitForIam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// me = gcp.organizations.get_client_open_id_user_info()
/// analyticshub_sa = gcp.projects.ServiceIdentity("analyticshub_sa", service="analyticshub.googleapis.com")
/// wait_for_sa = time.Sleep("wait_for_sa", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[analyticshub_sa]))
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=analyticshub_sa.member,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_sa]))
/// wait_for_iam = time.Sleep("wait_for_iam", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
/// querytemplate = gcp.bigqueryanalyticshub.DataExchange("querytemplate",
///     display_name="My Audience Data Exchange",
///     data_exchange_id="my_data_exchange",
///     description="example of query template with cmek",
///     location="us",
///     sharing_environment_config={
///         "dcr_exchange_config": {},
///     })
/// querytemplate_query_template = gcp.bigqueryanalyticshub.QueryTemplate("querytemplate",
///     location="us",
///     data_exchange_id=querytemplate.data_exchange_id,
///     query_template_id="my_query_template",
///     display_name="my_query_template",
///     description="example of query template with cmek",
///     primary_contact=me.email,
///     documentation="This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.",
///     routine={
///         "routine_type": "TABLE_VALUED_FUNCTION",
///         "definition_body": "my_query_template() as (select * from t1)",
///     },
///     encryption_configuration={
///         "kms_key_name": "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
///     var analyticshubSa = new Gcp.Projects.ServiceIdentity("analyticshub_sa", new()
///     {
///         Service = "analyticshub.googleapis.com",
///     });
///
///     var waitForSa = new Time.Sleep("wait_for_sa", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             analyticshubSa,
///         },
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = analyticshubSa.Member,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForSa,
///         },
///     });
///
///     var waitForIam = new Time.Sleep("wait_for_iam", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKey,
///         },
///     });
///
///     var querytemplate = new Gcp.BigQueryAnalyticsHub.DataExchange("querytemplate", new()
///     {
///         DisplayName = "My Audience Data Exchange",
///         DataExchangeId = "my_data_exchange",
///         Description = "example of query template with cmek",
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
///         Description = "example of query template with cmek",
///         PrimaryContact = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
///         Documentation = "This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.",
///         Routine = new Gcp.BigQueryAnalyticsHub.Inputs.QueryTemplateRoutineArgs
///         {
///             RoutineType = "TABLE_VALUED_FUNCTION",
///             DefinitionBody = "my_query_template() as (select * from t1)",
///         },
///         EncryptionConfiguration = new Gcp.BigQueryAnalyticsHub.Inputs.QueryTemplateEncryptionConfigurationArgs
///         {
///             KmsKeyName = "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForIam,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		analyticshubSa, err := projects.NewServiceIdentity(ctx, "analyticshub_sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("analyticshub.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForSa, err := time.NewSleep(ctx, "wait_for_sa", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			analyticshubSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      analyticshubSa.Member,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForIam, err := time.NewSleep(ctx, "wait_for_iam", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKey,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		querytemplate, err := bigqueryanalyticshub.NewDataExchange(ctx, "querytemplate", &bigqueryanalyticshub.DataExchangeArgs{
/// 			DisplayName:    pulumi.String("My Audience Data Exchange"),
/// 			DataExchangeId: pulumi.String("my_data_exchange"),
/// 			Description:    pulumi.String("example of query template with cmek"),
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
/// 			Description:     pulumi.String("example of query template with cmek"),
/// 			PrimaryContact:  pulumi.String(me.Email),
/// 			Documentation:   pulumi.String("This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through."),
/// 			Routine: &bigqueryanalyticshub.QueryTemplateRoutineArgs{
/// 				RoutineType:    pulumi.String("TABLE_VALUED_FUNCTION"),
/// 				DefinitionBody: pulumi.String("my_query_template() as (select * from t1)"),
/// 			},
/// 			EncryptionConfiguration: &bigqueryanalyticshub.QueryTemplateEncryptionConfigurationArgs{
/// 				KmsKeyName: pulumi.String("projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForIam,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_client_open_id_user_info" "me" {
/// }
///
/// resource "gcp_projects_service_identity" "analyticshub_sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   service = "analyticshub.googleapis.com"
/// }
/// resource "time_sleep" "wait_for_sa" {
///   depends_on = [gcp_projects_service_identity.analyticshub_sa]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "30s"
/// }
/// resource "gcp_kms_crypto_key_i_a_m_member" "crypto_key" {
///   depends_on = [time_sleep.wait_for_sa]
///   lifecycle {
///     create_before_destroy = true
///   }
///   crypto_key_id = "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        = gcp_projects_service_identity.analyticshub_sa.member
/// }
/// resource "time_sleep" "wait_for_iam" {
///   depends_on = [gcp_kms_crypto_key_i_a_m_member.crypto_key]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "30s"
/// }
/// resource "gcp_bigqueryanalyticshub_data_exchange" "querytemplate" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name     = "My Audience Data Exchange"
///   data_exchange_id = "my_data_exchange"
///   description      = "example of query template with cmek"
///   location         = "us"
///   sharing_environment_config = {
///     dcr_exchange_config = {}
///   }
/// }
/// resource "gcp_bigqueryanalyticshub_query_template" "querytemplate" {
///   depends_on = [time_sleep.wait_for_iam]
///   lifecycle {
///     create_before_destroy = true
///   }
///   location          = "us"
///   data_exchange_id  = gcp_bigqueryanalyticshub_data_exchange.querytemplate.data_exchange_id
///   query_template_id = "my_query_template"
///   display_name      = "my_query_template"
///   description       = "example of query template with cmek"
///   primary_contact   = data.gcp_organizations_client_open_id_user_info.me.email
///   documentation     = "This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through."
///   routine = {
///     routine_type    = "TABLE_VALUED_FUNCTION"
///     definition_body = "my_query_template() as (select * from t1)"
///   }
///   encryption_configuration = {
///     kms_key_name = "projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.QueryTemplate;
/// import com.pulumi.gcp.bigqueryanalyticshub.QueryTemplateArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.QueryTemplateRoutineArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.QueryTemplateEncryptionConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var analyticshubSa = new ServiceIdentity("analyticshubSa", ServiceIdentityArgs.builder()
///             .service("analyticshub.googleapis.com")
///             .build());
///
///         var waitForSa = new Sleep("waitForSa", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(analyticshubSa)
///                 .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(analyticshubSa.member())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForSa)
///                 .build());
///
///         var waitForIam = new Sleep("waitForIam", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKey)
///                 .build());
///
///         var querytemplate = new DataExchange("querytemplate", DataExchangeArgs.builder()
///             .displayName("My Audience Data Exchange")
///             .dataExchangeId("my_data_exchange")
///             .description("example of query template with cmek")
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
///             .description("example of query template with cmek")
///             .primaryContact(me.email())
///             .documentation("This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.")
///             .routine(QueryTemplateRoutineArgs.builder()
///                 .routineType("TABLE_VALUED_FUNCTION")
///                 .definitionBody("my_query_template() as (select * from t1)")
///                 .build())
///             .encryptionConfiguration(QueryTemplateEncryptionConfigurationArgs.builder()
///                 .kmsKeyName("projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForIam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   analyticshubSa:
///     type: gcp:projects:ServiceIdentity
///     name: analyticshub_sa
///     properties:
///       service: analyticshub.googleapis.com
///   waitForSa:
///     type: time:Sleep
///     name: wait_for_sa
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${analyticshubSa}
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${analyticshubSa.member}
///     options:
///       dependsOn:
///         - ${waitForSa}
///   waitForIam:
///     type: time:Sleep
///     name: wait_for_iam
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${cryptoKey}
///   querytemplate:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       displayName: My Audience Data Exchange
///       dataExchangeId: my_data_exchange
///       description: example of query template with cmek
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
///       description: example of query template with cmek
///       primaryContact: ${me.email}
///       documentation: This TVF takes a table t1 as input and returns all columns. Useful for basic data pass-through.
///       routine:
///         routineType: TABLE_VALUED_FUNCTION
///         definitionBody: my_query_template() as (select * from t1)
///       encryptionConfiguration:
///         kmsKeyName: projects/keys-project/locations/us/keyRings/key-ring/cryptoKeys/crypto-key
///     options:
///       dependsOn:
///         - ${waitForIam}
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
  /// Encryption configuration for the query template.
  /// If set, the customer-managed KMS key is used to encrypt the query
  /// template definition body.
  /// Structure is documented below.
  late final pulumi.Output<QueryTemplateEncryptionConfiguration?> encryptionConfiguration;
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
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    encryptionConfiguration = registerOutput<QueryTemplateEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryTemplateEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    pulumi.CustomResourceOptions? options,
  }) {
    return QueryTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    encryptionConfiguration = registerOutput<QueryTemplateEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryTemplateEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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

  /// Creates a typed reference to an existing [QueryTemplate] resource.
  QueryTemplate.reference(String urn)
    : super(
        'gcp:bigqueryanalyticshub/queryTemplate:QueryTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dataExchangeId = registerOutput<String>('dataExchangeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<String?>('documentation');
    encryptionConfiguration = registerOutput<QueryTemplateEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryTemplateEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
}
