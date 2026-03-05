import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_args.dart';
import 'account_connector_provider_oauth_config.dart';
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
///     accountConnectorId: "tf-test-ac",
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
///     account_connector_id="tf-test-ac",
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
///         AccountConnectorId = "tf-test-ac",
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
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
///       accountConnectorId: tf-test-ac
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
///     accountConnectorId: "tf-test-ac",
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
///     account_connector_id="tf-test-ac",
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
///         AccountConnectorId = "tf-test-ac",
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
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
///       accountConnectorId: tf-test-ac
///       providerOauthConfig:
///         systemProviderId: GITLAB
///         scopes:
///           - api
/// ```
///
/// ### Developer Connect Account Connector Google
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "tf-test-ac",
///     providerOauthConfig: {
///         systemProviderId: "GOOGLE",
///         scopes: ["https://www.googleapis.com/auth/drive.readonly"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="tf-test-ac",
///     provider_oauth_config={
///         "system_provider_id": "GOOGLE",
///         "scopes": ["https://www.googleapis.com/auth/drive.readonly"],
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
///         AccountConnectorId = "tf-test-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "GOOGLE",
///             Scopes = new[]
///             {
///                 "https://www.googleapis.com/auth/drive.readonly",
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("GOOGLE"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/drive.readonly"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("GOOGLE")
///                 .scopes("https://www.googleapis.com/auth/drive.readonly")
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
///       accountConnectorId: tf-test-ac
///       providerOauthConfig:
///         systemProviderId: GOOGLE
///         scopes:
///           - https://www.googleapis.com/auth/drive.readonly
/// ```
///
/// ### Developer Connect Account Connector Sentry
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "tf-test-ac",
///     providerOauthConfig: {
///         systemProviderId: "SENTRY",
///         scopes: ["org:read"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="tf-test-ac",
///     provider_oauth_config={
///         "system_provider_id": "SENTRY",
///         "scopes": ["org:read"],
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
///         AccountConnectorId = "tf-test-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "SENTRY",
///             Scopes = new[]
///             {
///                 "org:read",
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("SENTRY"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("org:read"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("SENTRY")
///                 .scopes("org:read")
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
///       accountConnectorId: tf-test-ac
///       providerOauthConfig:
///         systemProviderId: SENTRY
///         scopes:
///           - org:read
/// ```
///
/// ### Developer Connect Account Connector Rovo
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "tf-test-ac",
///     providerOauthConfig: {
///         systemProviderId: "ROVO",
///         scopes: ["rovo"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="tf-test-ac",
///     provider_oauth_config={
///         "system_provider_id": "ROVO",
///         "scopes": ["rovo"],
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
///         AccountConnectorId = "tf-test-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "ROVO",
///             Scopes = new[]
///             {
///                 "rovo",
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("ROVO"),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("rovo"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("ROVO")
///                 .scopes("rovo")
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
///       accountConnectorId: tf-test-ac
///       providerOauthConfig:
///         systemProviderId: ROVO
///         scopes:
///           - rovo
/// ```
///
/// ### Developer Connect Account Connector New Relic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "tf-test-ac",
///     providerOauthConfig: {
///         systemProviderId: "NEW_RELIC",
///         scopes: [],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="tf-test-ac",
///     provider_oauth_config={
///         "system_provider_id": "NEW_RELIC",
///         "scopes": [],
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
///         AccountConnectorId = "tf-test-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "NEW_RELIC",
///             Scopes = new() { },
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("NEW_RELIC"),
/// 				Scopes:           pulumi.StringArray{},
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("NEW_RELIC")
///                 .scopes()
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
///       accountConnectorId: tf-test-ac
///       providerOauthConfig:
///         systemProviderId: NEW_RELIC
///         scopes: []
/// ```
///
/// ### Developer Connect Account Connector Datastax
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
///     location: "us-central1",
///     accountConnectorId: "tf-test-ac",
///     providerOauthConfig: {
///         systemProviderId: "DATASTAX",
///         scopes: [],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
///     location="us-central1",
///     account_connector_id="tf-test-ac",
///     provider_oauth_config={
///         "system_provider_id": "DATASTAX",
///         "scopes": [],
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
///         AccountConnectorId = "tf-test-ac",
///         ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
///         {
///             SystemProviderId = "DATASTAX",
///             Scopes = new() { },
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
/// 			AccountConnectorId: pulumi.String("tf-test-ac"),
/// 			ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// 				SystemProviderId: pulumi.String("DATASTAX"),
/// 				Scopes:           pulumi.StringArray{},
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
///         var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
///             .location("us-central1")
///             .accountConnectorId("tf-test-ac")
///             .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
///                 .systemProviderId("DATASTAX")
///                 .scopes()
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
///       accountConnectorId: tf-test-ac
///       providerOauthConfig:
///         systemProviderId: DATASTAX
///         scopes: []
/// ```
///
///
/// ## Import
///
/// AccountConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}`
///
/// * `{{project}}/{{location}}/{{account_connector_id}}`
///
/// * `{{location}}/{{account_connector_id}}`
///
/// When using the `pulumi import` command, AccountConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{project}}/{{location}}/{{account_connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{location}}/{{account_connector_id}}
/// ```
class AccountConnector extends pulumi.CustomResource {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  late final pulumi.Output<String> accountConnectorId;
  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. The timestamp when the userConnection was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the userConnection, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  late final pulumi.Output<String> name;
  /// Output only. Start OAuth flow by clicking on this URL.
  late final pulumi.Output<String> oauthStartUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  late final pulumi.Output<AccountConnectorProviderOauthConfig?> providerOauthConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The timestamp when the userConnection was updated.
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
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthStartUri = registerOutput<String>('oauthStartUri');
    project = registerOutput<String>('project');
    providerOauthConfig = registerOutput<AccountConnectorProviderOauthConfig?>('providerOauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorProviderOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    oauthStartUri = registerOutput<String>('oauthStartUri');
    project = registerOutput<String>('project');
    providerOauthConfig = registerOutput<AccountConnectorProviderOauthConfig?>('providerOauthConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountConnectorProviderOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }
}
