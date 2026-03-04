import 'package:pulumi/pulumi.dart' as pulumi;
import 'aw_assume_role_authentication_details_properties_response.dart';
import 'connector_args.dart';
import 'hybrid_compute_settings_properties_response.dart';

/// The connector setting
///
/// Uses Azure REST API version 2020-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AwsAssumeRole - Create a cloud account connector for a subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Security.Connector("connector", new()
///     {
///         AuthenticationDetails = new AzureNative.Security.Inputs.AwAssumeRoleAuthenticationDetailsPropertiesArgs
///         {
///             AuthenticationType = "awsAssumeRole",
///             AwsAssumeRoleArn = "arn:aws:iam::81231569658:role/AscConnector",
///             AwsExternalId = "20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         },
///         ConnectorName = "aws_dev2",
///         HybridComputeSettings = new AzureNative.Security.Inputs.HybridComputeSettingsPropertiesArgs
///         {
///             AutoProvision = AzureNative.Security.AutoProvision.On,
///             ProxyServer = new AzureNative.Security.Inputs.ProxyServerPropertiesArgs
///             {
///                 Ip = "167.220.197.140",
///                 Port = "34",
///             },
///             Region = "West US 2",
///             ResourceGroupName = "AwsConnectorRG",
///             ServicePrincipal = new AzureNative.Security.Inputs.ServicePrincipalPropertiesArgs
///             {
///                 ApplicationId = "ad9bcd79-be9c-45ab-abd8-80ca1654a7d1",
///                 Secret = "<secret>",
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewConnector(ctx, "connector", &security.ConnectorArgs{
/// 			AuthenticationDetails: &security.AwAssumeRoleAuthenticationDetailsPropertiesArgs{
/// 				AuthenticationType: pulumi.String("awsAssumeRole"),
/// 				AwsAssumeRoleArn:   pulumi.String("arn:aws:iam::81231569658:role/AscConnector"),
/// 				AwsExternalId:      pulumi.String("20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			},
/// 			ConnectorName: pulumi.String("aws_dev2"),
/// 			HybridComputeSettings: &security.HybridComputeSettingsPropertiesArgs{
/// 				AutoProvision: pulumi.String(security.AutoProvisionOn),
/// 				ProxyServer: &security.ProxyServerPropertiesArgs{
/// 					Ip:   pulumi.String("167.220.197.140"),
/// 					Port: pulumi.String("34"),
/// 				},
/// 				Region:            pulumi.String("West US 2"),
/// 				ResourceGroupName: pulumi.String("AwsConnectorRG"),
/// 				ServicePrincipal: &security.ServicePrincipalPropertiesArgs{
/// 					ApplicationId: pulumi.String("ad9bcd79-be9c-45ab-abd8-80ca1654a7d1"),
/// 					Secret:        pulumi.String("<secret>"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.Connector;
/// import com.pulumi.azurenative.security.ConnectorArgs;
/// import com.pulumi.azurenative.security.inputs.HybridComputeSettingsPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.ProxyServerPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.ServicePrincipalPropertiesArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .authenticationDetails(AwAssumeRoleAuthenticationDetailsPropertiesArgs.builder()
///                 .authenticationType("awsAssumeRole")
///                 .awsAssumeRoleArn("arn:aws:iam::81231569658:role/AscConnector")
///                 .awsExternalId("20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///                 .build())
///             .connectorName("aws_dev2")
///             .hybridComputeSettings(HybridComputeSettingsPropertiesArgs.builder()
///                 .autoProvision("On")
///                 .proxyServer(ProxyServerPropertiesArgs.builder()
///                     .ip("167.220.197.140")
///                     .port("34")
///                     .build())
///                 .region("West US 2")
///                 .resourceGroupName("AwsConnectorRG")
///                 .servicePrincipal(ServicePrincipalPropertiesArgs.builder()
///                     .applicationId("ad9bcd79-be9c-45ab-abd8-80ca1654a7d1")
///                     .secret("<secret>")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const connector = new azure_native.security.Connector("connector", {
///     authenticationDetails: {
///         authenticationType: "awsAssumeRole",
///         awsAssumeRoleArn: "arn:aws:iam::81231569658:role/AscConnector",
///         awsExternalId: "20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     },
///     connectorName: "aws_dev2",
///     hybridComputeSettings: {
///         autoProvision: azure_native.security.AutoProvision.On,
///         proxyServer: {
///             ip: "167.220.197.140",
///             port: "34",
///         },
///         region: "West US 2",
///         resourceGroupName: "AwsConnectorRG",
///         servicePrincipal: {
///             applicationId: "ad9bcd79-be9c-45ab-abd8-80ca1654a7d1",
///             secret: "<secret>",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.security.Connector("connector",
///     authentication_details={
///         "authentication_type": "awsAssumeRole",
///         "aws_assume_role_arn": "arn:aws:iam::81231569658:role/AscConnector",
///         "aws_external_id": "20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     },
///     connector_name="aws_dev2",
///     hybrid_compute_settings={
///         "auto_provision": azure_native.security.AutoProvision.ON,
///         "proxy_server": {
///             "ip": "167.220.197.140",
///             "port": "34",
///         },
///         "region": "West US 2",
///         "resource_group_name": "AwsConnectorRG",
///         "service_principal": {
///             "application_id": "ad9bcd79-be9c-45ab-abd8-80ca1654a7d1",
///             "secret": "<secret>",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:security:Connector
///     properties:
///       authenticationDetails:
///         authenticationType: awsAssumeRole
///         awsAssumeRoleArn: arn:aws:iam::81231569658:role/AscConnector
///         awsExternalId: 20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       connectorName: aws_dev2
///       hybridComputeSettings:
///         autoProvision: On
///         proxyServer:
///           ip: 167.220.197.140
///           port: '34'
///         region: West US 2
///         resourceGroupName: AwsConnectorRG
///         servicePrincipal:
///           applicationId: ad9bcd79-be9c-45ab-abd8-80ca1654a7d1
///           secret: <secret>
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### AwsCred - Create a cloud account connector for a subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Security.Connector("connector", new()
///     {
///         AuthenticationDetails = new AzureNative.Security.Inputs.AwsCredsAuthenticationDetailsPropertiesArgs
///         {
///             AuthenticationType = "awsCreds",
///             AwsAccessKeyId = "<awsAccessKeyId>",
///             AwsSecretAccessKey = "<awsSecretAccessKey>",
///         },
///         ConnectorName = "aws_dev1",
///         HybridComputeSettings = new AzureNative.Security.Inputs.HybridComputeSettingsPropertiesArgs
///         {
///             AutoProvision = AzureNative.Security.AutoProvision.On,
///             ProxyServer = new AzureNative.Security.Inputs.ProxyServerPropertiesArgs
///             {
///                 Ip = "167.220.197.140",
///                 Port = "34",
///             },
///             Region = "West US 2",
///             ResourceGroupName = "AwsConnectorRG",
///             ServicePrincipal = new AzureNative.Security.Inputs.ServicePrincipalPropertiesArgs
///             {
///                 ApplicationId = "ad9bcd79-be9c-45ab-abd8-80ca1654a7d1",
///                 Secret = "<secret>",
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewConnector(ctx, "connector", &security.ConnectorArgs{
/// 			AuthenticationDetails: &security.AwsCredsAuthenticationDetailsPropertiesArgs{
/// 				AuthenticationType: pulumi.String("awsCreds"),
/// 				AwsAccessKeyId:     pulumi.String("<awsAccessKeyId>"),
/// 				AwsSecretAccessKey: pulumi.String("<awsSecretAccessKey>"),
/// 			},
/// 			ConnectorName: pulumi.String("aws_dev1"),
/// 			HybridComputeSettings: &security.HybridComputeSettingsPropertiesArgs{
/// 				AutoProvision: pulumi.String(security.AutoProvisionOn),
/// 				ProxyServer: &security.ProxyServerPropertiesArgs{
/// 					Ip:   pulumi.String("167.220.197.140"),
/// 					Port: pulumi.String("34"),
/// 				},
/// 				Region:            pulumi.String("West US 2"),
/// 				ResourceGroupName: pulumi.String("AwsConnectorRG"),
/// 				ServicePrincipal: &security.ServicePrincipalPropertiesArgs{
/// 					ApplicationId: pulumi.String("ad9bcd79-be9c-45ab-abd8-80ca1654a7d1"),
/// 					Secret:        pulumi.String("<secret>"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.Connector;
/// import com.pulumi.azurenative.security.ConnectorArgs;
/// import com.pulumi.azurenative.security.inputs.HybridComputeSettingsPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.ProxyServerPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.ServicePrincipalPropertiesArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .authenticationDetails(AwsCredsAuthenticationDetailsPropertiesArgs.builder()
///                 .authenticationType("awsCreds")
///                 .awsAccessKeyId("<awsAccessKeyId>")
///                 .awsSecretAccessKey("<awsSecretAccessKey>")
///                 .build())
///             .connectorName("aws_dev1")
///             .hybridComputeSettings(HybridComputeSettingsPropertiesArgs.builder()
///                 .autoProvision("On")
///                 .proxyServer(ProxyServerPropertiesArgs.builder()
///                     .ip("167.220.197.140")
///                     .port("34")
///                     .build())
///                 .region("West US 2")
///                 .resourceGroupName("AwsConnectorRG")
///                 .servicePrincipal(ServicePrincipalPropertiesArgs.builder()
///                     .applicationId("ad9bcd79-be9c-45ab-abd8-80ca1654a7d1")
///                     .secret("<secret>")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const connector = new azure_native.security.Connector("connector", {
///     authenticationDetails: {
///         authenticationType: "awsCreds",
///         awsAccessKeyId: "<awsAccessKeyId>",
///         awsSecretAccessKey: "<awsSecretAccessKey>",
///     },
///     connectorName: "aws_dev1",
///     hybridComputeSettings: {
///         autoProvision: azure_native.security.AutoProvision.On,
///         proxyServer: {
///             ip: "167.220.197.140",
///             port: "34",
///         },
///         region: "West US 2",
///         resourceGroupName: "AwsConnectorRG",
///         servicePrincipal: {
///             applicationId: "ad9bcd79-be9c-45ab-abd8-80ca1654a7d1",
///             secret: "<secret>",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.security.Connector("connector",
///     authentication_details={
///         "authentication_type": "awsCreds",
///         "aws_access_key_id": "<awsAccessKeyId>",
///         "aws_secret_access_key": "<awsSecretAccessKey>",
///     },
///     connector_name="aws_dev1",
///     hybrid_compute_settings={
///         "auto_provision": azure_native.security.AutoProvision.ON,
///         "proxy_server": {
///             "ip": "167.220.197.140",
///             "port": "34",
///         },
///         "region": "West US 2",
///         "resource_group_name": "AwsConnectorRG",
///         "service_principal": {
///             "application_id": "ad9bcd79-be9c-45ab-abd8-80ca1654a7d1",
///             "secret": "<secret>",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:security:Connector
///     properties:
///       authenticationDetails:
///         authenticationType: awsCreds
///         awsAccessKeyId: <awsAccessKeyId>
///         awsSecretAccessKey: <awsSecretAccessKey>
///       connectorName: aws_dev1
///       hybridComputeSettings:
///         autoProvision: On
///         proxyServer:
///           ip: 167.220.197.140
///           port: '34'
///         region: West US 2
///         resourceGroupName: AwsConnectorRG
///         servicePrincipal:
///           applicationId: ad9bcd79-be9c-45ab-abd8-80ca1654a7d1
///           secret: <secret>
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### gcpCredentials - Create a cloud account connector for a subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Security.Connector("connector", new()
///     {
///         AuthenticationDetails = new AzureNative.Security.Inputs.GcpCredentialsDetailsPropertiesArgs
///         {
///             AuthProviderX509CertUrl = "https://www.googleapis.com/oauth2/v1/certs",
///             AuthUri = "https://accounts.google.com/o/oauth2/auth",
///             AuthenticationType = "gcpCredentials",
///             ClientEmail = "asc-135@asc-project-1234.iam.gserviceaccount.com",
///             ClientId = "105889053725632919854",
///             ClientX509CertUrl = "https://www.googleapis.com/robot/v1/metadata/x509/asc-135%40asc-project-1234.iam.gserviceaccount.com",
///             OrganizationId = "AscDemoOrg",
///             PrivateKey = "******",
///             PrivateKeyId = "6efg587hra2568as34d22326b044cc20dc2af",
///             ProjectId = "asc-project-1234",
///             TokenUri = "https://oauth2.googleapis.com/token",
///             Type = "service_account",
///         },
///         ConnectorName = "gcp_dev",
///         HybridComputeSettings = new AzureNative.Security.Inputs.HybridComputeSettingsPropertiesArgs
///         {
///             AutoProvision = AzureNative.Security.AutoProvision.Off,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewConnector(ctx, "connector", &security.ConnectorArgs{
/// 			AuthenticationDetails: &security.GcpCredentialsDetailsPropertiesArgs{
/// 				AuthProviderX509CertUrl: pulumi.String("https://www.googleapis.com/oauth2/v1/certs"),
/// 				AuthUri:                 pulumi.String("https://accounts.google.com/o/oauth2/auth"),
/// 				AuthenticationType:      pulumi.String("gcpCredentials"),
/// 				ClientEmail:             pulumi.String("asc-135@asc-project-1234.iam.gserviceaccount.com"),
/// 				ClientId:                pulumi.String("105889053725632919854"),
/// 				ClientX509CertUrl:       pulumi.String("https://www.googleapis.com/robot/v1/metadata/x509/asc-135%40asc-project-1234.iam.gserviceaccount.com"),
/// 				OrganizationId:          pulumi.String("AscDemoOrg"),
/// 				PrivateKey:              pulumi.String("******"),
/// 				PrivateKeyId:            pulumi.String("6efg587hra2568as34d22326b044cc20dc2af"),
/// 				ProjectId:               pulumi.String("asc-project-1234"),
/// 				TokenUri:                pulumi.String("https://oauth2.googleapis.com/token"),
/// 				Type:                    pulumi.String("service_account"),
/// 			},
/// 			ConnectorName: pulumi.String("gcp_dev"),
/// 			HybridComputeSettings: &security.HybridComputeSettingsPropertiesArgs{
/// 				AutoProvision: pulumi.String(security.AutoProvisionOff),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.Connector;
/// import com.pulumi.azurenative.security.ConnectorArgs;
/// import com.pulumi.azurenative.security.inputs.HybridComputeSettingsPropertiesArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .authenticationDetails(GcpCredentialsDetailsPropertiesArgs.builder()
///                 .authProviderX509CertUrl("https://www.googleapis.com/oauth2/v1/certs")
///                 .authUri("https://accounts.google.com/o/oauth2/auth")
///                 .authenticationType("gcpCredentials")
///                 .clientEmail("asc-135@asc-project-1234.iam.gserviceaccount.com")
///                 .clientId("105889053725632919854")
///                 .clientX509CertUrl("https://www.googleapis.com/robot/v1/metadata/x509/asc-135%40asc-project-1234.iam.gserviceaccount.com")
///                 .organizationId("AscDemoOrg")
///                 .privateKey("******")
///                 .privateKeyId("6efg587hra2568as34d22326b044cc20dc2af")
///                 .projectId("asc-project-1234")
///                 .tokenUri("https://oauth2.googleapis.com/token")
///                 .type("service_account")
///                 .build())
///             .connectorName("gcp_dev")
///             .hybridComputeSettings(HybridComputeSettingsPropertiesArgs.builder()
///                 .autoProvision("Off")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const connector = new azure_native.security.Connector("connector", {
///     authenticationDetails: {
///         authProviderX509CertUrl: "https://www.googleapis.com/oauth2/v1/certs",
///         authUri: "https://accounts.google.com/o/oauth2/auth",
///         authenticationType: "gcpCredentials",
///         clientEmail: "asc-135@asc-project-1234.iam.gserviceaccount.com",
///         clientId: "105889053725632919854",
///         clientX509CertUrl: "https://www.googleapis.com/robot/v1/metadata/x509/asc-135%40asc-project-1234.iam.gserviceaccount.com",
///         organizationId: "AscDemoOrg",
///         privateKey: "******",
///         privateKeyId: "6efg587hra2568as34d22326b044cc20dc2af",
///         projectId: "asc-project-1234",
///         tokenUri: "https://oauth2.googleapis.com/token",
///         type: "service_account",
///     },
///     connectorName: "gcp_dev",
///     hybridComputeSettings: {
///         autoProvision: azure_native.security.AutoProvision.Off,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.security.Connector("connector",
///     authentication_details={
///         "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
///         "auth_uri": "https://accounts.google.com/o/oauth2/auth",
///         "authentication_type": "gcpCredentials",
///         "client_email": "asc-135@asc-project-1234.iam.gserviceaccount.com",
///         "client_id": "105889053725632919854",
///         "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/asc-135%40asc-project-1234.iam.gserviceaccount.com",
///         "organization_id": "AscDemoOrg",
///         "private_key": "******",
///         "private_key_id": "6efg587hra2568as34d22326b044cc20dc2af",
///         "project_id": "asc-project-1234",
///         "token_uri": "https://oauth2.googleapis.com/token",
///         "type": "service_account",
///     },
///     connector_name="gcp_dev",
///     hybrid_compute_settings={
///         "auto_provision": azure_native.security.AutoProvision.OFF,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:security:Connector
///     properties:
///       authenticationDetails:
///         authProviderX509CertUrl: https://www.googleapis.com/oauth2/v1/certs
///         authUri: https://accounts.google.com/o/oauth2/auth
///         authenticationType: gcpCredentials
///         clientEmail: asc-135@asc-project-1234.iam.gserviceaccount.com
///         clientId: '105889053725632919854'
///         clientX509CertUrl: https://www.googleapis.com/robot/v1/metadata/x509/asc-135%40asc-project-1234.iam.gserviceaccount.com
///         organizationId: AscDemoOrg
///         privateKey: '******'
///         privateKeyId: 6efg587hra2568as34d22326b044cc20dc2af
///         projectId: asc-project-1234
///         tokenUri: https://oauth2.googleapis.com/token
///         type: service_account
///       connectorName: gcp_dev
///       hybridComputeSettings:
///         autoProvision: Off
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:security:Connector gcp_dev /subscriptions/{subscriptionId}/providers/Microsoft.Security/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// Settings for authentication management, these settings are relevant only for the cloud connector.
  late final pulumi.Output<AwAssumeRoleAuthenticationDetailsPropertiesResponse?>
  authenticationDetails;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Settings for hybrid compute management. These settings are relevant only for Arc autoProvision (Hybrid Compute).
  late final pulumi.Output<HybridComputeSettingsPropertiesResponse?>
  hybridComputeSettings;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_security_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:Connector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authenticationDetails =
        registerOutput<AwAssumeRoleAuthenticationDetailsPropertiesResponse?>(
          'authenticationDetails',
        );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hybridComputeSettings =
        registerOutput<HybridComputeSettingsPropertiesResponse?>(
          'hybridComputeSettings',
        );
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
