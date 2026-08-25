import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_args.dart';
import 'security_gateway_application_endpoint_matcher.dart';
import 'security_gateway_application_state.dart';
import 'security_gateway_application_upstream.dart';

/// Specifies application endpoint(s) to protect behind a Security Gateway.
///
///
///
/// ## Example Usage
///
/// ### Beyondcorp Security Gateway Application Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.beyondcorp.SecurityGateway("default", {
///     securityGatewayId: "default-sg",
///     displayName: "My Security Gateway resource",
///     hubs: [{
///         region: "us-central1",
///     }],
/// });
/// const example = new gcp.beyondcorp.SecurityGatewayApplication("example", {
///     securityGatewayId: _default.securityGatewayId,
///     applicationId: "google-sga",
///     endpointMatchers: [{
///         hostname: "google.com",
///         ports: [
///             80,
///             443,
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.beyondcorp.SecurityGateway("default",
///     security_gateway_id="default-sg",
///     display_name="My Security Gateway resource",
///     hubs=[{
///         "region": "us-central1",
///     }])
/// example = gcp.beyondcorp.SecurityGatewayApplication("example",
///     security_gateway_id=default.security_gateway_id,
///     application_id="google-sga",
///     endpoint_matchers=[{
///         "hostname": "google.com",
///         "ports": [
///             80,
///             443,
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Beyondcorp.SecurityGateway("default", new()
///     {
///         SecurityGatewayId = "default-sg",
///         DisplayName = "My Security Gateway resource",
///         Hubs = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayHubArgs
///             {
///                 Region = "us-central1",
///             },
///         },
///     });
///
///     var example = new Gcp.Beyondcorp.SecurityGatewayApplication("example", new()
///     {
///         SecurityGatewayId = @default.SecurityGatewayId,
///         ApplicationId = "google-sga",
///         EndpointMatchers = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationEndpointMatcherArgs
///             {
///                 Hostname = "google.com",
///                 Ports = new[]
///                 {
///                     80,
///                     443,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := beyondcorp.NewSecurityGateway(ctx, "default", &beyondcorp.SecurityGatewayArgs{
/// 			SecurityGatewayId: pulumi.String("default-sg"),
/// 			DisplayName:       pulumi.String("My Security Gateway resource"),
/// 			Hubs: beyondcorp.SecurityGatewayHubArray{
/// 				&beyondcorp.SecurityGatewayHubArgs{
/// 					Region: pulumi.String("us-central1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayApplication(ctx, "example", &beyondcorp.SecurityGatewayApplicationArgs{
/// 			SecurityGatewayId: _default.SecurityGatewayId,
/// 			ApplicationId:     pulumi.String("google-sga"),
/// 			EndpointMatchers: beyondcorp.SecurityGatewayApplicationEndpointMatcherArray{
/// 				&beyondcorp.SecurityGatewayApplicationEndpointMatcherArgs{
/// 					Hostname: pulumi.String("google.com"),
/// 					Ports: pulumi.IntArray{
/// 						pulumi.Int(80),
/// 						pulumi.Int(443),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_beyondcorp_securitygateway" "default" {
///   security_gateway_id = "default-sg"
///   display_name        = "My Security Gateway resource"
///   hubs {
///     region = "us-central1"
///   }
/// }
/// resource "gcp_beyondcorp_securitygatewayapplication" "example" {
///   security_gateway_id = gcp_beyondcorp_securitygateway.default.security_gateway_id
///   application_id      = "google-sga"
///   endpoint_matchers {
///     hostname = "google.com"
///     ports    = [80, 443]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGateway;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayHubArgs;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplication;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationEndpointMatcherArgs;
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
///         var default_ = new SecurityGateway("default", SecurityGatewayArgs.builder()
///             .securityGatewayId("default-sg")
///             .displayName("My Security Gateway resource")
///             .hubs(SecurityGatewayHubArgs.builder()
///                 .region("us-central1")
///                 .build())
///             .build());
///
///         var example = new SecurityGatewayApplication("example", SecurityGatewayApplicationArgs.builder()
///             .securityGatewayId(default_.securityGatewayId())
///             .applicationId("google-sga")
///             .endpointMatchers(SecurityGatewayApplicationEndpointMatcherArgs.builder()
///                 .hostname("google.com")
///                 .ports(
///                     80,
///                     443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:beyondcorp:SecurityGateway
///     properties:
///       securityGatewayId: default-sg
///       displayName: My Security Gateway resource
///       hubs:
///         - region: us-central1
///   example:
///     type: gcp:beyondcorp:SecurityGatewayApplication
///     properties:
///       securityGatewayId: ${default.securityGatewayId}
///       applicationId: google-sga
///       endpointMatchers:
///         - hostname: google.com
///           ports:
///             - 80
///             - 443
/// ```
///
/// ### Beyondcorp Security Gateway Application Vpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.beyondcorp.SecurityGateway("default", {
///     securityGatewayId: "default-sg",
///     displayName: "My Security Gateway resource",
///     hubs: [{
///         region: "us-central1",
///     }],
/// });
/// const example = new gcp.beyondcorp.SecurityGatewayApplication("example", {
///     securityGatewayId: _default.securityGatewayId,
///     applicationId: "my-vm-service2",
///     endpointMatchers: [{
///         hostname: "my-vm-service.com",
///         ports: [
///             80,
///             443,
///         ],
///     }],
///     upstreams: [{
///         egressPolicy: {
///             regions: ["us-central1"],
///         },
///         network: {
///             name: project.then(project => `projects/${project.projectId}/global/networks/default`),
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.beyondcorp.SecurityGateway("default",
///     security_gateway_id="default-sg",
///     display_name="My Security Gateway resource",
///     hubs=[{
///         "region": "us-central1",
///     }])
/// example = gcp.beyondcorp.SecurityGatewayApplication("example",
///     security_gateway_id=default.security_gateway_id,
///     application_id="my-vm-service2",
///     endpoint_matchers=[{
///         "hostname": "my-vm-service.com",
///         "ports": [
///             80,
///             443,
///         ],
///     }],
///     upstreams=[{
///         "egress_policy": {
///             "regions": ["us-central1"],
///         },
///         "network": {
///             "name": f"projects/{project.project_id}/global/networks/default",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var @default = new Gcp.Beyondcorp.SecurityGateway("default", new()
///     {
///         SecurityGatewayId = "default-sg",
///         DisplayName = "My Security Gateway resource",
///         Hubs = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayHubArgs
///             {
///                 Region = "us-central1",
///             },
///         },
///     });
///
///     var example = new Gcp.Beyondcorp.SecurityGatewayApplication("example", new()
///     {
///         SecurityGatewayId = @default.SecurityGatewayId,
///         ApplicationId = "my-vm-service2",
///         EndpointMatchers = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationEndpointMatcherArgs
///             {
///                 Hostname = "my-vm-service.com",
///                 Ports = new[]
///                 {
///                     80,
///                     443,
///                 },
///             },
///         },
///         Upstreams = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamArgs
///             {
///                 EgressPolicy = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamEgressPolicyArgs
///                 {
///                     Regions = new[]
///                     {
///                         "us-central1",
///                     },
///                 },
///                 Network = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamNetworkArgs
///                 {
///                     Name = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/global/networks/default",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := beyondcorp.NewSecurityGateway(ctx, "default", &beyondcorp.SecurityGatewayArgs{
/// 			SecurityGatewayId: pulumi.String("default-sg"),
/// 			DisplayName:       pulumi.String("My Security Gateway resource"),
/// 			Hubs: beyondcorp.SecurityGatewayHubArray{
/// 				&beyondcorp.SecurityGatewayHubArgs{
/// 					Region: pulumi.String("us-central1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayApplication(ctx, "example", &beyondcorp.SecurityGatewayApplicationArgs{
/// 			SecurityGatewayId: _default.SecurityGatewayId,
/// 			ApplicationId:     pulumi.String("my-vm-service2"),
/// 			EndpointMatchers: beyondcorp.SecurityGatewayApplicationEndpointMatcherArray{
/// 				&beyondcorp.SecurityGatewayApplicationEndpointMatcherArgs{
/// 					Hostname: pulumi.String("my-vm-service.com"),
/// 					Ports: pulumi.IntArray{
/// 						pulumi.Int(80),
/// 						pulumi.Int(443),
/// 					},
/// 				},
/// 			},
/// 			Upstreams: beyondcorp.SecurityGatewayApplicationUpstreamArray{
/// 				&beyondcorp.SecurityGatewayApplicationUpstreamArgs{
/// 					EgressPolicy: &beyondcorp.SecurityGatewayApplicationUpstreamEgressPolicyArgs{
/// 						Regions: pulumi.StringArray{
/// 							pulumi.String("us-central1"),
/// 						},
/// 					},
/// 					Network: &beyondcorp.SecurityGatewayApplicationUpstreamNetworkArgs{
/// 						Name: pulumi.Sprintf("projects/%v/global/networks/default", project.ProjectId),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_beyondcorp_securitygateway" "default" {
///   security_gateway_id = "default-sg"
///   display_name        = "My Security Gateway resource"
///   hubs {
///     region = "us-central1"
///   }
/// }
/// resource "gcp_beyondcorp_securitygatewayapplication" "example" {
///   security_gateway_id = gcp_beyondcorp_securitygateway.default.security_gateway_id
///   application_id      = "my-vm-service2"
///   endpoint_matchers {
///     hostname = "my-vm-service.com"
///     ports    = [80, 443]
///   }
///   upstreams {
///     egress_policy = {
///       regions = ["us-central1"]
///     }
///     network = {
///       name ="projects/${data.gcp_organizations_getproject.project.project_id}/global/networks/default"
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.beyondcorp.SecurityGateway;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayHubArgs;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplication;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationEndpointMatcherArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamEgressPolicyArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamNetworkArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var default_ = new SecurityGateway("default", SecurityGatewayArgs.builder()
///             .securityGatewayId("default-sg")
///             .displayName("My Security Gateway resource")
///             .hubs(SecurityGatewayHubArgs.builder()
///                 .region("us-central1")
///                 .build())
///             .build());
///
///         var example = new SecurityGatewayApplication("example", SecurityGatewayApplicationArgs.builder()
///             .securityGatewayId(default_.securityGatewayId())
///             .applicationId("my-vm-service2")
///             .endpointMatchers(SecurityGatewayApplicationEndpointMatcherArgs.builder()
///                 .hostname("my-vm-service.com")
///                 .ports(
///                     80,
///                     443)
///                 .build())
///             .upstreams(SecurityGatewayApplicationUpstreamArgs.builder()
///                 .egressPolicy(SecurityGatewayApplicationUpstreamEgressPolicyArgs.builder()
///                     .regions("us-central1")
///                     .build())
///                 .network(SecurityGatewayApplicationUpstreamNetworkArgs.builder()
///                     .name(String.format("projects/%s/global/networks/default", project.projectId()))
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
///     type: gcp:beyondcorp:SecurityGateway
///     properties:
///       securityGatewayId: default-sg
///       displayName: My Security Gateway resource
///       hubs:
///         - region: us-central1
///   example:
///     type: gcp:beyondcorp:SecurityGatewayApplication
///     properties:
///       securityGatewayId: ${default.securityGatewayId}
///       applicationId: my-vm-service2
///       endpointMatchers:
///         - hostname: my-vm-service.com
///           ports:
///             - 80
///             - 443
///       upstreams:
///         - egressPolicy:
///             regions:
///               - us-central1
///           network:
///             name: projects/${project.projectId}/global/networks/default
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Beyondcorp Security Gateway Application Spa Api
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.beyondcorp.SecurityGateway("default", {
///     securityGatewayId: "default-sg-spa-api",
///     displayName: "My SPA Security Gateway resource",
/// });
/// const example_spa = new gcp.beyondcorp.SecurityGatewayApplication("example-spa", {
///     securityGatewayId: _default.securityGatewayId,
///     applicationId: "app-discovery",
///     upstreams: [{
///         external: {
///             endpoints: [{
///                 hostname: "my.discovery.service.com",
///                 port: 443,
///             }],
///         },
///         proxyProtocol: {
///             allowedClientHeaders: ["header"],
///         },
///     }],
///     schema: "API_GATEWAY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.beyondcorp.SecurityGateway("default",
///     security_gateway_id="default-sg-spa-api",
///     display_name="My SPA Security Gateway resource")
/// example_spa = gcp.beyondcorp.SecurityGatewayApplication("example-spa",
///     security_gateway_id=default.security_gateway_id,
///     application_id="app-discovery",
///     upstreams=[{
///         "external": {
///             "endpoints": [{
///                 "hostname": "my.discovery.service.com",
///                 "port": 443,
///             }],
///         },
///         "proxy_protocol": {
///             "allowed_client_headers": ["header"],
///         },
///     }],
///     schema="API_GATEWAY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Beyondcorp.SecurityGateway("default", new()
///     {
///         SecurityGatewayId = "default-sg-spa-api",
///         DisplayName = "My SPA Security Gateway resource",
///     });
///
///     var example_spa = new Gcp.Beyondcorp.SecurityGatewayApplication("example-spa", new()
///     {
///         SecurityGatewayId = @default.SecurityGatewayId,
///         ApplicationId = "app-discovery",
///         Upstreams = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamArgs
///             {
///                 External = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamExternalArgs
///                 {
///                     Endpoints = new[]
///                     {
///                         new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamExternalEndpointArgs
///                         {
///                             Hostname = "my.discovery.service.com",
///                             Port = 443,
///                         },
///                     },
///                 },
///                 ProxyProtocol = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamProxyProtocolArgs
///                 {
///                     AllowedClientHeaders = new[]
///                     {
///                         "header",
///                     },
///                 },
///             },
///         },
///         Schema = "API_GATEWAY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := beyondcorp.NewSecurityGateway(ctx, "default", &beyondcorp.SecurityGatewayArgs{
/// 			SecurityGatewayId: pulumi.String("default-sg-spa-api"),
/// 			DisplayName:       pulumi.String("My SPA Security Gateway resource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayApplication(ctx, "example-spa", &beyondcorp.SecurityGatewayApplicationArgs{
/// 			SecurityGatewayId: _default.SecurityGatewayId,
/// 			ApplicationId:     pulumi.String("app-discovery"),
/// 			Upstreams: beyondcorp.SecurityGatewayApplicationUpstreamArray{
/// 				&beyondcorp.SecurityGatewayApplicationUpstreamArgs{
/// 					External: &beyondcorp.SecurityGatewayApplicationUpstreamExternalArgs{
/// 						Endpoints: beyondcorp.SecurityGatewayApplicationUpstreamExternalEndpointArray{
/// 							&beyondcorp.SecurityGatewayApplicationUpstreamExternalEndpointArgs{
/// 								Hostname: pulumi.String("my.discovery.service.com"),
/// 								Port:     pulumi.Int(443),
/// 							},
/// 						},
/// 					},
/// 					ProxyProtocol: &beyondcorp.SecurityGatewayApplicationUpstreamProxyProtocolArgs{
/// 						AllowedClientHeaders: pulumi.StringArray{
/// 							pulumi.String("header"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Schema: pulumi.String("API_GATEWAY"),
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
/// resource "gcp_beyondcorp_securitygateway" "default" {
///   security_gateway_id = "default-sg-spa-api"
///   display_name        = "My SPA Security Gateway resource"
/// }
/// resource "gcp_beyondcorp_securitygatewayapplication" "example-spa" {
///   security_gateway_id = gcp_beyondcorp_securitygateway.default.security_gateway_id
///   application_id      = "app-discovery"
///   upstreams {
///     external = {
///       endpoints = [{
///         "hostname" = "my.discovery.service.com"
///         "port"     = 443
///       }]
///     }
///     proxy_protocol = {
///       allowed_client_headers = ["header"]
///     }
///   }
///   schema = "API_GATEWAY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGateway;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplication;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamExternalArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamExternalEndpointArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamProxyProtocolArgs;
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
///         var default_ = new SecurityGateway("default", SecurityGatewayArgs.builder()
///             .securityGatewayId("default-sg-spa-api")
///             .displayName("My SPA Security Gateway resource")
///             .build());
///
///         var example_spa = new SecurityGatewayApplication("example-spa", SecurityGatewayApplicationArgs.builder()
///             .securityGatewayId(default_.securityGatewayId())
///             .applicationId("app-discovery")
///             .upstreams(SecurityGatewayApplicationUpstreamArgs.builder()
///                 .external(SecurityGatewayApplicationUpstreamExternalArgs.builder()
///                     .endpoints(SecurityGatewayApplicationUpstreamExternalEndpointArgs.builder()
///                         .hostname("my.discovery.service.com")
///                         .port(443)
///                         .build())
///                     .build())
///                 .proxyProtocol(SecurityGatewayApplicationUpstreamProxyProtocolArgs.builder()
///                     .allowedClientHeaders("header")
///                     .build())
///                 .build())
///             .schema("API_GATEWAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:beyondcorp:SecurityGateway
///     properties:
///       securityGatewayId: default-sg-spa-api
///       displayName: My SPA Security Gateway resource
///   example-spa:
///     type: gcp:beyondcorp:SecurityGatewayApplication
///     properties:
///       securityGatewayId: ${default.securityGatewayId}
///       applicationId: app-discovery
///       upstreams:
///         - external:
///             endpoints:
///               - hostname: my.discovery.service.com
///                 port: 443
///           proxyProtocol:
///             allowedClientHeaders:
///               - header
///       schema: API_GATEWAY
/// ```
///
/// ### Beyondcorp Security Gateway Application Spa Proxy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.beyondcorp.SecurityGateway("default", {
///     securityGatewayId: "default-sg-spa-proxy",
///     displayName: "My SPA Security Gateway resource",
/// });
/// const example_spa = new gcp.beyondcorp.SecurityGatewayApplication("example-spa", {
///     securityGatewayId: _default.securityGatewayId,
///     applicationId: "app-proxy",
///     endpointMatchers: [{
///         hostname: "a.site.com",
///         ports: [443],
///     }],
///     upstreams: [{
///         external: {
///             endpoints: [{
///                 hostname: "my.proxy.service.com",
///                 port: 443,
///             }],
///         },
///         proxyProtocol: {
///             allowedClientHeaders: [
///                 "header1",
///                 "header2",
///             ],
///             contextualHeaders: {
///                 userInfo: {
///                     outputType: "PROTOBUF",
///                 },
///                 groupInfo: {
///                     outputType: "JSON",
///                 },
///                 deviceInfo: {
///                     outputType: "NONE",
///                 },
///                 outputType: "JSON",
///             },
///             metadataHeaders: {
///                 "metadata-header1": "value1",
///                 "metadata-header2": "value2",
///             },
///             gatewayIdentity: "RESOURCE_NAME",
///             clientIp: true,
///         },
///     }],
///     schema: "PROXY_GATEWAY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.beyondcorp.SecurityGateway("default",
///     security_gateway_id="default-sg-spa-proxy",
///     display_name="My SPA Security Gateway resource")
/// example_spa = gcp.beyondcorp.SecurityGatewayApplication("example-spa",
///     security_gateway_id=default.security_gateway_id,
///     application_id="app-proxy",
///     endpoint_matchers=[{
///         "hostname": "a.site.com",
///         "ports": [443],
///     }],
///     upstreams=[{
///         "external": {
///             "endpoints": [{
///                 "hostname": "my.proxy.service.com",
///                 "port": 443,
///             }],
///         },
///         "proxy_protocol": {
///             "allowed_client_headers": [
///                 "header1",
///                 "header2",
///             ],
///             "contextual_headers": {
///                 "user_info": {
///                     "output_type": "PROTOBUF",
///                 },
///                 "group_info": {
///                     "output_type": "JSON",
///                 },
///                 "device_info": {
///                     "output_type": "NONE",
///                 },
///                 "output_type": "JSON",
///             },
///             "metadata_headers": {
///                 "metadata-header1": "value1",
///                 "metadata-header2": "value2",
///             },
///             "gateway_identity": "RESOURCE_NAME",
///             "client_ip": True,
///         },
///     }],
///     schema="PROXY_GATEWAY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Beyondcorp.SecurityGateway("default", new()
///     {
///         SecurityGatewayId = "default-sg-spa-proxy",
///         DisplayName = "My SPA Security Gateway resource",
///     });
///
///     var example_spa = new Gcp.Beyondcorp.SecurityGatewayApplication("example-spa", new()
///     {
///         SecurityGatewayId = @default.SecurityGatewayId,
///         ApplicationId = "app-proxy",
///         EndpointMatchers = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationEndpointMatcherArgs
///             {
///                 Hostname = "a.site.com",
///                 Ports = new[]
///                 {
///                     443,
///                 },
///             },
///         },
///         Upstreams = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamArgs
///             {
///                 External = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamExternalArgs
///                 {
///                     Endpoints = new[]
///                     {
///                         new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamExternalEndpointArgs
///                         {
///                             Hostname = "my.proxy.service.com",
///                             Port = 443,
///                         },
///                     },
///                 },
///                 ProxyProtocol = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamProxyProtocolArgs
///                 {
///                     AllowedClientHeaders = new[]
///                     {
///                         "header1",
///                         "header2",
///                     },
///                     ContextualHeaders = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersArgs
///                     {
///                         UserInfo = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfoArgs
///                         {
///                             OutputType = "PROTOBUF",
///                         },
///                         GroupInfo = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfoArgs
///                         {
///                             OutputType = "JSON",
///                         },
///                         DeviceInfo = new Gcp.Beyondcorp.Inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfoArgs
///                         {
///                             OutputType = "NONE",
///                         },
///                         OutputType = "JSON",
///                     },
///                     MetadataHeaders =
///                     {
///                         { "metadata-header1", "value1" },
///                         { "metadata-header2", "value2" },
///                     },
///                     GatewayIdentity = "RESOURCE_NAME",
///                     ClientIp = true,
///                 },
///             },
///         },
///         Schema = "PROXY_GATEWAY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := beyondcorp.NewSecurityGateway(ctx, "default", &beyondcorp.SecurityGatewayArgs{
/// 			SecurityGatewayId: pulumi.String("default-sg-spa-proxy"),
/// 			DisplayName:       pulumi.String("My SPA Security Gateway resource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewSecurityGatewayApplication(ctx, "example-spa", &beyondcorp.SecurityGatewayApplicationArgs{
/// 			SecurityGatewayId: _default.SecurityGatewayId,
/// 			ApplicationId:     pulumi.String("app-proxy"),
/// 			EndpointMatchers: beyondcorp.SecurityGatewayApplicationEndpointMatcherArray{
/// 				&beyondcorp.SecurityGatewayApplicationEndpointMatcherArgs{
/// 					Hostname: pulumi.String("a.site.com"),
/// 					Ports: pulumi.IntArray{
/// 						pulumi.Int(443),
/// 					},
/// 				},
/// 			},
/// 			Upstreams: beyondcorp.SecurityGatewayApplicationUpstreamArray{
/// 				&beyondcorp.SecurityGatewayApplicationUpstreamArgs{
/// 					External: &beyondcorp.SecurityGatewayApplicationUpstreamExternalArgs{
/// 						Endpoints: beyondcorp.SecurityGatewayApplicationUpstreamExternalEndpointArray{
/// 							&beyondcorp.SecurityGatewayApplicationUpstreamExternalEndpointArgs{
/// 								Hostname: pulumi.String("my.proxy.service.com"),
/// 								Port:     pulumi.Int(443),
/// 							},
/// 						},
/// 					},
/// 					ProxyProtocol: &beyondcorp.SecurityGatewayApplicationUpstreamProxyProtocolArgs{
/// 						AllowedClientHeaders: pulumi.StringArray{
/// 							pulumi.String("header1"),
/// 							pulumi.String("header2"),
/// 						},
/// 						ContextualHeaders: &beyondcorp.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersArgs{
/// 							UserInfo: &beyondcorp.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfoArgs{
/// 								OutputType: pulumi.String("PROTOBUF"),
/// 							},
/// 							GroupInfo: &beyondcorp.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfoArgs{
/// 								OutputType: pulumi.String("JSON"),
/// 							},
/// 							DeviceInfo: &beyondcorp.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfoArgs{
/// 								OutputType: pulumi.String("NONE"),
/// 							},
/// 							OutputType: pulumi.String("JSON"),
/// 						},
/// 						MetadataHeaders: pulumi.StringMap{
/// 							"metadata-header1": pulumi.String("value1"),
/// 							"metadata-header2": pulumi.String("value2"),
/// 						},
/// 						GatewayIdentity: pulumi.String("RESOURCE_NAME"),
/// 						ClientIp:        pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Schema: pulumi.String("PROXY_GATEWAY"),
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
/// resource "gcp_beyondcorp_securitygateway" "default" {
///   security_gateway_id = "default-sg-spa-proxy"
///   display_name        = "My SPA Security Gateway resource"
/// }
/// resource "gcp_beyondcorp_securitygatewayapplication" "example-spa" {
///   security_gateway_id = gcp_beyondcorp_securitygateway.default.security_gateway_id
///   application_id      = "app-proxy"
///   endpoint_matchers {
///     hostname = "a.site.com"
///     ports    = [443]
///   }
///   upstreams {
///     external = {
///       endpoints = [{
///         "hostname" = "my.proxy.service.com"
///         "port"     = 443
///       }]
///     }
///     proxy_protocol = {
///       allowed_client_headers = ["header1", "header2"]
///       contextual_headers = {
///         user_info = {
///           output_type = "PROTOBUF"
///         }
///         group_info = {
///           output_type = "JSON"
///         }
///         device_info = {
///           output_type = "NONE"
///         }
///         output_type = "JSON"
///       }
///       metadata_headers = {
///         "metadata-header1" = "value1"
///         "metadata-header2" = "value2"
///       }
///       gateway_identity = "RESOURCE_NAME"
///       client_ip        = true
///     }
///   }
///   schema = "PROXY_GATEWAY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.beyondcorp.SecurityGateway;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplication;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayApplicationArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationEndpointMatcherArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamExternalArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamExternalEndpointArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamProxyProtocolArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfoArgs;
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
///         var default_ = new SecurityGateway("default", SecurityGatewayArgs.builder()
///             .securityGatewayId("default-sg-spa-proxy")
///             .displayName("My SPA Security Gateway resource")
///             .build());
///
///         var example_spa = new SecurityGatewayApplication("example-spa", SecurityGatewayApplicationArgs.builder()
///             .securityGatewayId(default_.securityGatewayId())
///             .applicationId("app-proxy")
///             .endpointMatchers(SecurityGatewayApplicationEndpointMatcherArgs.builder()
///                 .hostname("a.site.com")
///                 .ports(443)
///                 .build())
///             .upstreams(SecurityGatewayApplicationUpstreamArgs.builder()
///                 .external(SecurityGatewayApplicationUpstreamExternalArgs.builder()
///                     .endpoints(SecurityGatewayApplicationUpstreamExternalEndpointArgs.builder()
///                         .hostname("my.proxy.service.com")
///                         .port(443)
///                         .build())
///                     .build())
///                 .proxyProtocol(SecurityGatewayApplicationUpstreamProxyProtocolArgs.builder()
///                     .allowedClientHeaders(
///                         "header1",
///                         "header2")
///                     .contextualHeaders(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersArgs.builder()
///                         .userInfo(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfoArgs.builder()
///                             .outputType("PROTOBUF")
///                             .build())
///                         .groupInfo(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfoArgs.builder()
///                             .outputType("JSON")
///                             .build())
///                         .deviceInfo(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfoArgs.builder()
///                             .outputType("NONE")
///                             .build())
///                         .outputType("JSON")
///                         .build())
///                     .metadataHeaders(Map.ofEntries(
///                         Map.entry("metadata-header1", "value1"),
///                         Map.entry("metadata-header2", "value2")
///                     ))
///                     .gatewayIdentity("RESOURCE_NAME")
///                     .clientIp(true)
///                     .build())
///                 .build())
///             .schema("PROXY_GATEWAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:beyondcorp:SecurityGateway
///     properties:
///       securityGatewayId: default-sg-spa-proxy
///       displayName: My SPA Security Gateway resource
///   example-spa:
///     type: gcp:beyondcorp:SecurityGatewayApplication
///     properties:
///       securityGatewayId: ${default.securityGatewayId}
///       applicationId: app-proxy
///       endpointMatchers:
///         - hostname: a.site.com
///           ports:
///             - 443
///       upstreams:
///         - external:
///             endpoints:
///               - hostname: my.proxy.service.com
///                 port: 443
///           proxyProtocol:
///             allowedClientHeaders:
///               - header1
///               - header2
///             contextualHeaders:
///               userInfo:
///                 outputType: PROTOBUF
///               groupInfo:
///                 outputType: JSON
///               deviceInfo:
///                 outputType: NONE
///               outputType: JSON
///             metadataHeaders:
///               metadata-header1: value1
///               metadata-header2: value2
///             gatewayIdentity: RESOURCE_NAME
///             clientIp: true
///       schema: PROXY_GATEWAY
/// ```
///
///
/// ## Import
///
/// SecurityGatewayApplication can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}}`
/// * `{{project}}/{{security_gateway_id}}/{{application_id}}`
/// * `{{security_gateway_id}}/{{application_id}}`
///
///
/// When using the `pulumi import` command, SecurityGatewayApplication can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication default projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}}
/// $ pulumi import gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication default {{project}}/{{security_gateway_id}}/{{application_id}}
/// $ pulumi import gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication default {{security_gateway_id}}/{{application_id}}
/// ```
class SecurityGatewayApplication extends pulumi.CustomResource {
  /// User-settable Application resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  late final pulumi.Output<String> applicationId;
  /// Output only. Timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. An arbitrary user-provided name for the Application resource.
  /// Cannot exceed 64 characters.
  late final pulumi.Output<String?> displayName;
  /// Required. Endpoint matchers associated with an application.
  /// A combination of hostname and ports as endpoint matcher is used to match
  /// the application.
  /// Match conditions for OR logic.
  /// An array of match conditions to allow for multiple matching criteria.
  /// The rule is considered a match if one the conditions are met.
  /// The conditions can be one of the following combination
  /// (Hostname), (Hostname & Ports)
  /// EXAMPLES:
  /// Hostname - ("*.abc.com"), ("xyz.abc.com")
  /// Hostname and Ports - ("abc.com" and "22"), ("abc.com" and "22,33") etc
  /// Structure is documented below.
  late final pulumi.Output<List<SecurityGatewayApplicationEndpointMatcher>?> endpointMatchers;
  /// Identifier. Name of the resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Type of the external application.
  /// Possible values are: `PROXY_GATEWAY`, `API_GATEWAY`.
  late final pulumi.Output<String?> schema;
  /// ID of the Security Gateway resource this belongs to.
  late final pulumi.Output<String> securityGatewayId;
  /// Output only. Timestamp when the resource was last modified.
  late final pulumi.Output<String> updateTime;
  /// Optional. List of which upstream resource(s) to forward traffic to.
  /// Structure is documented below.
  late final pulumi.Output<List<SecurityGatewayApplicationUpstream>?> upstreams;

  /// Creates a new [SecurityGatewayApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGatewayApplication]. {@macro pulumi_beyondcorp_security_gateway_application_security_gateway_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGatewayApplication(
    String name, {
    SecurityGatewayApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    endpointMatchers = registerOutput<List<SecurityGatewayApplicationEndpointMatcher>?>('endpointMatchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGatewayApplicationEndpointMatcher>(guardedValue, (value) => SecurityGatewayApplicationEndpointMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schema = registerOutput<String?>('schema');
    securityGatewayId = registerOutput<String>('securityGatewayId');
    updateTime = registerOutput<String>('updateTime');
    upstreams = registerOutput<List<SecurityGatewayApplicationUpstream>?>('upstreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGatewayApplicationUpstream>(guardedValue, (value) => SecurityGatewayApplicationUpstream.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [SecurityGatewayApplication] resource's state with the given [name] and [id].
  static SecurityGatewayApplication get(
    String name,
    pulumi.Input<String> id, {
    SecurityGatewayApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityGatewayApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityGatewayApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    endpointMatchers = registerOutput<List<SecurityGatewayApplicationEndpointMatcher>?>('endpointMatchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGatewayApplicationEndpointMatcher>(guardedValue, (value) => SecurityGatewayApplicationEndpointMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schema = registerOutput<String?>('schema');
    securityGatewayId = registerOutput<String>('securityGatewayId');
    updateTime = registerOutput<String>('updateTime');
    upstreams = registerOutput<List<SecurityGatewayApplicationUpstream>?>('upstreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGatewayApplicationUpstream>(guardedValue, (value) => SecurityGatewayApplicationUpstream.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SecurityGatewayApplication] resource.
  SecurityGatewayApplication.reference(String urn)
    : super(
        'gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    endpointMatchers = registerOutput<List<SecurityGatewayApplicationEndpointMatcher>?>('endpointMatchers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGatewayApplicationEndpointMatcher>(guardedValue, (value) => SecurityGatewayApplicationEndpointMatcher.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schema = registerOutput<String?>('schema');
    securityGatewayId = registerOutput<String>('securityGatewayId');
    updateTime = registerOutput<String>('updateTime');
    upstreams = registerOutput<List<SecurityGatewayApplicationUpstream>?>('upstreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityGatewayApplicationUpstream>(guardedValue, (value) => SecurityGatewayApplicationUpstream.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
