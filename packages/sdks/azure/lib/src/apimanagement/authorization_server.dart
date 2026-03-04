import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_server_args.dart';
import 'authorization_server_state.dart';

/// Manages an Authorization Server within an API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "search-api",
///     resourceGroupName: "search-service",
/// });
/// const exampleAuthorizationServer = new azure.apimanagement.AuthorizationServer("example", {
///     name: "test-server",
///     apiManagementName: example.then(example => example.name),
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     displayName: "Test Server",
///     authorizationEndpoint: "https://example.mydomain.com/client/authorize",
///     clientId: "42424242-4242-4242-4242-424242424242",
///     clientRegistrationEndpoint: "https://example.mydomain.com/client/register",
///     grantTypes: ["authorizationCode"],
///     authorizationMethods: ["GET"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="search-api",
///     resource_group_name="search-service")
/// example_authorization_server = azure.apimanagement.AuthorizationServer("example",
///     name="test-server",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name,
///     display_name="Test Server",
///     authorization_endpoint="https://example.mydomain.com/client/authorize",
///     client_id="42424242-4242-4242-4242-424242424242",
///     client_registration_endpoint="https://example.mydomain.com/client/register",
///     grant_types=["authorizationCode"],
///     authorization_methods=["GET"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetService.Invoke(new()
///     {
///         Name = "search-api",
///         ResourceGroupName = "search-service",
///     });
///
///     var exampleAuthorizationServer = new Azure.ApiManagement.AuthorizationServer("example", new()
///     {
///         Name = "test-server",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///         DisplayName = "Test Server",
///         AuthorizationEndpoint = "https://example.mydomain.com/client/authorize",
///         ClientId = "42424242-4242-4242-4242-424242424242",
///         ClientRegistrationEndpoint = "https://example.mydomain.com/client/register",
///         GrantTypes = new[]
///         {
///             "authorizationCode",
///         },
///         AuthorizationMethods = new[]
///         {
///             "GET",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupService(ctx, &apimanagement.LookupServiceArgs{
/// 			Name:              "search-api",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewAuthorizationServer(ctx, "example", &apimanagement.AuthorizationServerArgs{
/// 			Name:                       pulumi.String("test-server"),
/// 			ApiManagementName:          pulumi.String(example.Name),
/// 			ResourceGroupName:          pulumi.String(example.ResourceGroupName),
/// 			DisplayName:                pulumi.String("Test Server"),
/// 			AuthorizationEndpoint:      pulumi.String("https://example.mydomain.com/client/authorize"),
/// 			ClientId:                   pulumi.String("42424242-4242-4242-4242-424242424242"),
/// 			ClientRegistrationEndpoint: pulumi.String("https://example.mydomain.com/client/register"),
/// 			GrantTypes: pulumi.StringArray{
/// 				pulumi.String("authorizationCode"),
/// 			},
/// 			AuthorizationMethods: pulumi.StringArray{
/// 				pulumi.String("GET"),
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
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetServiceArgs;
/// import com.pulumi.azure.apimanagement.AuthorizationServer;
/// import com.pulumi.azure.apimanagement.AuthorizationServerArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("search-api")
///             .resourceGroupName("search-service")
///             .build());
///
///         var exampleAuthorizationServer = new AuthorizationServer("exampleAuthorizationServer", AuthorizationServerArgs.builder()
///             .name("test-server")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .displayName("Test Server")
///             .authorizationEndpoint("https://example.mydomain.com/client/authorize")
///             .clientId("42424242-4242-4242-4242-424242424242")
///             .clientRegistrationEndpoint("https://example.mydomain.com/client/register")
///             .grantTypes("authorizationCode")
///             .authorizationMethods("GET")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAuthorizationServer:
///     type: azure:apimanagement:AuthorizationServer
///     name: example
///     properties:
///       name: test-server
///       apiManagementName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       displayName: Test Server
///       authorizationEndpoint: https://example.mydomain.com/client/authorize
///       clientId: 42424242-4242-4242-4242-424242424242
///       clientRegistrationEndpoint: https://example.mydomain.com/client/register
///       grantTypes:
///         - authorizationCode
///       authorizationMethods:
///         - GET
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: search-api
///         resourceGroupName: search-service
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Authorization Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/authorizationServer:AuthorizationServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/authorizationServers/server1
/// ```
class AuthorizationServer extends pulumi.CustomResource {
  /// The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;

  /// The OAUTH Authorization Endpoint.
  late final pulumi.Output<String> authorizationEndpoint;

  /// The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`.
  ///
  /// &gt; **Note:** `GET` must always be present.
  late final pulumi.Output<List<String>> authorizationMethods;

  /// The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`.
  late final pulumi.Output<List<String>?> bearerTokenSendingMethods;

  /// The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`.
  late final pulumi.Output<List<String>?> clientAuthenticationMethods;

  /// The Client/App ID registered with this Authorization Server.
  late final pulumi.Output<String> clientId;

  /// The URI of page where Client/App Registration is performed for this Authorization Server.
  late final pulumi.Output<String> clientRegistrationEndpoint;

  /// The Client/App Secret registered with this Authorization Server.
  late final pulumi.Output<String?> clientSecret;

  /// The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values.
  late final pulumi.Output<String?> defaultScope;

  /// A description of the Authorization Server, which may contain HTML formatting tags.
  late final pulumi.Output<String?> description;

  /// The user-friendly name of this Authorization Server.
  late final pulumi.Output<String> displayName;

  /// Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`.
  late final pulumi.Output<List<String>> grantTypes;

  /// The name of this Authorization Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The password associated with the Resource Owner.
  ///
  /// &gt; **Note:** This can only be specified when `grant_type` includes `resourceOwnerPassword`.
  late final pulumi.Output<String?> resourceOwnerPassword;

  /// The username associated with the Resource Owner.
  ///
  /// &gt; **Note:** This can only be specified when `grant_type` includes `resourceOwnerPassword`.
  late final pulumi.Output<String?> resourceOwnerUsername;

  /// Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security.
  late final pulumi.Output<bool?> supportState;

  /// A `token_body_parameter` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> tokenBodyParameters;

  /// The OAUTH Token Endpoint.
  late final pulumi.Output<String?> tokenEndpoint;

  /// Creates a new [AuthorizationServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationServer]. {@macro pulumi_apimanagement_authorization_server_authorization_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationServer(
    String name, {
    AuthorizationServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/authorizationServer:AuthorizationServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    authorizationEndpoint = registerOutput<String>('authorizationEndpoint');
    authorizationMethods = registerOutput<List<String>>('authorizationMethods');
    bearerTokenSendingMethods = registerOutput<List<String>?>(
      'bearerTokenSendingMethods',
    );
    clientAuthenticationMethods = registerOutput<List<String>?>(
      'clientAuthenticationMethods',
    );
    clientId = registerOutput<String>('clientId');
    clientRegistrationEndpoint = registerOutput<String>(
      'clientRegistrationEndpoint',
    );
    clientSecret = registerOutput<String?>('clientSecret');
    defaultScope = registerOutput<String?>('defaultScope');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    grantTypes = registerOutput<List<String>>('grantTypes');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceOwnerPassword = registerOutput<String?>('resourceOwnerPassword');
    resourceOwnerUsername = registerOutput<String?>('resourceOwnerUsername');
    supportState = registerOutput<bool?>('supportState');
    tokenBodyParameters = registerOutput<List<Map<String, dynamic>>?>(
      'tokenBodyParameters',
    );
    tokenEndpoint = registerOutput<String?>('tokenEndpoint');
  }

  /// Gets an existing [AuthorizationServer] resource's state with the given [name] and [id].
  static AuthorizationServer get(
    String name,
    pulumi.Input<String> id, {
    AuthorizationServerState? state,
  }) {
    return AuthorizationServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthorizationServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/authorizationServer:AuthorizationServer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    authorizationEndpoint = registerOutput<String>('authorizationEndpoint');
    authorizationMethods = registerOutput<List<String>>('authorizationMethods');
    bearerTokenSendingMethods = registerOutput<List<String>?>(
      'bearerTokenSendingMethods',
    );
    clientAuthenticationMethods = registerOutput<List<String>?>(
      'clientAuthenticationMethods',
    );
    clientId = registerOutput<String>('clientId');
    clientRegistrationEndpoint = registerOutput<String>(
      'clientRegistrationEndpoint',
    );
    clientSecret = registerOutput<String?>('clientSecret');
    defaultScope = registerOutput<String?>('defaultScope');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    grantTypes = registerOutput<List<String>>('grantTypes');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceOwnerPassword = registerOutput<String?>('resourceOwnerPassword');
    resourceOwnerUsername = registerOutput<String?>('resourceOwnerUsername');
    supportState = registerOutput<bool?>('supportState');
    tokenBodyParameters = registerOutput<List<Map<String, dynamic>>?>(
      'tokenBodyParameters',
    );
    tokenEndpoint = registerOutput<String?>('tokenEndpoint');
  }
}
