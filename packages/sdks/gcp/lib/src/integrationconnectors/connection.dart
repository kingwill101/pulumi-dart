import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_auth_config.dart';
import 'connection_eventing_config.dart';
import 'connection_lock_config.dart';
import 'connection_log_config.dart';
import 'connection_node_config.dart';
import 'connection_ssl_config.dart';
import 'connection_state.dart';

/// An Integration connectors Connection.
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/integration-connectors/docs/reference/rest/v1/projects.locations.connections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/integration-connectors/docs/createconnection)
///
/// ## Example Usage
///
/// ### Integration Connectors Connection Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({});
/// const pubsubconnection = new gcp.integrationconnectors.Connection("pubsubconnection", {
///     name: "test-pubsub",
///     location: "us-central1",
///     connectorVersion: testProject.then(testProject => `projects/${testProject.projectId}/locations/global/providers/gcp/connectors/pubsub/versions/1`),
///     description: "tf created description",
///     configVariables: [
///         {
///             key: "project_id",
///             stringValue: "connectors-example",
///         },
///         {
///             key: "topic_id",
///             stringValue: "test",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project()
/// pubsubconnection = gcp.integrationconnectors.Connection("pubsubconnection",
///     name="test-pubsub",
///     location="us-central1",
///     connector_version=f"projects/{test_project.project_id}/locations/global/providers/gcp/connectors/pubsub/versions/1",
///     description="tf created description",
///     config_variables=[
///         {
///             "key": "project_id",
///             "string_value": "connectors-example",
///         },
///         {
///             "key": "topic_id",
///             "string_value": "test",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var pubsubconnection = new Gcp.IntegrationConnectors.Connection("pubsubconnection", new()
///     {
///         Name = "test-pubsub",
///         Location = "us-central1",
///         ConnectorVersion = $"projects/{testProject.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/global/providers/gcp/connectors/pubsub/versions/1",
///         Description = "tf created description",
///         ConfigVariables = new[]
///         {
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "project_id",
///                 StringValue = "connectors-example",
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "topic_id",
///                 StringValue = "test",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = integrationconnectors.NewConnection(ctx, "pubsubconnection", &integrationconnectors.ConnectionArgs{
/// 			Name:             pulumi.String("test-pubsub"),
/// 			Location:         pulumi.String("us-central1"),
/// 			ConnectorVersion: pulumi.Sprintf("projects/%v/locations/global/providers/gcp/connectors/pubsub/versions/1", testProject.ProjectId),
/// 			Description:      pulumi.String("tf created description"),
/// 			ConfigVariables: integrationconnectors.ConnectionConfigVariableArray{
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("project_id"),
/// 					StringValue: pulumi.String("connectors-example"),
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:         pulumi.String("topic_id"),
/// 					StringValue: pulumi.String("test"),
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
/// data "gcp_organizations_getproject" "testProject" {
/// }
///
/// resource "gcp_integrationconnectors_connection" "pubsubconnection" {
///   name              = "test-pubsub"
///   location          = "us-central1"
///   connector_version ="projects/${data.gcp_organizations_getproject.testProject.project_id}/locations/global/providers/gcp/connectors/pubsub/versions/1"
///   description       = "tf created description"
///   config_variables {
///     key          = "project_id"
///     string_value = "connectors-example"
///   }
///   config_variables {
///     key          = "topic_id"
///     string_value = "test"
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
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.integrationconnectors.Connection;
/// import com.pulumi.gcp.integrationconnectors.ConnectionArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableArgs;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var pubsubconnection = new Connection("pubsubconnection", ConnectionArgs.builder()
///             .name("test-pubsub")
///             .location("us-central1")
///             .connectorVersion(String.format("projects/%s/locations/global/providers/gcp/connectors/pubsub/versions/1", testProject.projectId()))
///             .description("tf created description")
///             .configVariables(
///                 ConnectionConfigVariableArgs.builder()
///                     .key("project_id")
///                     .stringValue("connectors-example")
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("topic_id")
///                     .stringValue("test")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pubsubconnection:
///     type: gcp:integrationconnectors:Connection
///     properties:
///       name: test-pubsub
///       location: us-central1
///       connectorVersion: projects/${testProject.projectId}/locations/global/providers/gcp/connectors/pubsub/versions/1
///       description: tf created description
///       configVariables:
///         - key: project_id
///           stringValue: connectors-example
///         - key: topic_id
///           stringValue: test
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Integration Connectors Connection Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testProject = gcp.organizations.getProject({});
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "test-secret",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secret_version_basic = new gcp.secretmanager.SecretVersion("secret-version-basic", {
///     secret: secret_basic.id,
///     secretData: "dummypassword",
/// });
/// const secretIam = new gcp.secretmanager.SecretIamMember("secret_iam", {
///     secretId: secret_basic.id,
///     role: "roles/secretmanager.admin",
///     member: testProject.then(testProject => `serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com`),
/// }, {
///     dependsOn: [secret_version_basic],
/// });
/// const zendeskconnection = new gcp.integrationconnectors.Connection("zendeskconnection", {
///     name: "test-zendesk",
///     description: "tf updated description",
///     location: "us-central1",
///     serviceAccount: testProject.then(testProject => `${testProject.number}-compute@developer.gserviceaccount.com`),
///     connectorVersion: testProject.then(testProject => `projects/${testProject.projectId}/locations/global/providers/zendesk/connectors/zendesk/versions/1`),
///     configVariables: [
///         {
///             key: "proxy_enabled",
///             booleanValue: false,
///         },
///         {
///             key: "sample_integer_value",
///             integerValue: 1,
///         },
///         {
///             key: "sample_encryption_key_value",
///             encryptionKeyValue: {
///                 type: "GOOGLE_MANAGED",
///                 kmsKeyName: "sampleKMSKkey",
///             },
///         },
///         {
///             key: "sample_secret_value",
///             secretValue: {
///                 secretVersion: secret_version_basic.name,
///             },
///         },
///     ],
///     suspended: false,
///     authConfig: {
///         additionalVariables: [
///             {
///                 key: "sample_string",
///                 stringValue: "sampleString",
///             },
///             {
///                 key: "sample_boolean",
///                 booleanValue: false,
///             },
///             {
///                 key: "sample_integer",
///                 integerValue: 1,
///             },
///             {
///                 key: "sample_secret_value",
///                 secretValue: {
///                     secretVersion: secret_version_basic.name,
///                 },
///             },
///             {
///                 key: "sample_encryption_key_value",
///                 encryptionKeyValue: {
///                     type: "GOOGLE_MANAGED",
///                     kmsKeyName: "sampleKMSKkey",
///                 },
///             },
///         ],
///         authType: "USER_PASSWORD",
///         authKey: "sampleAuthKey",
///         userPassword: {
///             username: "user@xyz.com",
///             password: {
///                 secretVersion: secret_version_basic.name,
///             },
///         },
///     },
///     destinationConfigs: [{
///         key: "url",
///         destinations: [{
///             host: "https://test.zendesk.com",
///             port: 80,
///         }],
///     }],
///     lockConfig: {
///         locked: false,
///         reason: "Its not locked",
///     },
///     logConfig: {
///         enabled: true,
///     },
///     nodeConfig: {
///         minNodeCount: 2,
///         maxNodeCount: 50,
///     },
///     labels: {
///         foo: "bar",
///     },
///     sslConfig: {
///         additionalVariables: [
///             {
///                 key: "sample_string",
///                 stringValue: "sampleString",
///             },
///             {
///                 key: "sample_boolean",
///                 booleanValue: false,
///             },
///             {
///                 key: "sample_integer",
///                 integerValue: 1,
///             },
///             {
///                 key: "sample_secret_value",
///                 secretValue: {
///                     secretVersion: secret_version_basic.name,
///                 },
///             },
///             {
///                 key: "sample_encryption_key_value",
///                 encryptionKeyValue: {
///                     type: "GOOGLE_MANAGED",
///                     kmsKeyName: "sampleKMSKkey",
///                 },
///             },
///         ],
///         clientCertType: "PEM",
///         clientCertificate: {
///             secretVersion: secret_version_basic.name,
///         },
///         clientPrivateKey: {
///             secretVersion: secret_version_basic.name,
///         },
///         clientPrivateKeyPass: {
///             secretVersion: secret_version_basic.name,
///         },
///         privateServerCertificate: {
///             secretVersion: secret_version_basic.name,
///         },
///         serverCertType: "PEM",
///         trustModel: "PRIVATE",
///         type: "TLS",
///         useSsl: true,
///     },
///     eventingEnablementType: "EVENTING_AND_CONNECTION",
///     eventingConfig: {
///         additionalVariables: [
///             {
///                 key: "sample_string",
///                 stringValue: "sampleString",
///             },
///             {
///                 key: "sample_boolean",
///                 booleanValue: false,
///             },
///             {
///                 key: "sample_integer",
///                 integerValue: 1,
///             },
///             {
///                 key: "sample_secret_value",
///                 secretValue: {
///                     secretVersion: secret_version_basic.name,
///                 },
///             },
///             {
///                 key: "sample_encryption_key_value",
///                 encryptionKeyValue: {
///                     type: "GOOGLE_MANAGED",
///                     kmsKeyName: "sampleKMSKkey",
///                 },
///             },
///         ],
///         registrationDestinationConfig: {
///             key: "registration_destination_config",
///             destinations: [{
///                 host: "https://test.zendesk.com",
///                 port: 80,
///             }],
///         },
///         authConfig: {
///             authType: "USER_PASSWORD",
///             authKey: "sampleAuthKey",
///             userPassword: {
///                 username: "user@xyz.com",
///                 password: {
///                     secretVersion: secret_version_basic.name,
///                 },
///             },
///             additionalVariables: [
///                 {
///                     key: "sample_string",
///                     stringValue: "sampleString",
///                 },
///                 {
///                     key: "sample_boolean",
///                     booleanValue: false,
///                 },
///                 {
///                     key: "sample_integer",
///                     integerValue: 1,
///                 },
///                 {
///                     key: "sample_secret_value",
///                     secretValue: {
///                         secretVersion: secret_version_basic.name,
///                     },
///                 },
///                 {
///                     key: "sample_encryption_key_value",
///                     encryptionKeyValue: {
///                         type: "GOOGLE_MANAGED",
///                         kmsKeyName: "sampleKMSKkey",
///                     },
///                 },
///             ],
///         },
///         enrichmentEnabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_project = gcp.organizations.get_project()
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="test-secret",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_version_basic = gcp.secretmanager.SecretVersion("secret-version-basic",
///     secret=secret_basic.id,
///     secret_data="dummypassword")
/// secret_iam = gcp.secretmanager.SecretIamMember("secret_iam",
///     secret_id=secret_basic.id,
///     role="roles/secretmanager.admin",
///     member=f"serviceAccount:{test_project.number}-compute@developer.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[secret_version_basic]))
/// zendeskconnection = gcp.integrationconnectors.Connection("zendeskconnection",
///     name="test-zendesk",
///     description="tf updated description",
///     location="us-central1",
///     service_account=f"{test_project.number}-compute@developer.gserviceaccount.com",
///     connector_version=f"projects/{test_project.project_id}/locations/global/providers/zendesk/connectors/zendesk/versions/1",
///     config_variables=[
///         {
///             "key": "proxy_enabled",
///             "boolean_value": False,
///         },
///         {
///             "key": "sample_integer_value",
///             "integer_value": 1,
///         },
///         {
///             "key": "sample_encryption_key_value",
///             "encryption_key_value": {
///                 "type": "GOOGLE_MANAGED",
///                 "kms_key_name": "sampleKMSKkey",
///             },
///         },
///         {
///             "key": "sample_secret_value",
///             "secret_value": {
///                 "secret_version": secret_version_basic.name,
///             },
///         },
///     ],
///     suspended=False,
///     auth_config={
///         "additional_variables": [
///             {
///                 "key": "sample_string",
///                 "string_value": "sampleString",
///             },
///             {
///                 "key": "sample_boolean",
///                 "boolean_value": False,
///             },
///             {
///                 "key": "sample_integer",
///                 "integer_value": 1,
///             },
///             {
///                 "key": "sample_secret_value",
///                 "secret_value": {
///                     "secret_version": secret_version_basic.name,
///                 },
///             },
///             {
///                 "key": "sample_encryption_key_value",
///                 "encryption_key_value": {
///                     "type": "GOOGLE_MANAGED",
///                     "kms_key_name": "sampleKMSKkey",
///                 },
///             },
///         ],
///         "auth_type": "USER_PASSWORD",
///         "auth_key": "sampleAuthKey",
///         "user_password": {
///             "username": "user@xyz.com",
///             "password": {
///                 "secret_version": secret_version_basic.name,
///             },
///         },
///     },
///     destination_configs=[{
///         "key": "url",
///         "destinations": [{
///             "host": "https://test.zendesk.com",
///             "port": 80,
///         }],
///     }],
///     lock_config={
///         "locked": False,
///         "reason": "Its not locked",
///     },
///     log_config={
///         "enabled": True,
///     },
///     node_config={
///         "min_node_count": 2,
///         "max_node_count": 50,
///     },
///     labels={
///         "foo": "bar",
///     },
///     ssl_config={
///         "additional_variables": [
///             {
///                 "key": "sample_string",
///                 "string_value": "sampleString",
///             },
///             {
///                 "key": "sample_boolean",
///                 "boolean_value": False,
///             },
///             {
///                 "key": "sample_integer",
///                 "integer_value": 1,
///             },
///             {
///                 "key": "sample_secret_value",
///                 "secret_value": {
///                     "secret_version": secret_version_basic.name,
///                 },
///             },
///             {
///                 "key": "sample_encryption_key_value",
///                 "encryption_key_value": {
///                     "type": "GOOGLE_MANAGED",
///                     "kms_key_name": "sampleKMSKkey",
///                 },
///             },
///         ],
///         "client_cert_type": "PEM",
///         "client_certificate": {
///             "secret_version": secret_version_basic.name,
///         },
///         "client_private_key": {
///             "secret_version": secret_version_basic.name,
///         },
///         "client_private_key_pass": {
///             "secret_version": secret_version_basic.name,
///         },
///         "private_server_certificate": {
///             "secret_version": secret_version_basic.name,
///         },
///         "server_cert_type": "PEM",
///         "trust_model": "PRIVATE",
///         "type": "TLS",
///         "use_ssl": True,
///     },
///     eventing_enablement_type="EVENTING_AND_CONNECTION",
///     eventing_config={
///         "additional_variables": [
///             {
///                 "key": "sample_string",
///                 "string_value": "sampleString",
///             },
///             {
///                 "key": "sample_boolean",
///                 "boolean_value": False,
///             },
///             {
///                 "key": "sample_integer",
///                 "integer_value": 1,
///             },
///             {
///                 "key": "sample_secret_value",
///                 "secret_value": {
///                     "secret_version": secret_version_basic.name,
///                 },
///             },
///             {
///                 "key": "sample_encryption_key_value",
///                 "encryption_key_value": {
///                     "type": "GOOGLE_MANAGED",
///                     "kms_key_name": "sampleKMSKkey",
///                 },
///             },
///         ],
///         "registration_destination_config": {
///             "key": "registration_destination_config",
///             "destinations": [{
///                 "host": "https://test.zendesk.com",
///                 "port": 80,
///             }],
///         },
///         "auth_config": {
///             "auth_type": "USER_PASSWORD",
///             "auth_key": "sampleAuthKey",
///             "user_password": {
///                 "username": "user@xyz.com",
///                 "password": {
///                     "secret_version": secret_version_basic.name,
///                 },
///             },
///             "additional_variables": [
///                 {
///                     "key": "sample_string",
///                     "string_value": "sampleString",
///                 },
///                 {
///                     "key": "sample_boolean",
///                     "boolean_value": False,
///                 },
///                 {
///                     "key": "sample_integer",
///                     "integer_value": 1,
///                 },
///                 {
///                     "key": "sample_secret_value",
///                     "secret_value": {
///                         "secret_version": secret_version_basic.name,
///                     },
///                 },
///                 {
///                     "key": "sample_encryption_key_value",
///                     "encryption_key_value": {
///                         "type": "GOOGLE_MANAGED",
///                         "kms_key_name": "sampleKMSKkey",
///                     },
///                 },
///             ],
///         },
///         "enrichment_enabled": True,
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
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "test-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secret_version_basic = new Gcp.SecretManager.SecretVersion("secret-version-basic", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "dummypassword",
///     });
///
///     var secretIam = new Gcp.SecretManager.SecretIamMember("secret_iam", new()
///     {
///         SecretId = secret_basic.Id,
///         Role = "roles/secretmanager.admin",
///         Member = $"serviceAccount:{testProject.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret_version_basic,
///         },
///     });
///
///     var zendeskconnection = new Gcp.IntegrationConnectors.Connection("zendeskconnection", new()
///     {
///         Name = "test-zendesk",
///         Description = "tf updated description",
///         Location = "us-central1",
///         ServiceAccount = $"{testProject.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///         ConnectorVersion = $"projects/{testProject.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/global/providers/zendesk/connectors/zendesk/versions/1",
///         ConfigVariables = new[]
///         {
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "proxy_enabled",
///                 BooleanValue = false,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "sample_integer_value",
///                 IntegerValue = 1,
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "sample_encryption_key_value",
///                 EncryptionKeyValue = new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableEncryptionKeyValueArgs
///                 {
///                     Type = "GOOGLE_MANAGED",
///                     KmsKeyName = "sampleKMSKkey",
///                 },
///             },
///             new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableArgs
///             {
///                 Key = "sample_secret_value",
///                 SecretValue = new Gcp.IntegrationConnectors.Inputs.ConnectionConfigVariableSecretValueArgs
///                 {
///                     SecretVersion = secret_version_basic.Name,
///                 },
///             },
///         },
///         Suspended = false,
///         AuthConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigArgs
///         {
///             AdditionalVariables = new[]
///             {
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_string",
///                     StringValue = "sampleString",
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_boolean",
///                     BooleanValue = false,
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_integer",
///                     IntegerValue = 1,
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_secret_value",
///                     SecretValue = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableSecretValueArgs
///                     {
///                         SecretVersion = secret_version_basic.Name,
///                     },
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_encryption_key_value",
///                     EncryptionKeyValue = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigAdditionalVariableEncryptionKeyValueArgs
///                     {
///                         Type = "GOOGLE_MANAGED",
///                         KmsKeyName = "sampleKMSKkey",
///                     },
///                 },
///             },
///             AuthType = "USER_PASSWORD",
///             AuthKey = "sampleAuthKey",
///             UserPassword = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigUserPasswordArgs
///             {
///                 Username = "user@xyz.com",
///                 Password = new Gcp.IntegrationConnectors.Inputs.ConnectionAuthConfigUserPasswordPasswordArgs
///                 {
///                     SecretVersion = secret_version_basic.Name,
///                 },
///             },
///         },
///         DestinationConfigs = new[]
///         {
///             new Gcp.IntegrationConnectors.Inputs.ConnectionDestinationConfigArgs
///             {
///                 Key = "url",
///                 Destinations = new[]
///                 {
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionDestinationConfigDestinationArgs
///                     {
///                         Host = "https://test.zendesk.com",
///                         Port = 80,
///                     },
///                 },
///             },
///         },
///         LockConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionLockConfigArgs
///         {
///             Locked = false,
///             Reason = "Its not locked",
///         },
///         LogConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionLogConfigArgs
///         {
///             Enabled = true,
///         },
///         NodeConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionNodeConfigArgs
///         {
///             MinNodeCount = 2,
///             MaxNodeCount = 50,
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         SslConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigArgs
///         {
///             AdditionalVariables = new[]
///             {
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_string",
///                     StringValue = "sampleString",
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_boolean",
///                     BooleanValue = false,
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_integer",
///                     IntegerValue = 1,
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_secret_value",
///                     SecretValue = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableSecretValueArgs
///                     {
///                         SecretVersion = secret_version_basic.Name,
///                     },
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_encryption_key_value",
///                     EncryptionKeyValue = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigAdditionalVariableEncryptionKeyValueArgs
///                     {
///                         Type = "GOOGLE_MANAGED",
///                         KmsKeyName = "sampleKMSKkey",
///                     },
///                 },
///             },
///             ClientCertType = "PEM",
///             ClientCertificate = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigClientCertificateArgs
///             {
///                 SecretVersion = secret_version_basic.Name,
///             },
///             ClientPrivateKey = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigClientPrivateKeyArgs
///             {
///                 SecretVersion = secret_version_basic.Name,
///             },
///             ClientPrivateKeyPass = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigClientPrivateKeyPassArgs
///             {
///                 SecretVersion = secret_version_basic.Name,
///             },
///             PrivateServerCertificate = new Gcp.IntegrationConnectors.Inputs.ConnectionSslConfigPrivateServerCertificateArgs
///             {
///                 SecretVersion = secret_version_basic.Name,
///             },
///             ServerCertType = "PEM",
///             TrustModel = "PRIVATE",
///             Type = "TLS",
///             UseSsl = true,
///         },
///         EventingEnablementType = "EVENTING_AND_CONNECTION",
///         EventingConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigArgs
///         {
///             AdditionalVariables = new[]
///             {
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_string",
///                     StringValue = "sampleString",
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_boolean",
///                     BooleanValue = false,
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_integer",
///                     IntegerValue = 1,
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_secret_value",
///                     SecretValue = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableSecretValueArgs
///                     {
///                         SecretVersion = secret_version_basic.Name,
///                     },
///                 },
///                 new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableArgs
///                 {
///                     Key = "sample_encryption_key_value",
///                     EncryptionKeyValue = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAdditionalVariableEncryptionKeyValueArgs
///                     {
///                         Type = "GOOGLE_MANAGED",
///                         KmsKeyName = "sampleKMSKkey",
///                     },
///                 },
///             },
///             RegistrationDestinationConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigRegistrationDestinationConfigArgs
///             {
///                 Key = "registration_destination_config",
///                 Destinations = new[]
///                 {
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigRegistrationDestinationConfigDestinationArgs
///                     {
///                         Host = "https://test.zendesk.com",
///                         Port = 80,
///                     },
///                 },
///             },
///             AuthConfig = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigArgs
///             {
///                 AuthType = "USER_PASSWORD",
///                 AuthKey = "sampleAuthKey",
///                 UserPassword = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigUserPasswordArgs
///                 {
///                     Username = "user@xyz.com",
///                     Password = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigUserPasswordPasswordArgs
///                     {
///                         SecretVersion = secret_version_basic.Name,
///                     },
///                 },
///                 AdditionalVariables = new[]
///                 {
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableArgs
///                     {
///                         Key = "sample_string",
///                         StringValue = "sampleString",
///                     },
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableArgs
///                     {
///                         Key = "sample_boolean",
///                         BooleanValue = false,
///                     },
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableArgs
///                     {
///                         Key = "sample_integer",
///                         IntegerValue = 1,
///                     },
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableArgs
///                     {
///                         Key = "sample_secret_value",
///                         SecretValue = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableSecretValueArgs
///                         {
///                             SecretVersion = secret_version_basic.Name,
///                         },
///                     },
///                     new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableArgs
///                     {
///                         Key = "sample_encryption_key_value",
///                         EncryptionKeyValue = new Gcp.IntegrationConnectors.Inputs.ConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueArgs
///                         {
///                             Type = "GOOGLE_MANAGED",
///                             KmsKeyName = "sampleKMSKkey",
///                         },
///                     },
///                 },
///             },
///             EnrichmentEnabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("test-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_basic, err := secretmanager.NewSecretVersion(ctx, "secret-version-basic", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret_basic.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String("dummypassword"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret_iam", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret_basic.ID().ToIDOutput().ToStringOutput(),
/// 			Role:     pulumi.String("roles/secretmanager.admin"),
/// 			Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret_version_basic,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = integrationconnectors.NewConnection(ctx, "zendeskconnection", &integrationconnectors.ConnectionArgs{
/// 			Name:             pulumi.String("test-zendesk"),
/// 			Description:      pulumi.String("tf updated description"),
/// 			Location:         pulumi.String("us-central1"),
/// 			ServiceAccount:   pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", testProject.Number),
/// 			ConnectorVersion: pulumi.Sprintf("projects/%v/locations/global/providers/zendesk/connectors/zendesk/versions/1", testProject.ProjectId),
/// 			ConfigVariables: integrationconnectors.ConnectionConfigVariableArray{
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:          pulumi.String("proxy_enabled"),
/// 					BooleanValue: pulumi.Bool(false),
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key:          pulumi.String("sample_integer_value"),
/// 					IntegerValue: pulumi.Int(1),
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key: pulumi.String("sample_encryption_key_value"),
/// 					EncryptionKeyValue: &integrationconnectors.ConnectionConfigVariableEncryptionKeyValueArgs{
/// 						Type:       pulumi.String("GOOGLE_MANAGED"),
/// 						KmsKeyName: pulumi.String("sampleKMSKkey"),
/// 					},
/// 				},
/// 				&integrationconnectors.ConnectionConfigVariableArgs{
/// 					Key: pulumi.String("sample_secret_value"),
/// 					SecretValue: &integrationconnectors.ConnectionConfigVariableSecretValueArgs{
/// 						SecretVersion: secret_version_basic.Name,
/// 					},
/// 				},
/// 			},
/// 			Suspended: pulumi.Bool(false),
/// 			AuthConfig: &integrationconnectors.ConnectionAuthConfigArgs{
/// 				AdditionalVariables: integrationconnectors.ConnectionAuthConfigAdditionalVariableArray{
/// 					&integrationconnectors.ConnectionAuthConfigAdditionalVariableArgs{
/// 						Key:         pulumi.String("sample_string"),
/// 						StringValue: pulumi.String("sampleString"),
/// 					},
/// 					&integrationconnectors.ConnectionAuthConfigAdditionalVariableArgs{
/// 						Key:          pulumi.String("sample_boolean"),
/// 						BooleanValue: pulumi.Bool(false),
/// 					},
/// 					&integrationconnectors.ConnectionAuthConfigAdditionalVariableArgs{
/// 						Key:          pulumi.String("sample_integer"),
/// 						IntegerValue: pulumi.Int(1),
/// 					},
/// 					&integrationconnectors.ConnectionAuthConfigAdditionalVariableArgs{
/// 						Key: pulumi.String("sample_secret_value"),
/// 						SecretValue: &integrationconnectors.ConnectionAuthConfigAdditionalVariableSecretValueArgs{
/// 							SecretVersion: secret_version_basic.Name,
/// 						},
/// 					},
/// 					&integrationconnectors.ConnectionAuthConfigAdditionalVariableArgs{
/// 						Key: pulumi.String("sample_encryption_key_value"),
/// 						EncryptionKeyValue: &integrationconnectors.ConnectionAuthConfigAdditionalVariableEncryptionKeyValueArgs{
/// 							Type:       pulumi.String("GOOGLE_MANAGED"),
/// 							KmsKeyName: pulumi.String("sampleKMSKkey"),
/// 						},
/// 					},
/// 				},
/// 				AuthType: pulumi.String("USER_PASSWORD"),
/// 				AuthKey:  pulumi.String("sampleAuthKey"),
/// 				UserPassword: &integrationconnectors.ConnectionAuthConfigUserPasswordArgs{
/// 					Username: pulumi.String("user@xyz.com"),
/// 					Password: &integrationconnectors.ConnectionAuthConfigUserPasswordPasswordArgs{
/// 						SecretVersion: secret_version_basic.Name,
/// 					},
/// 				},
/// 			},
/// 			DestinationConfigs: integrationconnectors.ConnectionDestinationConfigArray{
/// 				&integrationconnectors.ConnectionDestinationConfigArgs{
/// 					Key: pulumi.String("url"),
/// 					Destinations: integrationconnectors.ConnectionDestinationConfigDestinationArray{
/// 						&integrationconnectors.ConnectionDestinationConfigDestinationArgs{
/// 							Host: pulumi.String("https://test.zendesk.com"),
/// 							Port: pulumi.Int(80),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LockConfig: &integrationconnectors.ConnectionLockConfigArgs{
/// 				Locked: pulumi.Bool(false),
/// 				Reason: pulumi.String("Its not locked"),
/// 			},
/// 			LogConfig: &integrationconnectors.ConnectionLogConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			NodeConfig: &integrationconnectors.ConnectionNodeConfigArgs{
/// 				MinNodeCount: pulumi.Int(2),
/// 				MaxNodeCount: pulumi.Int(50),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			SslConfig: &integrationconnectors.ConnectionSslConfigArgs{
/// 				AdditionalVariables: integrationconnectors.ConnectionSslConfigAdditionalVariableArray{
/// 					&integrationconnectors.ConnectionSslConfigAdditionalVariableArgs{
/// 						Key:         pulumi.String("sample_string"),
/// 						StringValue: pulumi.String("sampleString"),
/// 					},
/// 					&integrationconnectors.ConnectionSslConfigAdditionalVariableArgs{
/// 						Key:          pulumi.String("sample_boolean"),
/// 						BooleanValue: pulumi.Bool(false),
/// 					},
/// 					&integrationconnectors.ConnectionSslConfigAdditionalVariableArgs{
/// 						Key:          pulumi.String("sample_integer"),
/// 						IntegerValue: pulumi.Int(1),
/// 					},
/// 					&integrationconnectors.ConnectionSslConfigAdditionalVariableArgs{
/// 						Key: pulumi.String("sample_secret_value"),
/// 						SecretValue: &integrationconnectors.ConnectionSslConfigAdditionalVariableSecretValueArgs{
/// 							SecretVersion: secret_version_basic.Name,
/// 						},
/// 					},
/// 					&integrationconnectors.ConnectionSslConfigAdditionalVariableArgs{
/// 						Key: pulumi.String("sample_encryption_key_value"),
/// 						EncryptionKeyValue: &integrationconnectors.ConnectionSslConfigAdditionalVariableEncryptionKeyValueArgs{
/// 							Type:       pulumi.String("GOOGLE_MANAGED"),
/// 							KmsKeyName: pulumi.String("sampleKMSKkey"),
/// 						},
/// 					},
/// 				},
/// 				ClientCertType: pulumi.String("PEM"),
/// 				ClientCertificate: &integrationconnectors.ConnectionSslConfigClientCertificateArgs{
/// 					SecretVersion: secret_version_basic.Name,
/// 				},
/// 				ClientPrivateKey: &integrationconnectors.ConnectionSslConfigClientPrivateKeyArgs{
/// 					SecretVersion: secret_version_basic.Name,
/// 				},
/// 				ClientPrivateKeyPass: &integrationconnectors.ConnectionSslConfigClientPrivateKeyPassArgs{
/// 					SecretVersion: secret_version_basic.Name,
/// 				},
/// 				PrivateServerCertificate: &integrationconnectors.ConnectionSslConfigPrivateServerCertificateArgs{
/// 					SecretVersion: secret_version_basic.Name,
/// 				},
/// 				ServerCertType: pulumi.String("PEM"),
/// 				TrustModel:     pulumi.String("PRIVATE"),
/// 				Type:           pulumi.String("TLS"),
/// 				UseSsl:         pulumi.Bool(true),
/// 			},
/// 			EventingEnablementType: pulumi.String("EVENTING_AND_CONNECTION"),
/// 			EventingConfig: &integrationconnectors.ConnectionEventingConfigArgs{
/// 				AdditionalVariables: integrationconnectors.ConnectionEventingConfigAdditionalVariableArray{
/// 					&integrationconnectors.ConnectionEventingConfigAdditionalVariableArgs{
/// 						Key:         pulumi.String("sample_string"),
/// 						StringValue: pulumi.String("sampleString"),
/// 					},
/// 					&integrationconnectors.ConnectionEventingConfigAdditionalVariableArgs{
/// 						Key:          pulumi.String("sample_boolean"),
/// 						BooleanValue: pulumi.Bool(false),
/// 					},
/// 					&integrationconnectors.ConnectionEventingConfigAdditionalVariableArgs{
/// 						Key:          pulumi.String("sample_integer"),
/// 						IntegerValue: pulumi.Int(1),
/// 					},
/// 					&integrationconnectors.ConnectionEventingConfigAdditionalVariableArgs{
/// 						Key: pulumi.String("sample_secret_value"),
/// 						SecretValue: &integrationconnectors.ConnectionEventingConfigAdditionalVariableSecretValueArgs{
/// 							SecretVersion: secret_version_basic.Name,
/// 						},
/// 					},
/// 					&integrationconnectors.ConnectionEventingConfigAdditionalVariableArgs{
/// 						Key: pulumi.String("sample_encryption_key_value"),
/// 						EncryptionKeyValue: &integrationconnectors.ConnectionEventingConfigAdditionalVariableEncryptionKeyValueArgs{
/// 							Type:       pulumi.String("GOOGLE_MANAGED"),
/// 							KmsKeyName: pulumi.String("sampleKMSKkey"),
/// 						},
/// 					},
/// 				},
/// 				RegistrationDestinationConfig: &integrationconnectors.ConnectionEventingConfigRegistrationDestinationConfigArgs{
/// 					Key: pulumi.String("registration_destination_config"),
/// 					Destinations: integrationconnectors.ConnectionEventingConfigRegistrationDestinationConfigDestinationArray{
/// 						&integrationconnectors.ConnectionEventingConfigRegistrationDestinationConfigDestinationArgs{
/// 							Host: pulumi.String("https://test.zendesk.com"),
/// 							Port: pulumi.Int(80),
/// 						},
/// 					},
/// 				},
/// 				AuthConfig: &integrationconnectors.ConnectionEventingConfigAuthConfigArgs{
/// 					AuthType: pulumi.String("USER_PASSWORD"),
/// 					AuthKey:  pulumi.String("sampleAuthKey"),
/// 					UserPassword: &integrationconnectors.ConnectionEventingConfigAuthConfigUserPasswordArgs{
/// 						Username: pulumi.String("user@xyz.com"),
/// 						Password: &integrationconnectors.ConnectionEventingConfigAuthConfigUserPasswordPasswordArgs{
/// 							SecretVersion: secret_version_basic.Name,
/// 						},
/// 					},
/// 					AdditionalVariables: integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableArray{
/// 						&integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableArgs{
/// 							Key:         pulumi.String("sample_string"),
/// 							StringValue: pulumi.String("sampleString"),
/// 						},
/// 						&integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableArgs{
/// 							Key:          pulumi.String("sample_boolean"),
/// 							BooleanValue: pulumi.Bool(false),
/// 						},
/// 						&integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableArgs{
/// 							Key:          pulumi.String("sample_integer"),
/// 							IntegerValue: pulumi.Int(1),
/// 						},
/// 						&integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableArgs{
/// 							Key: pulumi.String("sample_secret_value"),
/// 							SecretValue: &integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableSecretValueArgs{
/// 								SecretVersion: secret_version_basic.Name,
/// 							},
/// 						},
/// 						&integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableArgs{
/// 							Key: pulumi.String("sample_encryption_key_value"),
/// 							EncryptionKeyValue: &integrationconnectors.ConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueArgs{
/// 								Type:       pulumi.String("GOOGLE_MANAGED"),
/// 								KmsKeyName: pulumi.String("sampleKMSKkey"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				EnrichmentEnabled: pulumi.Bool(true),
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
/// data "gcp_organizations_getproject" "testProject" {
/// }
///
/// resource "gcp_secretmanager_secret" "secret-basic" {
///   secret_id = "test-secret"
///   replication = {
///     user_managed = {
///       replicas = [{
///         "location" = "us-central1"
///       }]
///     }
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "secret-version-basic" {
///   secret      = gcp_secretmanager_secret.secret-basic.id
///   secret_data = "dummypassword"
/// }
/// resource "gcp_secretmanager_secretiammember" "secret_iam" {
///   depends_on = [gcp_secretmanager_secretversion.secret-version-basic]
///   secret_id  = gcp_secretmanager_secret.secret-basic.id
///   role       = "roles/secretmanager.admin"
///   member     ="serviceAccount:${data.gcp_organizations_getproject.testProject.number}-compute@developer.gserviceaccount.com"
/// }
/// resource "gcp_integrationconnectors_connection" "zendeskconnection" {
///   name              = "test-zendesk"
///   description       = "tf updated description"
///   location          = "us-central1"
///   service_account   ="${data.gcp_organizations_getproject.testProject.number}-compute@developer.gserviceaccount.com"
///   connector_version ="projects/${data.gcp_organizations_getproject.testProject.project_id}/locations/global/providers/zendesk/connectors/zendesk/versions/1"
///   config_variables {
///     key           = "proxy_enabled"
///     boolean_value = false
///   }
///   config_variables {
///     key           = "sample_integer_value"
///     integer_value = 1
///   }
///   config_variables {
///     key = "sample_encryption_key_value"
///     encryption_key_value = {
///       type         = "GOOGLE_MANAGED"
///       kms_key_name = "sampleKMSKkey"
///     }
///   }
///   config_variables {
///     key = "sample_secret_value"
///     secret_value = {
///       secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///     }
///   }
///   suspended = false
///   auth_config = {
///     additional_variables = [{
///       "key"         = "sample_string"
///       "stringValue" = "sampleString"
///       }, {
///       "key"          = "sample_boolean"
///       "booleanValue" = false
///       }, {
///       "key"          = "sample_integer"
///       "integerValue" = 1
///       }, {
///       "key" = "sample_secret_value"
///       "secretValue" = {
///         "secretVersion" = gcp_secretmanager_secretversion.secret-version-basic.name
///       }
///       }, {
///       "key" = "sample_encryption_key_value"
///       "encryptionKeyValue" = {
///         "type"       = "GOOGLE_MANAGED"
///         "kmsKeyName" = "sampleKMSKkey"
///       }
///     }]
///     auth_type = "USER_PASSWORD"
///     auth_key  = "sampleAuthKey"
///     user_password = {
///       username = "user@xyz.com"
///       password = {
///         secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///       }
///     }
///   }
///   destination_configs {
///     key = "url"
///     destinations {
///       host = "https://test.zendesk.com"
///       port = 80
///     }
///   }
///   lock_config = {
///     locked = false
///     reason = "Its not locked"
///   }
///   log_config = {
///     enabled = true
///   }
///   node_config = {
///     min_node_count = 2
///     max_node_count = 50
///   }
///   labels = {
///     "foo" = "bar"
///   }
///   ssl_config = {
///     additional_variables = [{
///       "key"         = "sample_string"
///       "stringValue" = "sampleString"
///       }, {
///       "key"          = "sample_boolean"
///       "booleanValue" = false
///       }, {
///       "key"          = "sample_integer"
///       "integerValue" = 1
///       }, {
///       "key" = "sample_secret_value"
///       "secretValue" = {
///         "secretVersion" = gcp_secretmanager_secretversion.secret-version-basic.name
///       }
///       }, {
///       "key" = "sample_encryption_key_value"
///       "encryptionKeyValue" = {
///         "type"       = "GOOGLE_MANAGED"
///         "kmsKeyName" = "sampleKMSKkey"
///       }
///     }]
///     client_cert_type = "PEM"
///     client_certificate = {
///       secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///     }
///     client_private_key = {
///       secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///     }
///     client_private_key_pass = {
///       secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///     }
///     private_server_certificate = {
///       secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///     }
///     server_cert_type = "PEM"
///     trust_model      = "PRIVATE"
///     type             = "TLS"
///     use_ssl          = true
///   }
///   eventing_enablement_type = "EVENTING_AND_CONNECTION"
///   eventing_config = {
///     additional_variables = [{
///       "key"         = "sample_string"
///       "stringValue" = "sampleString"
///       }, {
///       "key"          = "sample_boolean"
///       "booleanValue" = false
///       }, {
///       "key"          = "sample_integer"
///       "integerValue" = 1
///       }, {
///       "key" = "sample_secret_value"
///       "secretValue" = {
///         "secretVersion" = gcp_secretmanager_secretversion.secret-version-basic.name
///       }
///       }, {
///       "key" = "sample_encryption_key_value"
///       "encryptionKeyValue" = {
///         "type"       = "GOOGLE_MANAGED"
///         "kmsKeyName" = "sampleKMSKkey"
///       }
///     }]
///     registration_destination_config = {
///       key = "registration_destination_config"
///       destinations = [{
///         "host" = "https://test.zendesk.com"
///         "port" = 80
///       }]
///     }
///     auth_config = {
///       auth_type = "USER_PASSWORD"
///       auth_key  = "sampleAuthKey"
///       user_password = {
///         username = "user@xyz.com"
///         password = {
///           secret_version = gcp_secretmanager_secretversion.secret-version-basic.name
///         }
///       }
///       additional_variables = [{
///         "key"         = "sample_string"
///         "stringValue" = "sampleString"
///         }, {
///         "key"          = "sample_boolean"
///         "booleanValue" = false
///         }, {
///         "key"          = "sample_integer"
///         "integerValue" = 1
///         }, {
///         "key" = "sample_secret_value"
///         "secretValue" = {
///           "secretVersion" = gcp_secretmanager_secretversion.secret-version-basic.name
///         }
///         }, {
///         "key" = "sample_encryption_key_value"
///         "encryptionKeyValue" = {
///           "type"       = "GOOGLE_MANAGED"
///           "kmsKeyName" = "sampleKMSKkey"
///         }
///       }]
///     }
///     enrichment_enabled = true
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
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedReplicaArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.integrationconnectors.Connection;
/// import com.pulumi.gcp.integrationconnectors.ConnectionArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableEncryptionKeyValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionConfigVariableSecretValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigAdditionalVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigAdditionalVariableSecretValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigAdditionalVariableEncryptionKeyValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigUserPasswordArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionAuthConfigUserPasswordPasswordArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionDestinationConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionDestinationConfigDestinationArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionLockConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionLogConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionNodeConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigAdditionalVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigAdditionalVariableSecretValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigAdditionalVariableEncryptionKeyValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigClientCertificateArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigClientPrivateKeyArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigClientPrivateKeyPassArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionSslConfigPrivateServerCertificateArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAdditionalVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAdditionalVariableSecretValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAdditionalVariableEncryptionKeyValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigRegistrationDestinationConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigRegistrationDestinationConfigDestinationArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAuthConfigArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAuthConfigUserPasswordArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAuthConfigUserPasswordPasswordArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAuthConfigAdditionalVariableArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAuthConfigAdditionalVariableSecretValueArgs;
/// import com.pulumi.gcp.integrationconnectors.inputs.ConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueArgs;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("test-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_basic = new SecretVersion("secret-version-basic", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("dummypassword")
///             .build());
///
///         var secretIam = new SecretIamMember("secretIam", SecretIamMemberArgs.builder()
///             .secretId(secret_basic.id())
///             .role("roles/secretmanager.admin")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secret_version_basic)
///                 .build());
///
///         var zendeskconnection = new Connection("zendeskconnection", ConnectionArgs.builder()
///             .name("test-zendesk")
///             .description("tf updated description")
///             .location("us-central1")
///             .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", testProject.number()))
///             .connectorVersion(String.format("projects/%s/locations/global/providers/zendesk/connectors/zendesk/versions/1", testProject.projectId()))
///             .configVariables(
///                 ConnectionConfigVariableArgs.builder()
///                     .key("proxy_enabled")
///                     .booleanValue(false)
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("sample_integer_value")
///                     .integerValue(1)
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("sample_encryption_key_value")
///                     .encryptionKeyValue(ConnectionConfigVariableEncryptionKeyValueArgs.builder()
///                         .type("GOOGLE_MANAGED")
///                         .kmsKeyName("sampleKMSKkey")
///                         .build())
///                     .build(),
///                 ConnectionConfigVariableArgs.builder()
///                     .key("sample_secret_value")
///                     .secretValue(ConnectionConfigVariableSecretValueArgs.builder()
///                         .secretVersion(secret_version_basic.name())
///                         .build())
///                     .build())
///             .suspended(false)
///             .authConfig(ConnectionAuthConfigArgs.builder()
///                 .additionalVariables(
///                     ConnectionAuthConfigAdditionalVariableArgs.builder()
///                         .key("sample_string")
///                         .stringValue("sampleString")
///                         .build(),
///                     ConnectionAuthConfigAdditionalVariableArgs.builder()
///                         .key("sample_boolean")
///                         .booleanValue(false)
///                         .build(),
///                     ConnectionAuthConfigAdditionalVariableArgs.builder()
///                         .key("sample_integer")
///                         .integerValue(1)
///                         .build(),
///                     ConnectionAuthConfigAdditionalVariableArgs.builder()
///                         .key("sample_secret_value")
///                         .secretValue(ConnectionAuthConfigAdditionalVariableSecretValueArgs.builder()
///                             .secretVersion(secret_version_basic.name())
///                             .build())
///                         .build(),
///                     ConnectionAuthConfigAdditionalVariableArgs.builder()
///                         .key("sample_encryption_key_value")
///                         .encryptionKeyValue(ConnectionAuthConfigAdditionalVariableEncryptionKeyValueArgs.builder()
///                             .type("GOOGLE_MANAGED")
///                             .kmsKeyName("sampleKMSKkey")
///                             .build())
///                         .build())
///                 .authType("USER_PASSWORD")
///                 .authKey("sampleAuthKey")
///                 .userPassword(ConnectionAuthConfigUserPasswordArgs.builder()
///                     .username("user@xyz.com")
///                     .password(ConnectionAuthConfigUserPasswordPasswordArgs.builder()
///                         .secretVersion(secret_version_basic.name())
///                         .build())
///                     .build())
///                 .build())
///             .destinationConfigs(ConnectionDestinationConfigArgs.builder()
///                 .key("url")
///                 .destinations(ConnectionDestinationConfigDestinationArgs.builder()
///                     .host("https://test.zendesk.com")
///                     .port(80)
///                     .build())
///                 .build())
///             .lockConfig(ConnectionLockConfigArgs.builder()
///                 .locked(false)
///                 .reason("Its not locked")
///                 .build())
///             .logConfig(ConnectionLogConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .nodeConfig(ConnectionNodeConfigArgs.builder()
///                 .minNodeCount(2)
///                 .maxNodeCount(50)
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .sslConfig(ConnectionSslConfigArgs.builder()
///                 .additionalVariables(
///                     ConnectionSslConfigAdditionalVariableArgs.builder()
///                         .key("sample_string")
///                         .stringValue("sampleString")
///                         .build(),
///                     ConnectionSslConfigAdditionalVariableArgs.builder()
///                         .key("sample_boolean")
///                         .booleanValue(false)
///                         .build(),
///                     ConnectionSslConfigAdditionalVariableArgs.builder()
///                         .key("sample_integer")
///                         .integerValue(1)
///                         .build(),
///                     ConnectionSslConfigAdditionalVariableArgs.builder()
///                         .key("sample_secret_value")
///                         .secretValue(ConnectionSslConfigAdditionalVariableSecretValueArgs.builder()
///                             .secretVersion(secret_version_basic.name())
///                             .build())
///                         .build(),
///                     ConnectionSslConfigAdditionalVariableArgs.builder()
///                         .key("sample_encryption_key_value")
///                         .encryptionKeyValue(ConnectionSslConfigAdditionalVariableEncryptionKeyValueArgs.builder()
///                             .type("GOOGLE_MANAGED")
///                             .kmsKeyName("sampleKMSKkey")
///                             .build())
///                         .build())
///                 .clientCertType("PEM")
///                 .clientCertificate(ConnectionSslConfigClientCertificateArgs.builder()
///                     .secretVersion(secret_version_basic.name())
///                     .build())
///                 .clientPrivateKey(ConnectionSslConfigClientPrivateKeyArgs.builder()
///                     .secretVersion(secret_version_basic.name())
///                     .build())
///                 .clientPrivateKeyPass(ConnectionSslConfigClientPrivateKeyPassArgs.builder()
///                     .secretVersion(secret_version_basic.name())
///                     .build())
///                 .privateServerCertificate(ConnectionSslConfigPrivateServerCertificateArgs.builder()
///                     .secretVersion(secret_version_basic.name())
///                     .build())
///                 .serverCertType("PEM")
///                 .trustModel("PRIVATE")
///                 .type("TLS")
///                 .useSsl(true)
///                 .build())
///             .eventingEnablementType("EVENTING_AND_CONNECTION")
///             .eventingConfig(ConnectionEventingConfigArgs.builder()
///                 .additionalVariables(
///                     ConnectionEventingConfigAdditionalVariableArgs.builder()
///                         .key("sample_string")
///                         .stringValue("sampleString")
///                         .build(),
///                     ConnectionEventingConfigAdditionalVariableArgs.builder()
///                         .key("sample_boolean")
///                         .booleanValue(false)
///                         .build(),
///                     ConnectionEventingConfigAdditionalVariableArgs.builder()
///                         .key("sample_integer")
///                         .integerValue(1)
///                         .build(),
///                     ConnectionEventingConfigAdditionalVariableArgs.builder()
///                         .key("sample_secret_value")
///                         .secretValue(ConnectionEventingConfigAdditionalVariableSecretValueArgs.builder()
///                             .secretVersion(secret_version_basic.name())
///                             .build())
///                         .build(),
///                     ConnectionEventingConfigAdditionalVariableArgs.builder()
///                         .key("sample_encryption_key_value")
///                         .encryptionKeyValue(ConnectionEventingConfigAdditionalVariableEncryptionKeyValueArgs.builder()
///                             .type("GOOGLE_MANAGED")
///                             .kmsKeyName("sampleKMSKkey")
///                             .build())
///                         .build())
///                 .registrationDestinationConfig(ConnectionEventingConfigRegistrationDestinationConfigArgs.builder()
///                     .key("registration_destination_config")
///                     .destinations(ConnectionEventingConfigRegistrationDestinationConfigDestinationArgs.builder()
///                         .host("https://test.zendesk.com")
///                         .port(80)
///                         .build())
///                     .build())
///                 .authConfig(ConnectionEventingConfigAuthConfigArgs.builder()
///                     .authType("USER_PASSWORD")
///                     .authKey("sampleAuthKey")
///                     .userPassword(ConnectionEventingConfigAuthConfigUserPasswordArgs.builder()
///                         .username("user@xyz.com")
///                         .password(ConnectionEventingConfigAuthConfigUserPasswordPasswordArgs.builder()
///                             .secretVersion(secret_version_basic.name())
///                             .build())
///                         .build())
///                     .additionalVariables(
///                         ConnectionEventingConfigAuthConfigAdditionalVariableArgs.builder()
///                             .key("sample_string")
///                             .stringValue("sampleString")
///                             .build(),
///                         ConnectionEventingConfigAuthConfigAdditionalVariableArgs.builder()
///                             .key("sample_boolean")
///                             .booleanValue(false)
///                             .build(),
///                         ConnectionEventingConfigAuthConfigAdditionalVariableArgs.builder()
///                             .key("sample_integer")
///                             .integerValue(1)
///                             .build(),
///                         ConnectionEventingConfigAuthConfigAdditionalVariableArgs.builder()
///                             .key("sample_secret_value")
///                             .secretValue(ConnectionEventingConfigAuthConfigAdditionalVariableSecretValueArgs.builder()
///                                 .secretVersion(secret_version_basic.name())
///                                 .build())
///                             .build(),
///                         ConnectionEventingConfigAuthConfigAdditionalVariableArgs.builder()
///                             .key("sample_encryption_key_value")
///                             .encryptionKeyValue(ConnectionEventingConfigAuthConfigAdditionalVariableEncryptionKeyValueArgs.builder()
///                                 .type("GOOGLE_MANAGED")
///                                 .kmsKeyName("sampleKMSKkey")
///                                 .build())
///                             .build())
///                     .build())
///                 .enrichmentEnabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: test-secret
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secret-version-basic:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: dummypassword
///   secretIam:
///     type: gcp:secretmanager:SecretIamMember
///     name: secret_iam
///     properties:
///       secretId: ${["secret-basic"].id}
///       role: roles/secretmanager.admin
///       member: serviceAccount:${testProject.number}-compute@developer.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${["secret-version-basic"]}
///   zendeskconnection:
///     type: gcp:integrationconnectors:Connection
///     properties:
///       name: test-zendesk
///       description: tf updated description
///       location: us-central1
///       serviceAccount: ${testProject.number}-compute@developer.gserviceaccount.com
///       connectorVersion: projects/${testProject.projectId}/locations/global/providers/zendesk/connectors/zendesk/versions/1
///       configVariables:
///         - key: proxy_enabled
///           booleanValue: false
///         - key: sample_integer_value
///           integerValue: 1
///         - key: sample_encryption_key_value
///           encryptionKeyValue:
///             type: GOOGLE_MANAGED
///             kmsKeyName: sampleKMSKkey
///         - key: sample_secret_value
///           secretValue:
///             secretVersion: ${["secret-version-basic"].name}
///       suspended: false
///       authConfig:
///         additionalVariables:
///           - key: sample_string
///             stringValue: sampleString
///           - key: sample_boolean
///             booleanValue: false
///           - key: sample_integer
///             integerValue: 1
///           - key: sample_secret_value
///             secretValue:
///               secretVersion: ${["secret-version-basic"].name}
///           - key: sample_encryption_key_value
///             encryptionKeyValue:
///               type: GOOGLE_MANAGED
///               kmsKeyName: sampleKMSKkey
///         authType: USER_PASSWORD
///         authKey: sampleAuthKey
///         userPassword:
///           username: user@xyz.com
///           password:
///             secretVersion: ${["secret-version-basic"].name}
///       destinationConfigs:
///         - key: url
///           destinations:
///             - host: https://test.zendesk.com
///               port: 80
///       lockConfig:
///         locked: false
///         reason: Its not locked
///       logConfig:
///         enabled: true
///       nodeConfig:
///         minNodeCount: 2
///         maxNodeCount: 50
///       labels:
///         foo: bar
///       sslConfig:
///         additionalVariables:
///           - key: sample_string
///             stringValue: sampleString
///           - key: sample_boolean
///             booleanValue: false
///           - key: sample_integer
///             integerValue: 1
///           - key: sample_secret_value
///             secretValue:
///               secretVersion: ${["secret-version-basic"].name}
///           - key: sample_encryption_key_value
///             encryptionKeyValue:
///               type: GOOGLE_MANAGED
///               kmsKeyName: sampleKMSKkey
///         clientCertType: PEM
///         clientCertificate:
///           secretVersion: ${["secret-version-basic"].name}
///         clientPrivateKey:
///           secretVersion: ${["secret-version-basic"].name}
///         clientPrivateKeyPass:
///           secretVersion: ${["secret-version-basic"].name}
///         privateServerCertificate:
///           secretVersion: ${["secret-version-basic"].name}
///         serverCertType: PEM
///         trustModel: PRIVATE
///         type: TLS
///         useSsl: true
///       eventingEnablementType: EVENTING_AND_CONNECTION
///       eventingConfig:
///         additionalVariables:
///           - key: sample_string
///             stringValue: sampleString
///           - key: sample_boolean
///             booleanValue: false
///           - key: sample_integer
///             integerValue: 1
///           - key: sample_secret_value
///             secretValue:
///               secretVersion: ${["secret-version-basic"].name}
///           - key: sample_encryption_key_value
///             encryptionKeyValue:
///               type: GOOGLE_MANAGED
///               kmsKeyName: sampleKMSKkey
///         registrationDestinationConfig:
///           key: registration_destination_config
///           destinations:
///             - host: https://test.zendesk.com
///               port: 80
///         authConfig:
///           authType: USER_PASSWORD
///           authKey: sampleAuthKey
///           userPassword:
///             username: user@xyz.com
///             password:
///               secretVersion: ${["secret-version-basic"].name}
///           additionalVariables:
///             - key: sample_string
///               stringValue: sampleString
///             - key: sample_boolean
///               booleanValue: false
///             - key: sample_integer
///               integerValue: 1
///             - key: sample_secret_value
///               secretValue:
///                 secretVersion: ${["secret-version-basic"].name}
///             - key: sample_encryption_key_value
///               encryptionKeyValue:
///                 type: GOOGLE_MANAGED
///                 kmsKeyName: sampleKMSKkey
///         enrichmentEnabled: true
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{name}}
/// $ pulumi import gcp:integrationconnectors/connection:Connection default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:integrationconnectors/connection:Connection default {{location}}/{{name}}
/// ```
class Connection extends pulumi.CustomResource {
  /// authConfig for the connection.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionAuthConfig?> authConfig;
  /// Config Variables for the connection.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> configVariables;
  /// Connection revision. This field is only updated when the connection is created or updated by User.
  late final pulumi.Output<String> connectionRevision;
  /// connectorVersion of the Connector.
  late final pulumi.Output<String> connectorVersion;
  /// This configuration provides infra configs like rate limit threshold which need to be configurable for every connector version.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectorVersionInfraConfigs;
  /// Flag to mark the version indicating the launch stage.
  late final pulumi.Output<String> connectorVersionLaunchStage;
  /// Time the Namespace was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An arbitrary description for the Connection.
  late final pulumi.Output<String?> description;
  /// Define the Connectors target endpoint.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationConfigs;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Eventing Configuration of a connection
  /// Structure is documented below.
  late final pulumi.Output<ConnectionEventingConfig?> eventingConfig;
  /// Eventing enablement type. Will be nil if eventing is not enabled.
  /// Possible values are: `EVENTING_AND_CONNECTION`, `ONLY_EVENTING`.
  late final pulumi.Output<String?> eventingEnablementType;
  /// Eventing Runtime Data.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> eventingRuntimeDatas;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location in which Connection needs to be created.
  late final pulumi.Output<String> location;
  /// Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionLockConfig?> lockConfig;
  /// Log configuration for the connection.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionLogConfig?> logConfig;
  /// Name of Connection needs to be created.
  late final pulumi.Output<String> name;
  /// Node configuration for the connection.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionNodeConfig> nodeConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Service account needed for runtime plane to access Google Cloud resources.
  late final pulumi.Output<String> serviceAccount;
  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address.
  /// e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  late final pulumi.Output<String> serviceDirectory;
  /// SSL Configuration of a connection
  /// Structure is documented below.
  late final pulumi.Output<ConnectionSslConfig?> sslConfig;
  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// This subscription type enum states the subscription type of the project.
  late final pulumi.Output<String> subscriptionType;
  /// Suspended indicates if a user has suspended a connection or not.
  late final pulumi.Output<bool?> suspended;
  /// Time the Namespace was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_integrationconnectors_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConfig = registerOutput<ConnectionAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configVariables = registerOutput<List<Map<String, dynamic>>?>('configVariables');
    connectionRevision = registerOutput<String>('connectionRevision');
    connectorVersion = registerOutput<String>('connectorVersion');
    connectorVersionInfraConfigs = registerOutput<List<Map<String, dynamic>>>('connectorVersionInfraConfigs');
    connectorVersionLaunchStage = registerOutput<String>('connectorVersionLaunchStage');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destinationConfigs = registerOutput<List<Map<String, dynamic>>?>('destinationConfigs');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    eventingConfig = registerOutput<ConnectionEventingConfig?>('eventingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionEventingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventingEnablementType = registerOutput<String?>('eventingEnablementType');
    eventingRuntimeDatas = registerOutput<List<Map<String, dynamic>>>('eventingRuntimeDatas');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    lockConfig = registerOutput<ConnectionLockConfig?>('lockConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionLockConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<ConnectionLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<ConnectionNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    serviceAccount = registerOutput<String>('serviceAccount');
    serviceDirectory = registerOutput<String>('serviceDirectory');
    sslConfig = registerOutput<ConnectionSslConfig?>('sslConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    subscriptionType = registerOutput<String>('subscriptionType');
    suspended = registerOutput<bool?>('suspended');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConfig = registerOutput<ConnectionAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configVariables = registerOutput<List<Map<String, dynamic>>?>('configVariables');
    connectionRevision = registerOutput<String>('connectionRevision');
    connectorVersion = registerOutput<String>('connectorVersion');
    connectorVersionInfraConfigs = registerOutput<List<Map<String, dynamic>>>('connectorVersionInfraConfigs');
    connectorVersionLaunchStage = registerOutput<String>('connectorVersionLaunchStage');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destinationConfigs = registerOutput<List<Map<String, dynamic>>?>('destinationConfigs');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    eventingConfig = registerOutput<ConnectionEventingConfig?>('eventingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionEventingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventingEnablementType = registerOutput<String?>('eventingEnablementType');
    eventingRuntimeDatas = registerOutput<List<Map<String, dynamic>>>('eventingRuntimeDatas');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    lockConfig = registerOutput<ConnectionLockConfig?>('lockConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionLockConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<ConnectionLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<ConnectionNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    serviceAccount = registerOutput<String>('serviceAccount');
    serviceDirectory = registerOutput<String>('serviceDirectory');
    sslConfig = registerOutput<ConnectionSslConfig?>('sslConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    subscriptionType = registerOutput<String>('subscriptionType');
    suspended = registerOutput<bool?>('suspended');
    updateTime = registerOutput<String>('updateTime');
  }
}
