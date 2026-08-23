import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_args.dart';
import 'account_connector_custom_oauth_config.dart';
import 'account_connector_provider_oauth_config.dart';
import 'account_connector_proxy_config.dart';
import 'account_connector_state.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Developer Connect Account Connector Github
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "my-ac",
///     providerOauthConfig: {
///         systemProviderId: "GITHUB",
///         scopes: ["repo"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="my-ac",
///     provider_oauth_config={
///         "system_provider_id": "GITHUB",
///         "scopes": ["repo"],
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
///     var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
///     {
///         Location = "us-central1",
///         AccountConnectorId = "my-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "GITHUB",
///             Scopes = new[]
///             {
///                 "repo",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			AccountConnectorId: pulumi.String("my-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("GITHUB"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("repo"),
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
/// resource "gcp_developerconnect_accountconnector" "my-account-connector" {
///   location             = "us-central1"
///   account_connector_id = "my-ac"
///   provider_oauth_config = {
///     system_provider_id = "GITHUB"
///     scopes             = ["repo"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("my-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("GITHUB")
///                 .scopes("repo")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-account-connector:
///     type: gcp:developerconnect:AccountConnector
///     properties:
///       location: us-central1
///       accountConnectorId: my-ac
///       providerOauthConfig:
///         systemProviderId: GITHUB
///         scopes:
///           - repo
/// ```
///
/// ### Developer Connect Account Connector Gitlab
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "my-ac",
///     providerOauthConfig: {
///         systemProviderId: "GITLAB",
///         scopes: ["api"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="my-ac",
///     provider_oauth_config={
///         "system_provider_id": "GITLAB",
///         "scopes": ["api"],
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
///     var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
///     {
///         Location = "us-central1",
///         AccountConnectorId = "my-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "GITLAB",
///             Scopes = new[]
///             {
///                 "api",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			AccountConnectorId: pulumi.String("my-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("GITLAB"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("api"),
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
/// resource "gcp_developerconnect_accountconnector" "my-account-connector" {
///   location             = "us-central1"
///   account_connector_id = "my-ac"
///   provider_oauth_config = {
///     system_provider_id = "GITLAB"
///     scopes             = ["api"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("my-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("GITLAB")
///                 .scopes("api")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-account-connector:
///     type: gcp:developerconnect:AccountConnector
///     properties:
///       location: us-central1
///       accountConnectorId: my-ac
///       providerOauthConfig:
///         systemProviderId: GITLAB
///         scopes:
///           - api
/// ```
///
/// ### Developer Connect Account Connector Ghe
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gheAcClientId = new gcp.secretmanager.Secret("ghe_ac_client_id", {
///     secretId: "ghe-ac-id",
///     replication: {
///         auto: {},
///     },
/// });
/// const gheAcClientIdVersion = new gcp.secretmanager.SecretVersion("ghe_ac_client_id_version", {
///     secret: gheAcClientId.name,
///     secretData: "dummy-client-id",
/// });
/// const gheAcClientSecret = new gcp.secretmanager.Secret("ghe_ac_client_secret", {
///     secretId: "ghe-ac-sec",
///     replication: {
///         auto: {},
///     },
/// });
/// const gheAcClientSecretVersion = new gcp.secretmanager.SecretVersion("ghe_ac_client_secret_version", {
///     secret: gheAcClientSecret.name,
///     secretData: "dummy-client-secret",
/// });
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "my-ac",
///     customOauthConfig: {
///         authUri: "https://ghe.proctor-staging-test.com/login/oauth/authorize",
///         clientId: gheAcClientIdVersion.secretData,
///         clientSecret: gheAcClientSecretVersion.secretData,
///         tokenUri: "https://ghe.proctor-staging-test.com/login/oauth/access_token",
///         hostUri: "https://ghe.proctor-staging-test.com",
///         scmProvider: "GITHUB_ENTERPRISE",
///         scopes: ["repo"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ghe_ac_client_id = gcp.secretmanager.Secret("ghe_ac_client_id",
///     secret_id="ghe-ac-id",
///     replication={
///         "auto": {},
///     })
/// ghe_ac_client_id_version = gcp.secretmanager.SecretVersion("ghe_ac_client_id_version",
///     secret=ghe_ac_client_id.name,
///     secret_data="dummy-client-id")
/// ghe_ac_client_secret = gcp.secretmanager.Secret("ghe_ac_client_secret",
///     secret_id="ghe-ac-sec",
///     replication={
///         "auto": {},
///     })
/// ghe_ac_client_secret_version = gcp.secretmanager.SecretVersion("ghe_ac_client_secret_version",
///     secret=ghe_ac_client_secret.name,
///     secret_data="dummy-client-secret")
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="my-ac",
///     custom_oauth_config={
///         "auth_uri": "https://ghe.proctor-staging-test.com/login/oauth/authorize",
///         "client_id": ghe_ac_client_id_version.secret_data,
///         "client_secret": ghe_ac_client_secret_version.secret_data,
///         "token_uri": "https://ghe.proctor-staging-test.com/login/oauth/access_token",
///         "host_uri": "https://ghe.proctor-staging-test.com",
///         "scm_provider": "GITHUB_ENTERPRISE",
///         "scopes": ["repo"],
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
///     var gheAcClientId = new Gcp.SecretManager.Secret("ghe_ac_client_id", new()
///     {
///         SecretId = "ghe-ac-id",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var gheAcClientIdVersion = new Gcp.SecretManager.SecretVersion("ghe_ac_client_id_version", new()
///     {
///         Secret = gheAcClientId.Name,
///         SecretData = "dummy-client-id",
///     });
///
///     var gheAcClientSecret = new Gcp.SecretManager.Secret("ghe_ac_client_secret", new()
///     {
///         SecretId = "ghe-ac-sec",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var gheAcClientSecretVersion = new Gcp.SecretManager.SecretVersion("ghe_ac_client_secret_version", new()
///     {
///         Secret = gheAcClientSecret.Name,
///         SecretData = "dummy-client-secret",
///     });
///
///     var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
///     {
///         Location = "us-central1",
///         AccountConnectorId = "my-ac",
///         CustomOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorCustomOauthConfigArgs
///         {
///             AuthUri = "https://ghe.proctor-staging-test.com/login/oauth/authorize",
///             ClientId = gheAcClientIdVersion.SecretData,
///             ClientSecret = gheAcClientSecretVersion.SecretData,
///             TokenUri = "https://ghe.proctor-staging-test.com/login/oauth/access_token",
///             HostUri = "https://ghe.proctor-staging-test.com",
///             ScmProvider = "GITHUB_ENTERPRISE",
///             Scopes = new[]
///             {
///                 "repo",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gheAcClientId, err := secretmanager.NewSecret(ctx, "ghe_ac_client_id", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("ghe-ac-id"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gheAcClientIdVersion, err := secretmanager.NewSecretVersion(ctx, "ghe_ac_client_id_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     gheAcClientId.Name,
/// 			SecretData: pulumi.String("dummy-client-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gheAcClientSecret, err := secretmanager.NewSecret(ctx, "ghe_ac_client_secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("ghe-ac-sec"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gheAcClientSecretVersion, err := secretmanager.NewSecretVersion(ctx, "ghe_ac_client_secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     gheAcClientSecret.Name,
/// 			SecretData: pulumi.String("dummy-client-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			AccountConnectorId: pulumi.String("my-ac"),
/// 			CustomOauthConfig: &developerconnect.AccountConnectorCustomOauthConfigArgs{
/// 				AuthUri:      pulumi.String("https://ghe.proctor-staging-test.com/login/oauth/authorize"),
/// 				ClientId:     gheAcClientIdVersion.SecretData,
/// 				ClientSecret: gheAcClientSecretVersion.SecretData,
/// 				TokenUri:     pulumi.String("https://ghe.proctor-staging-test.com/login/oauth/access_token"),
/// 				HostUri:      pulumi.String("https://ghe.proctor-staging-test.com"),
/// 				ScmProvider:  pulumi.String("GITHUB_ENTERPRISE"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("repo"),
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
/// resource "gcp_secretmanager_secret" "ghe_ac_client_id" {
///   secret_id = "ghe-ac-id"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "ghe_ac_client_id_version" {
///   secret      = gcp_secretmanager_secret.ghe_ac_client_id.name
///   secret_data = "dummy-client-id"
/// }
/// resource "gcp_secretmanager_secret" "ghe_ac_client_secret" {
///   secret_id = "ghe-ac-sec"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "ghe_ac_client_secret_version" {
///   secret      = gcp_secretmanager_secret.ghe_ac_client_secret.name
///   secret_data = "dummy-client-secret"
/// }
/// resource "gcp_developerconnect_accountconnector" "my-account-connector" {
///   location             = "us-central1"
///   account_connector_id = "my-ac"
///   custom_oauth_config = {
///     auth_uri      = "https://ghe.proctor-staging-test.com/login/oauth/authorize"
///     client_id     = gcp_secretmanager_secretversion.ghe_ac_client_id_version.secret_data
///     client_secret = gcp_secretmanager_secretversion.ghe_ac_client_secret_version.secret_data
///     token_uri     = "https://ghe.proctor-staging-test.com/login/oauth/access_token"
///     host_uri      = "https://ghe.proctor-staging-test.com"
///     scm_provider  = "GITHUB_ENTERPRISE"
///     scopes        = ["repo"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorCustomOauthConfigArgs;
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
///         var gheAcClientId = new Secret("gheAcClientId", SecretArgs.builder()
///             .secretId("ghe-ac-id")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var gheAcClientIdVersion = new SecretVersion("gheAcClientIdVersion", SecretVersionArgs.builder()
///             .secret(gheAcClientId.name())
///             .secretData("dummy-client-id")
///             .build());
///
///         var gheAcClientSecret = new Secret("gheAcClientSecret", SecretArgs.builder()
///             .secretId("ghe-ac-sec")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var gheAcClientSecretVersion = new SecretVersion("gheAcClientSecretVersion", SecretVersionArgs.builder()
///             .secret(gheAcClientSecret.name())
///             .secretData("dummy-client-secret")
///             .build());
///
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("my-ac")
///             .customOauthConfig(AccountConnectorCustomOauthConfigArgs.builder()
///                 .authUri("https://ghe.proctor-staging-test.com/login/oauth/authorize")
///                 .clientId(gheAcClientIdVersion.secretData())
///                 .clientSecret(gheAcClientSecretVersion.secretData())
///                 .tokenUri("https://ghe.proctor-staging-test.com/login/oauth/access_token")
///                 .hostUri("https://ghe.proctor-staging-test.com")
///                 .scmProvider("GITHUB_ENTERPRISE")
///                 .scopes("repo")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gheAcClientId:
///     type: gcp:secretmanager:Secret
///     name: ghe_ac_client_id
///     properties:
///       secretId: ghe-ac-id
///       replication:
///         auto: {}
///   gheAcClientIdVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: ghe_ac_client_id_version
///     properties:
///       secret: ${gheAcClientId.name}
///       secretData: dummy-client-id
///   gheAcClientSecret:
///     type: gcp:secretmanager:Secret
///     name: ghe_ac_client_secret
///     properties:
///       secretId: ghe-ac-sec
///       replication:
///         auto: {}
///   gheAcClientSecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: ghe_ac_client_secret_version
///     properties:
///       secret: ${gheAcClientSecret.name}
///       secretData: dummy-client-secret
///   my-account-connector:
///     type: gcp:developerconnect:AccountConnector
///     properties:
///       location: us-central1
///       accountConnectorId: my-ac
///       customOauthConfig:
///         authUri: https://ghe.proctor-staging-test.com/login/oauth/authorize
///         clientId: ${gheAcClientIdVersion.secretData}
///         clientSecret: ${gheAcClientSecretVersion.secretData}
///         tokenUri: https://ghe.proctor-staging-test.com/login/oauth/access_token
///         hostUri: https://ghe.proctor-staging-test.com
///         scmProvider: GITHUB_ENTERPRISE
///         scopes:
///           - repo
/// ```
///
/// ### Developer Connect Account Connector Gle
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gleAcClientId = new gcp.secretmanager.Secret("gle_ac_client_id", {
///     secretId: "gle-ac-id",
///     replication: {
///         auto: {},
///     },
/// });
/// const gleAcClientIdVersion = new gcp.secretmanager.SecretVersion("gle_ac_client_id_version", {
///     secret: gleAcClientId.name,
///     secretData: "dummy-client-id",
/// });
/// const gleAcClientSecret = new gcp.secretmanager.Secret("gle_ac_client_secret", {
///     secretId: "gle-ac-sec",
///     replication: {
///         auto: {},
///     },
/// });
/// const gleAcClientSecretVersion = new gcp.secretmanager.SecretVersion("gle_ac_client_secret_version", {
///     secret: gleAcClientSecret.name,
///     secretData: "dummy-client-secret",
/// });
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "my-ac",
///     customOauthConfig: {
///         authUri: "https://gle-us-central1.gcb-test.com/oauth/authorize",
///         clientId: gleAcClientIdVersion.secretData,
///         clientSecret: gleAcClientSecretVersion.secretData,
///         tokenUri: "https://gle-us-central1.gcb-test.com/oauth/token",
///         hostUri: "https://gle-us-central1.gcb-test.com",
///         scmProvider: "GITLAB_ENTERPRISE",
///         scopes: ["api"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gle_ac_client_id = gcp.secretmanager.Secret("gle_ac_client_id",
///     secret_id="gle-ac-id",
///     replication={
///         "auto": {},
///     })
/// gle_ac_client_id_version = gcp.secretmanager.SecretVersion("gle_ac_client_id_version",
///     secret=gle_ac_client_id.name,
///     secret_data="dummy-client-id")
/// gle_ac_client_secret = gcp.secretmanager.Secret("gle_ac_client_secret",
///     secret_id="gle-ac-sec",
///     replication={
///         "auto": {},
///     })
/// gle_ac_client_secret_version = gcp.secretmanager.SecretVersion("gle_ac_client_secret_version",
///     secret=gle_ac_client_secret.name,
///     secret_data="dummy-client-secret")
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="my-ac",
///     custom_oauth_config={
///         "auth_uri": "https://gle-us-central1.gcb-test.com/oauth/authorize",
///         "client_id": gle_ac_client_id_version.secret_data,
///         "client_secret": gle_ac_client_secret_version.secret_data,
///         "token_uri": "https://gle-us-central1.gcb-test.com/oauth/token",
///         "host_uri": "https://gle-us-central1.gcb-test.com",
///         "scm_provider": "GITLAB_ENTERPRISE",
///         "scopes": ["api"],
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
///     var gleAcClientId = new Gcp.SecretManager.Secret("gle_ac_client_id", new()
///     {
///         SecretId = "gle-ac-id",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var gleAcClientIdVersion = new Gcp.SecretManager.SecretVersion("gle_ac_client_id_version", new()
///     {
///         Secret = gleAcClientId.Name,
///         SecretData = "dummy-client-id",
///     });
///
///     var gleAcClientSecret = new Gcp.SecretManager.Secret("gle_ac_client_secret", new()
///     {
///         SecretId = "gle-ac-sec",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var gleAcClientSecretVersion = new Gcp.SecretManager.SecretVersion("gle_ac_client_secret_version", new()
///     {
///         Secret = gleAcClientSecret.Name,
///         SecretData = "dummy-client-secret",
///     });
///
///     var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
///     {
///         Location = "us-central1",
///         AccountConnectorId = "my-ac",
///         CustomOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorCustomOauthConfigArgs
///         {
///             AuthUri = "https://gle-us-central1.gcb-test.com/oauth/authorize",
///             ClientId = gleAcClientIdVersion.SecretData,
///             ClientSecret = gleAcClientSecretVersion.SecretData,
///             TokenUri = "https://gle-us-central1.gcb-test.com/oauth/token",
///             HostUri = "https://gle-us-central1.gcb-test.com",
///             ScmProvider = "GITLAB_ENTERPRISE",
///             Scopes = new[]
///             {
///                 "api",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gleAcClientId, err := secretmanager.NewSecret(ctx, "gle_ac_client_id", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("gle-ac-id"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gleAcClientIdVersion, err := secretmanager.NewSecretVersion(ctx, "gle_ac_client_id_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     gleAcClientId.Name,
/// 			SecretData: pulumi.String("dummy-client-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gleAcClientSecret, err := secretmanager.NewSecret(ctx, "gle_ac_client_secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("gle-ac-sec"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gleAcClientSecretVersion, err := secretmanager.NewSecretVersion(ctx, "gle_ac_client_secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     gleAcClientSecret.Name,
/// 			SecretData: pulumi.String("dummy-client-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			AccountConnectorId: pulumi.String("my-ac"),
/// 			CustomOauthConfig: &developerconnect.AccountConnectorCustomOauthConfigArgs{
/// 				AuthUri:      pulumi.String("https://gle-us-central1.gcb-test.com/oauth/authorize"),
/// 				ClientId:     gleAcClientIdVersion.SecretData,
/// 				ClientSecret: gleAcClientSecretVersion.SecretData,
/// 				TokenUri:     pulumi.String("https://gle-us-central1.gcb-test.com/oauth/token"),
/// 				HostUri:      pulumi.String("https://gle-us-central1.gcb-test.com"),
/// 				ScmProvider:  pulumi.String("GITLAB_ENTERPRISE"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("api"),
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
/// resource "gcp_secretmanager_secret" "gle_ac_client_id" {
///   secret_id = "gle-ac-id"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "gle_ac_client_id_version" {
///   secret      = gcp_secretmanager_secret.gle_ac_client_id.name
///   secret_data = "dummy-client-id"
/// }
/// resource "gcp_secretmanager_secret" "gle_ac_client_secret" {
///   secret_id = "gle-ac-sec"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "gle_ac_client_secret_version" {
///   secret      = gcp_secretmanager_secret.gle_ac_client_secret.name
///   secret_data = "dummy-client-secret"
/// }
/// resource "gcp_developerconnect_accountconnector" "my-account-connector" {
///   location             = "us-central1"
///   account_connector_id = "my-ac"
///   custom_oauth_config = {
///     auth_uri      = "https://gle-us-central1.gcb-test.com/oauth/authorize"
///     client_id     = gcp_secretmanager_secretversion.gle_ac_client_id_version.secret_data
///     client_secret = gcp_secretmanager_secretversion.gle_ac_client_secret_version.secret_data
///     token_uri     = "https://gle-us-central1.gcb-test.com/oauth/token"
///     host_uri      = "https://gle-us-central1.gcb-test.com"
///     scm_provider  = "GITLAB_ENTERPRISE"
///     scopes        = ["api"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorCustomOauthConfigArgs;
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
///         var gleAcClientId = new Secret("gleAcClientId", SecretArgs.builder()
///             .secretId("gle-ac-id")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var gleAcClientIdVersion = new SecretVersion("gleAcClientIdVersion", SecretVersionArgs.builder()
///             .secret(gleAcClientId.name())
///             .secretData("dummy-client-id")
///             .build());
///
///         var gleAcClientSecret = new Secret("gleAcClientSecret", SecretArgs.builder()
///             .secretId("gle-ac-sec")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var gleAcClientSecretVersion = new SecretVersion("gleAcClientSecretVersion", SecretVersionArgs.builder()
///             .secret(gleAcClientSecret.name())
///             .secretData("dummy-client-secret")
///             .build());
///
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("my-ac")
///             .customOauthConfig(AccountConnectorCustomOauthConfigArgs.builder()
///                 .authUri("https://gle-us-central1.gcb-test.com/oauth/authorize")
///                 .clientId(gleAcClientIdVersion.secretData())
///                 .clientSecret(gleAcClientSecretVersion.secretData())
///                 .tokenUri("https://gle-us-central1.gcb-test.com/oauth/token")
///                 .hostUri("https://gle-us-central1.gcb-test.com")
///                 .scmProvider("GITLAB_ENTERPRISE")
///                 .scopes("api")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gleAcClientId:
///     type: gcp:secretmanager:Secret
///     name: gle_ac_client_id
///     properties:
///       secretId: gle-ac-id
///       replication:
///         auto: {}
///   gleAcClientIdVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: gle_ac_client_id_version
///     properties:
///       secret: ${gleAcClientId.name}
///       secretData: dummy-client-id
///   gleAcClientSecret:
///     type: gcp:secretmanager:Secret
///     name: gle_ac_client_secret
///     properties:
///       secretId: gle-ac-sec
///       replication:
///         auto: {}
///   gleAcClientSecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: gle_ac_client_secret_version
///     properties:
///       secret: ${gleAcClientSecret.name}
///       secretData: dummy-client-secret
///   my-account-connector:
///     type: gcp:developerconnect:AccountConnector
///     properties:
///       location: us-central1
///       accountConnectorId: my-ac
///       customOauthConfig:
///         authUri: https://gle-us-central1.gcb-test.com/oauth/authorize
///         clientId: ${gleAcClientIdVersion.secretData}
///         clientSecret: ${gleAcClientSecretVersion.secretData}
///         tokenUri: https://gle-us-central1.gcb-test.com/oauth/token
///         hostUri: https://gle-us-central1.gcb-test.com
///         scmProvider: GITLAB_ENTERPRISE
///         scopes:
///           - api
/// ```
///
/// ### Developer Connect Account Connector Bbdc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bbdcAcPrivClientId = new gcp.secretmanager.Secret("bbdc_ac_priv_client_id", {
///     secretId: "bbdc-ac-id",
///     replication: {
///         auto: {},
///     },
/// });
/// const bbdcAcPrivClientIdVersion = new gcp.secretmanager.SecretVersion("bbdc_ac_priv_client_id_version", {
///     secret: bbdcAcPrivClientId.name,
///     secretData: "dummy-client-id",
/// });
/// const bbdcAcPrivClientSecret = new gcp.secretmanager.Secret("bbdc_ac_priv_client_secret", {
///     secretId: "bbdc-ac-sec",
///     replication: {
///         auto: {},
///     },
/// });
/// const bbdcAcPrivClientSecretVersion = new gcp.secretmanager.SecretVersion("bbdc_ac_priv_client_secret_version", {
///     secret: bbdcAcPrivClientSecret.name,
///     secretData: "dummy-client-secret",
/// });
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "my-ac",
///     customOauthConfig: {
///         authUri: "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize",
///         clientId: bbdcAcPrivClientIdVersion.secretData,
///         clientSecret: bbdcAcPrivClientSecretVersion.secretData,
///         tokenUri: "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token",
///         hostUri: "https://bitbucket-us-central.gcb-test.com",
///         scmProvider: "BITBUCKET_DATA_CENTER",
///         scopes: ["REPO_ADMIN"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bbdc_ac_priv_client_id = gcp.secretmanager.Secret("bbdc_ac_priv_client_id",
///     secret_id="bbdc-ac-id",
///     replication={
///         "auto": {},
///     })
/// bbdc_ac_priv_client_id_version = gcp.secretmanager.SecretVersion("bbdc_ac_priv_client_id_version",
///     secret=bbdc_ac_priv_client_id.name,
///     secret_data="dummy-client-id")
/// bbdc_ac_priv_client_secret = gcp.secretmanager.Secret("bbdc_ac_priv_client_secret",
///     secret_id="bbdc-ac-sec",
///     replication={
///         "auto": {},
///     })
/// bbdc_ac_priv_client_secret_version = gcp.secretmanager.SecretVersion("bbdc_ac_priv_client_secret_version",
///     secret=bbdc_ac_priv_client_secret.name,
///     secret_data="dummy-client-secret")
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="my-ac",
///     custom_oauth_config={
///         "auth_uri": "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize",
///         "client_id": bbdc_ac_priv_client_id_version.secret_data,
///         "client_secret": bbdc_ac_priv_client_secret_version.secret_data,
///         "token_uri": "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token",
///         "host_uri": "https://bitbucket-us-central.gcb-test.com",
///         "scm_provider": "BITBUCKET_DATA_CENTER",
///         "scopes": ["REPO_ADMIN"],
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
///     var bbdcAcPrivClientId = new Gcp.SecretManager.Secret("bbdc_ac_priv_client_id", new()
///     {
///         SecretId = "bbdc-ac-id",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var bbdcAcPrivClientIdVersion = new Gcp.SecretManager.SecretVersion("bbdc_ac_priv_client_id_version", new()
///     {
///         Secret = bbdcAcPrivClientId.Name,
///         SecretData = "dummy-client-id",
///     });
///
///     var bbdcAcPrivClientSecret = new Gcp.SecretManager.Secret("bbdc_ac_priv_client_secret", new()
///     {
///         SecretId = "bbdc-ac-sec",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var bbdcAcPrivClientSecretVersion = new Gcp.SecretManager.SecretVersion("bbdc_ac_priv_client_secret_version", new()
///     {
///         Secret = bbdcAcPrivClientSecret.Name,
///         SecretData = "dummy-client-secret",
///     });
///
///     var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
///     {
///         Location = "us-central1",
///         AccountConnectorId = "my-ac",
///         CustomOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorCustomOauthConfigArgs
///         {
///             AuthUri = "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize",
///             ClientId = bbdcAcPrivClientIdVersion.SecretData,
///             ClientSecret = bbdcAcPrivClientSecretVersion.SecretData,
///             TokenUri = "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token",
///             HostUri = "https://bitbucket-us-central.gcb-test.com",
///             ScmProvider = "BITBUCKET_DATA_CENTER",
///             Scopes = new[]
///             {
///                 "REPO_ADMIN",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bbdcAcPrivClientId, err := secretmanager.NewSecret(ctx, "bbdc_ac_priv_client_id", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("bbdc-ac-id"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bbdcAcPrivClientIdVersion, err := secretmanager.NewSecretVersion(ctx, "bbdc_ac_priv_client_id_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     bbdcAcPrivClientId.Name,
/// 			SecretData: pulumi.String("dummy-client-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bbdcAcPrivClientSecret, err := secretmanager.NewSecret(ctx, "bbdc_ac_priv_client_secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("bbdc-ac-sec"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bbdcAcPrivClientSecretVersion, err := secretmanager.NewSecretVersion(ctx, "bbdc_ac_priv_client_secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     bbdcAcPrivClientSecret.Name,
/// 			SecretData: pulumi.String("dummy-client-secret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			AccountConnectorId: pulumi.String("my-ac"),
/// 			CustomOauthConfig: &developerconnect.AccountConnectorCustomOauthConfigArgs{
/// 				AuthUri:      pulumi.String("https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize"),
/// 				ClientId:     bbdcAcPrivClientIdVersion.SecretData,
/// 				ClientSecret: bbdcAcPrivClientSecretVersion.SecretData,
/// 				TokenUri:     pulumi.String("https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token"),
/// 				HostUri:      pulumi.String("https://bitbucket-us-central.gcb-test.com"),
/// 				ScmProvider:  pulumi.String("BITBUCKET_DATA_CENTER"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("REPO_ADMIN"),
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
/// resource "gcp_secretmanager_secret" "bbdc_ac_priv_client_id" {
///   secret_id = "bbdc-ac-id"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "bbdc_ac_priv_client_id_version" {
///   secret      = gcp_secretmanager_secret.bbdc_ac_priv_client_id.name
///   secret_data = "dummy-client-id"
/// }
/// resource "gcp_secretmanager_secret" "bbdc_ac_priv_client_secret" {
///   secret_id = "bbdc-ac-sec"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secretversion" "bbdc_ac_priv_client_secret_version" {
///   secret      = gcp_secretmanager_secret.bbdc_ac_priv_client_secret.name
///   secret_data = "dummy-client-secret"
/// }
/// resource "gcp_developerconnect_accountconnector" "my-account-connector" {
///   location             = "us-central1"
///   account_connector_id = "my-ac"
///   custom_oauth_config = {
///     auth_uri      = "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize"
///     client_id     = gcp_secretmanager_secretversion.bbdc_ac_priv_client_id_version.secret_data
///     client_secret = gcp_secretmanager_secretversion.bbdc_ac_priv_client_secret_version.secret_data
///     token_uri     = "https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token"
///     host_uri      = "https://bitbucket-us-central.gcb-test.com"
///     scm_provider  = "BITBUCKET_DATA_CENTER"
///     scopes        = ["REPO_ADMIN"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorCustomOauthConfigArgs;
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
///         var bbdcAcPrivClientId = new Secret("bbdcAcPrivClientId", SecretArgs.builder()
///             .secretId("bbdc-ac-id")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var bbdcAcPrivClientIdVersion = new SecretVersion("bbdcAcPrivClientIdVersion", SecretVersionArgs.builder()
///             .secret(bbdcAcPrivClientId.name())
///             .secretData("dummy-client-id")
///             .build());
///
///         var bbdcAcPrivClientSecret = new Secret("bbdcAcPrivClientSecret", SecretArgs.builder()
///             .secretId("bbdc-ac-sec")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var bbdcAcPrivClientSecretVersion = new SecretVersion("bbdcAcPrivClientSecretVersion", SecretVersionArgs.builder()
///             .secret(bbdcAcPrivClientSecret.name())
///             .secretData("dummy-client-secret")
///             .build());
///
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("my-ac")
///             .customOauthConfig(AccountConnectorCustomOauthConfigArgs.builder()
///                 .authUri("https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize")
///                 .clientId(bbdcAcPrivClientIdVersion.secretData())
///                 .clientSecret(bbdcAcPrivClientSecretVersion.secretData())
///                 .tokenUri("https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token")
///                 .hostUri("https://bitbucket-us-central.gcb-test.com")
///                 .scmProvider("BITBUCKET_DATA_CENTER")
///                 .scopes("REPO_ADMIN")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bbdcAcPrivClientId:
///     type: gcp:secretmanager:Secret
///     name: bbdc_ac_priv_client_id
///     properties:
///       secretId: bbdc-ac-id
///       replication:
///         auto: {}
///   bbdcAcPrivClientIdVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: bbdc_ac_priv_client_id_version
///     properties:
///       secret: ${bbdcAcPrivClientId.name}
///       secretData: dummy-client-id
///   bbdcAcPrivClientSecret:
///     type: gcp:secretmanager:Secret
///     name: bbdc_ac_priv_client_secret
///     properties:
///       secretId: bbdc-ac-sec
///       replication:
///         auto: {}
///   bbdcAcPrivClientSecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: bbdc_ac_priv_client_secret_version
///     properties:
///       secret: ${bbdcAcPrivClientSecret.name}
///       secretData: dummy-client-secret
///   my-account-connector:
///     type: gcp:developerconnect:AccountConnector
///     properties:
///       location: us-central1
///       accountConnectorId: my-ac
///       customOauthConfig:
///         authUri: https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/authorize
///         clientId: ${bbdcAcPrivClientIdVersion.secretData}
///         clientSecret: ${bbdcAcPrivClientSecretVersion.secretData}
///         tokenUri: https://bitbucket-us-central.gcb-test.com/rest/oauth2/latest/token
///         hostUri: https://bitbucket-us-central.gcb-test.com
///         scmProvider: BITBUCKET_DATA_CENTER
///         scopes:
///           - REPO_ADMIN
/// ```
///
///
/// ## Import
///
/// AccountConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}`
/// * `{{project}}/{{location}}/{{account_connector_id}}`
/// * `{{location}}/{{account_connector_id}}`
///
///
/// When using the `pulumi import` command, AccountConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{project}}/{{location}}/{{account_connector_id}}
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{location}}/{{account_connector_id}}
/// ```
class AccountConnector extends pulumi.CustomResource {
  /// The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  late final pulumi.Output<String> accountConnectorId;
  /// Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The timestamp when the accountConnector was created.
  late final pulumi.Output<String> createTime;
  /// Message for a customized OAuth config.
  /// Structure is documented below.
  late final pulumi.Output<AccountConnectorCustomOauthConfig?> customOauthConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String?> etag;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the accountConnector, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  late final pulumi.Output<String> name;
  /// Start OAuth flow by clicking on this URL.
  late final pulumi.Output<String> oauthStartUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  late final pulumi.Output<AccountConnectorProviderOauthConfig?> providerOauthConfig;
  /// The proxy configuration.
  /// Structure is documented below.
  late final pulumi.Output<AccountConnectorProxyConfig?> proxyConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The timestamp when the accountConnector was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AccountConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountConnector]. {@macro pulumi_developerconnect_account_connector_account_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountConnector(
    String name, {
    AccountConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/accountConnector:AccountConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountConnectorId = registerOutput<String>('accountConnectorId');
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    customOauthConfig = registerOutput<AccountConnectorCustomOauthConfig?>('customOauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorCustomOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String?>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthStartUri = registerOutput<String>('oauthStartUri');
    project = registerOutput<String>('project');
    providerOauthConfig = registerOutput<AccountConnectorProviderOauthConfig?>('providerOauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorProviderOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    proxyConfig = registerOutput<AccountConnectorProxyConfig?>('proxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AccountConnector] resource's state with the given [name] and [id].
  static AccountConnector get(
    String name,
    pulumi.Input<String> id, {
    AccountConnectorState? state,
  }) {
    return AccountConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/accountConnector:AccountConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountConnectorId = registerOutput<String>('accountConnectorId');
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    customOauthConfig = registerOutput<AccountConnectorCustomOauthConfig?>('customOauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorCustomOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String?>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthStartUri = registerOutput<String>('oauthStartUri');
    project = registerOutput<String>('project');
    providerOauthConfig = registerOutput<AccountConnectorProviderOauthConfig?>('providerOauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorProviderOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    proxyConfig = registerOutput<AccountConnectorProxyConfig?>('proxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }
}
