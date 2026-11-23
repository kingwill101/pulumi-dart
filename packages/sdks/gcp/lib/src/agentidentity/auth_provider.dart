import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_args.dart';
import 'auth_provider_auth_provider_type_params.dart';
import 'auth_provider_state.dart';

/// An AuthProvider resource in Agent Identity to manage cloud authentication delegation.
///
///
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `auth_provider_type_params.three_legged_oauth.client_secret_wo`, `auth_provider_type_params.two_legged_oauth.client_secret_wo`.
/// Read more about Write-only Arguments.
///
///
/// ## Example Usage
///
/// ### Agent Identity Auth Provider Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.agentidentity.AuthProvider("default", {
///     location: "us-central1",
///     authProviderId: "example-provider",
///     authProviderTypeParams: {
///         apiKey: {
///             apiKey: "test-api-key-value",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.agentidentity.AuthProvider("default",
///     location="us-central1",
///     auth_provider_id="example-provider",
///     auth_provider_type_params={
///         "api_key": {
///             "api_key": "test-api-key-value",
///         },
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
///     var @default = new Gcp.AgentIdentity.AuthProvider("default", new()
///     {
///         Location = "us-central1",
///         AuthProviderId = "example-provider",
///         AuthProviderTypeParams = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsArgs
///         {
///             ApiKey = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsApiKeyArgs
///             {
///                 ApiKey = "test-api-key-value",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentidentity.NewAuthProvider(ctx, "default", &agentidentity.AuthProviderArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			AuthProviderId: pulumi.String("example-provider"),
/// 			AuthProviderTypeParams: &agentidentity.AuthProviderAuthProviderTypeParamsArgs{
/// 				ApiKey: &agentidentity.AuthProviderAuthProviderTypeParamsApiKeyArgs{
/// 					ApiKey: pulumi.String("test-api-key-value"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location         = "us-central1"
///   auth_provider_id = "example-provider"
///   auth_provider_type_params = {
///     api_key = {
///       api_key = "test-api-key-value"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProvider;
/// import com.pulumi.gcp.agentidentity.AuthProviderArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsApiKeyArgs;
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
///         var default_ = new AuthProvider("default", AuthProviderArgs.builder()
///             .location("us-central1")
///             .authProviderId("example-provider")
///             .authProviderTypeParams(AuthProviderAuthProviderTypeParamsArgs.builder()
///                 .apiKey(AuthProviderAuthProviderTypeParamsApiKeyArgs.builder()
///                     .apiKey("test-api-key-value")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:agentidentity:AuthProvider
///     properties:
///       location: us-central1
///       authProviderId: example-provider
///       authProviderTypeParams:
///         apiKey:
///           apiKey: test-api-key-value
/// ```
///
///
/// ### Agent Identity Auth Provider Connector Reference
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.agentidentity.AuthProvider("default", {
///     location: "us-central1",
///     authProviderId: "connref-provider",
///     description: "Connector reference auth provider",
///     authProviderTypeParams: {
///         connectorReferenceAuthProvider: {
///             connector: "salesforce-connector-prod",
///             authorizationDetails: JSON.stringify([{
///                 type: "oauth_authorization",
///                 resource: "https://example.com/api",
///             }]),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// default = gcp.agentidentity.AuthProvider("default",
///     location="us-central1",
///     auth_provider_id="connref-provider",
///     description="Connector reference auth provider",
///     auth_provider_type_params={
///         "connector_reference_auth_provider": {
///             "connector": "salesforce-connector-prod",
///             "authorization_details": json.dumps([{
///                 "type": "oauth_authorization",
///                 "resource": "https://example.com/api",
///             }]),
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.AgentIdentity.AuthProvider("default", new()
///     {
///         Location = "us-central1",
///         AuthProviderId = "connref-provider",
///         Description = "Connector reference auth provider",
///         AuthProviderTypeParams = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsArgs
///         {
///             ConnectorReferenceAuthProvider = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProviderArgs
///             {
///                 Connector = "salesforce-connector-prod",
///                 AuthorizationDetails = JsonSerializer.Serialize(new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["type"] = "oauth_authorization",
///                         ["resource"] = "https://example.com/api",
///                     },
///                 }),
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]map[string]string{
/// 			{
/// 				"type":     "oauth_authorization",
/// 				"resource": "https://example.com/api",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = agentidentity.NewAuthProvider(ctx, "default", &agentidentity.AuthProviderArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			AuthProviderId: pulumi.String("connref-provider"),
/// 			Description:    pulumi.String("Connector reference auth provider"),
/// 			AuthProviderTypeParams: &agentidentity.AuthProviderAuthProviderTypeParamsArgs{
/// 				ConnectorReferenceAuthProvider: &agentidentity.AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProviderArgs{
/// 					Connector:            pulumi.String("salesforce-connector-prod"),
/// 					AuthorizationDetails: pulumi.String(json0),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location         = "us-central1"
///   auth_provider_id = "connref-provider"
///   description      = "Connector reference auth provider"
///   auth_provider_type_params = {
///     connector_reference_auth_provider = {
///       connector = "salesforce-connector-prod"
///       authorization_details = jsonencode([{
///         "type"     = "oauth_authorization"
///         "resource" = "https://example.com/api"
///       }])
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProvider;
/// import com.pulumi.gcp.agentidentity.AuthProviderArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProviderArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var default_ = new AuthProvider("default", AuthProviderArgs.builder()
///             .location("us-central1")
///             .authProviderId("connref-provider")
///             .description("Connector reference auth provider")
///             .authProviderTypeParams(AuthProviderAuthProviderTypeParamsArgs.builder()
///                 .connectorReferenceAuthProvider(AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProviderArgs.builder()
///                     .connector("salesforce-connector-prod")
///                     .authorizationDetails(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "oauth_authorization"),
///                             jsonProperty("resource", "https://example.com/api")
///                         ))))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:agentidentity:AuthProvider
///     properties:
///       location: us-central1
///       authProviderId: connref-provider
///       description: Connector reference auth provider
///       authProviderTypeParams:
///         connectorReferenceAuthProvider:
///           connector: salesforce-connector-prod
///           authorizationDetails:
///             fn::toJSON:
///               - type: oauth_authorization
///                 resource: https://example.com/api
/// ```
///
///
/// ### Agent Identity Auth Provider Xaa
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.agentidentity.AuthProvider("default", {
///     location: "us-central1",
///     authProviderId: "xaa-provider",
///     description: "Cross-App Access auth provider",
///     authProviderTypeParams: {
///         xaaAuthProvider: {
///             additionalParameters: {
///                 prompt: "consent",
///             },
///             clientSecretAuth: {
///                 clientId: "test-client-id",
///                 clientSecret: "test-client-secret",
///             },
///             customIssuer: {
///                 tokenUrl: "https://auth.example.com/token",
///                 issuer: "https://auth.example.com",
///             },
///             idTokenInput: {
///                 idJagAuthProvider: "projects/my-project-name/locations/us-central1/authProviders/idp-provider",
///                 idJagAdditionalClaims: JSON.stringify({
///                     env: "test",
///                 }),
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// default = gcp.agentidentity.AuthProvider("default",
///     location="us-central1",
///     auth_provider_id="xaa-provider",
///     description="Cross-App Access auth provider",
///     auth_provider_type_params={
///         "xaa_auth_provider": {
///             "additional_parameters": {
///                 "prompt": "consent",
///             },
///             "client_secret_auth": {
///                 "client_id": "test-client-id",
///                 "client_secret": "test-client-secret",
///             },
///             "custom_issuer": {
///                 "token_url": "https://auth.example.com/token",
///                 "issuer": "https://auth.example.com",
///             },
///             "id_token_input": {
///                 "id_jag_auth_provider": "projects/my-project-name/locations/us-central1/authProviders/idp-provider",
///                 "id_jag_additional_claims": json.dumps({
///                     "env": "test",
///                 }),
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.AgentIdentity.AuthProvider("default", new()
///     {
///         Location = "us-central1",
///         AuthProviderId = "xaa-provider",
///         Description = "Cross-App Access auth provider",
///         AuthProviderTypeParams = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsArgs
///         {
///             XaaAuthProvider = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs
///             {
///                 AdditionalParameters =
///                 {
///                     { "prompt", "consent" },
///                 },
///                 ClientSecretAuth = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuthArgs
///                 {
///                     ClientId = "test-client-id",
///                     ClientSecret = "test-client-secret",
///                 },
///                 CustomIssuer = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs
///                 {
///                     TokenUrl = "https://auth.example.com/token",
///                     Issuer = "https://auth.example.com",
///                 },
///                 IdTokenInput = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs
///                 {
///                     IdJagAuthProvider = "projects/my-project-name/locations/us-central1/authProviders/idp-provider",
///                     IdJagAdditionalClaims = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["env"] = "test",
///                     }),
///                 },
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"env": "test",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = agentidentity.NewAuthProvider(ctx, "default", &agentidentity.AuthProviderArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			AuthProviderId: pulumi.String("xaa-provider"),
/// 			Description:    pulumi.String("Cross-App Access auth provider"),
/// 			AuthProviderTypeParams: &agentidentity.AuthProviderAuthProviderTypeParamsArgs{
/// 				XaaAuthProvider: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs{
/// 					AdditionalParameters: pulumi.StringMap{
/// 						"prompt": pulumi.String("consent"),
/// 					},
/// 					ClientSecretAuth: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuthArgs{
/// 						ClientId:     pulumi.String("test-client-id"),
/// 						ClientSecret: pulumi.String("test-client-secret"),
/// 					},
/// 					CustomIssuer: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs{
/// 						TokenUrl: pulumi.String("https://auth.example.com/token"),
/// 						Issuer:   pulumi.String("https://auth.example.com"),
/// 					},
/// 					IdTokenInput: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs{
/// 						IdJagAuthProvider:     pulumi.String("projects/my-project-name/locations/us-central1/authProviders/idp-provider"),
/// 						IdJagAdditionalClaims: pulumi.String(json0),
/// 					},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location         = "us-central1"
///   auth_provider_id = "xaa-provider"
///   description      = "Cross-App Access auth provider"
///   auth_provider_type_params = {
///     xaa_auth_provider = {
///       additional_parameters = {
///         "prompt" = "consent"
///       }
///       client_secret_auth = {
///         client_id     = "test-client-id"
///         client_secret = "test-client-secret"
///       }
///       custom_issuer = {
///         token_url = "https://auth.example.com/token"
///         issuer    = "https://auth.example.com"
///       }
///       id_token_input = {
///         id_jag_auth_provider = "projects/my-project-name/locations/us-central1/authProviders/idp-provider"
///         id_jag_additional_claims = jsonencode({
///           "env" = "test"
///         })
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProvider;
/// import com.pulumi.gcp.agentidentity.AuthProviderArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuthArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var default_ = new AuthProvider("default", AuthProviderArgs.builder()
///             .location("us-central1")
///             .authProviderId("xaa-provider")
///             .description("Cross-App Access auth provider")
///             .authProviderTypeParams(AuthProviderAuthProviderTypeParamsArgs.builder()
///                 .xaaAuthProvider(AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs.builder()
///                     .additionalParameters(Map.of("prompt", "consent"))
///                     .clientSecretAuth(AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuthArgs.builder()
///                         .clientId("test-client-id")
///                         .clientSecret("test-client-secret")
///                         .build())
///                     .customIssuer(AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs.builder()
///                         .tokenUrl("https://auth.example.com/token")
///                         .issuer("https://auth.example.com")
///                         .build())
///                     .idTokenInput(AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs.builder()
///                         .idJagAuthProvider("projects/my-project-name/locations/us-central1/authProviders/idp-provider")
///                         .idJagAdditionalClaims(serializeJson(
///                             jsonObject(
///                                 jsonProperty("env", "test")
///                             )))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:agentidentity:AuthProvider
///     properties:
///       location: us-central1
///       authProviderId: xaa-provider
///       description: Cross-App Access auth provider
///       authProviderTypeParams:
///         xaaAuthProvider:
///           additionalParameters:
///             prompt: consent
///           clientSecretAuth:
///             clientId: test-client-id
///             clientSecret: test-client-secret
///           customIssuer:
///             tokenUrl: https://auth.example.com/token
///             issuer: https://auth.example.com
///           idTokenInput:
///             idJagAuthProvider: projects/my-project-name/locations/us-central1/authProviders/idp-provider
///             idJagAdditionalClaims:
///               fn::toJSON:
///                 env: test
/// ```
///
///
/// ### Agent Identity Auth Provider Xaa Jwt
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.agentidentity.AuthProvider("default", {
///     location: "us-central1",
///     authProviderId: "xaa-jwt-provider",
///     description: "Cross-App Access with Client Assertion JWT",
///     authProviderTypeParams: {
///         xaaAuthProvider: {
///             clientAssertionJwtAuth: {
///                 clientId: "test-jwt-client-id",
///             },
///             customIssuer: {
///                 tokenUrl: "https://auth.example.com/token",
///             },
///             idTokenInput: {
///                 idJagAuthProvider: "projects/my-project-name/locations/us-central1/authProviders/idp-provider",
///                 idJagAdditionalClaims: JSON.stringify({
///                     env: "test",
///                 }),
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// default = gcp.agentidentity.AuthProvider("default",
///     location="us-central1",
///     auth_provider_id="xaa-jwt-provider",
///     description="Cross-App Access with Client Assertion JWT",
///     auth_provider_type_params={
///         "xaa_auth_provider": {
///             "client_assertion_jwt_auth": {
///                 "client_id": "test-jwt-client-id",
///             },
///             "custom_issuer": {
///                 "token_url": "https://auth.example.com/token",
///             },
///             "id_token_input": {
///                 "id_jag_auth_provider": "projects/my-project-name/locations/us-central1/authProviders/idp-provider",
///                 "id_jag_additional_claims": json.dumps({
///                     "env": "test",
///                 }),
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.AgentIdentity.AuthProvider("default", new()
///     {
///         Location = "us-central1",
///         AuthProviderId = "xaa-jwt-provider",
///         Description = "Cross-App Access with Client Assertion JWT",
///         AuthProviderTypeParams = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsArgs
///         {
///             XaaAuthProvider = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs
///             {
///                 ClientAssertionJwtAuth = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuthArgs
///                 {
///                     ClientId = "test-jwt-client-id",
///                 },
///                 CustomIssuer = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs
///                 {
///                     TokenUrl = "https://auth.example.com/token",
///                 },
///                 IdTokenInput = new Gcp.AgentIdentity.Inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs
///                 {
///                     IdJagAuthProvider = "projects/my-project-name/locations/us-central1/authProviders/idp-provider",
///                     IdJagAdditionalClaims = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["env"] = "test",
///                     }),
///                 },
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"env": "test",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = agentidentity.NewAuthProvider(ctx, "default", &agentidentity.AuthProviderArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			AuthProviderId: pulumi.String("xaa-jwt-provider"),
/// 			Description:    pulumi.String("Cross-App Access with Client Assertion JWT"),
/// 			AuthProviderTypeParams: &agentidentity.AuthProviderAuthProviderTypeParamsArgs{
/// 				XaaAuthProvider: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs{
/// 					ClientAssertionJwtAuth: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuthArgs{
/// 						ClientId: pulumi.String("test-jwt-client-id"),
/// 					},
/// 					CustomIssuer: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs{
/// 						TokenUrl: pulumi.String("https://auth.example.com/token"),
/// 					},
/// 					IdTokenInput: &agentidentity.AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs{
/// 						IdJagAuthProvider:     pulumi.String("projects/my-project-name/locations/us-central1/authProviders/idp-provider"),
/// 						IdJagAdditionalClaims: pulumi.String(json0),
/// 					},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location         = "us-central1"
///   auth_provider_id = "xaa-jwt-provider"
///   description      = "Cross-App Access with Client Assertion JWT"
///   auth_provider_type_params = {
///     xaa_auth_provider = {
///       client_assertion_jwt_auth = {
///         client_id = "test-jwt-client-id"
///       }
///       custom_issuer = {
///         token_url = "https://auth.example.com/token"
///       }
///       id_token_input = {
///         id_jag_auth_provider = "projects/my-project-name/locations/us-central1/authProviders/idp-provider"
///         id_jag_additional_claims = jsonencode({
///           "env" = "test"
///         })
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProvider;
/// import com.pulumi.gcp.agentidentity.AuthProviderArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuthArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs;
/// import com.pulumi.gcp.agentidentity.inputs.AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var default_ = new AuthProvider("default", AuthProviderArgs.builder()
///             .location("us-central1")
///             .authProviderId("xaa-jwt-provider")
///             .description("Cross-App Access with Client Assertion JWT")
///             .authProviderTypeParams(AuthProviderAuthProviderTypeParamsArgs.builder()
///                 .xaaAuthProvider(AuthProviderAuthProviderTypeParamsXaaAuthProviderArgs.builder()
///                     .clientAssertionJwtAuth(AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuthArgs.builder()
///                         .clientId("test-jwt-client-id")
///                         .build())
///                     .customIssuer(AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuerArgs.builder()
///                         .tokenUrl("https://auth.example.com/token")
///                         .build())
///                     .idTokenInput(AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInputArgs.builder()
///                         .idJagAuthProvider("projects/my-project-name/locations/us-central1/authProviders/idp-provider")
///                         .idJagAdditionalClaims(serializeJson(
///                             jsonObject(
///                                 jsonProperty("env", "test")
///                             )))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:agentidentity:AuthProvider
///     properties:
///       location: us-central1
///       authProviderId: xaa-jwt-provider
///       description: Cross-App Access with Client Assertion JWT
///       authProviderTypeParams:
///         xaaAuthProvider:
///           clientAssertionJwtAuth:
///             clientId: test-jwt-client-id
///           customIssuer:
///             tokenUrl: https://auth.example.com/token
///           idTokenInput:
///             idJagAuthProvider: projects/my-project-name/locations/us-central1/authProviders/idp-provider
///             idJagAdditionalClaims:
///               fn::toJSON:
///                 env: test
/// ```
///
///
/// ## Regional Endpoint Policies
///
/// This resource supports Regional Endpoint Policies (REP). See the provider reference for more details on configuration.
///
/// ## Import
///
/// AuthProvider can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider_id}}`
/// * `{{project}}/{{location}}/{{auth_provider_id}}`
/// * `{{location}}/{{auth_provider_id}}`
///
///
/// When using the `pulumi import` command, AuthProvider can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:agentidentity/authProvider:AuthProvider default projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider_id}}
/// $ pulumi import gcp:agentidentity/authProvider:AuthProvider default {{project}}/{{location}}/{{auth_provider_id}}
/// $ pulumi import gcp:agentidentity/authProvider:AuthProvider default {{location}}/{{auth_provider_id}}
/// ```
class AuthProvider extends pulumi.CustomResource {
  /// List of scopes that are allowed to be requested for this auth_provider.
  /// If this list is non-empty, only scopes within this list may be requested.
  /// If this list is empty, all scopes may be requested.
  /// Scopes appearing in `blockedScopes` are disallowed even if they appear in
  /// `allowedScopes`.
  /// The number of allowed scopes is limited to 200.
  late final pulumi.Output<List<String>?> allowedScopes;
  /// The ID to use for the AuthProvider, which will become the final segment
  /// of the AuthProvider's resource name.
  /// This value should be 1-63 characters, and valid characters
  /// are /a-z-/. The first character must be a lowercase letter, and the
  /// last character must be a lowercase letter or a number.
  late final pulumi.Output<String> authProviderId;
  /// AuthProvider type specific parameters.
  /// Required when creating an auth_provider.
  /// Structure is documented below.
  late final pulumi.Output<AuthProviderAuthProviderTypeParams> authProviderTypeParams;
  /// List of scopes that are blocked from being requested for this
  /// auth_provider. If a scope appears in this list, it will not be requested,
  /// even if it also appears in `allowedScopes`. `blockedScopes` takes
  /// precedence over `allowedScopes`. The number of blocked scopes is limited
  /// to 200.
  late final pulumi.Output<List<String>?> blockedScopes;
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;
  /// This is set to true if the authProvider is deleted.
  late final pulumi.Output<bool> deleted;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the resource.
  /// Must be less than 256 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The time when the authProvider will expire.
  late final pulumi.Output<String> expireTime;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The full resource name of the auth_provider. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of the auth_provider.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  late final pulumi.Output<String> state;
  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;
  /// Input only. Represents the workload identity in IAM `principal://` format of the
  /// agent(s) that will use this AuthProvider. Example:
  /// `principal://agents.global.org-${ORG_ID}.system.id.goog/resources/aiplatform/projects/{PROJECT_ID}/locations/{LOCATIONS}/reasoningEngines/{ID}`
  late final pulumi.Output<List<String>?> workloadIds;

  /// Creates a new [AuthProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthProvider]. {@macro pulumi_agentidentity_auth_provider_auth_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthProvider(
    String name, {
    AuthProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentidentity/authProvider:AuthProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    allowedScopes = registerOutput<List<String>?>('allowedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authProviderId = registerOutput<String>('authProviderId');
    authProviderTypeParams = registerOutput<AuthProviderAuthProviderTypeParams>('authProviderTypeParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthProviderAuthProviderTypeParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockedScopes = registerOutput<List<String>?>('blockedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    deleted = registerOutput<bool>('deleted');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    workloadIds = registerOutput<List<String>?>('workloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [AuthProvider] resource's state with the given [name] and [id].
  static AuthProvider get(
    String name,
    pulumi.Input<String> id, {
    AuthProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentidentity/authProvider:AuthProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedScopes = registerOutput<List<String>?>('allowedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authProviderId = registerOutput<String>('authProviderId');
    authProviderTypeParams = registerOutput<AuthProviderAuthProviderTypeParams>('authProviderTypeParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthProviderAuthProviderTypeParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockedScopes = registerOutput<List<String>?>('blockedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    deleted = registerOutput<bool>('deleted');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    workloadIds = registerOutput<List<String>?>('workloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [AuthProvider] resource.
  AuthProvider.reference(String urn)
    : super(
        'gcp:agentidentity/authProvider:AuthProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    allowedScopes = registerOutput<List<String>?>('allowedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authProviderId = registerOutput<String>('authProviderId');
    authProviderTypeParams = registerOutput<AuthProviderAuthProviderTypeParams>('authProviderTypeParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthProviderAuthProviderTypeParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blockedScopes = registerOutput<List<String>?>('blockedScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    deleted = registerOutput<bool>('deleted');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    workloadIds = registerOutput<List<String>?>('workloadIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
