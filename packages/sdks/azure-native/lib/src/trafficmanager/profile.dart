import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_config_response.dart';
import 'monitor_config_response.dart';
import 'profile_args.dart';

/// Class representing a Traffic Manager profile.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2015-11-01, 2017-03-01, 2017-05-01, 2018-02-01, 2018-03-01, 2018-04-01, 2018-08-01, 2022-04-01-preview, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native trafficmanager [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Profile-PUT-MultiValue
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.TrafficManager.Profile("profile", new()
///     {
///         DnsConfig = new AzureNative.TrafficManager.Inputs.DnsConfigArgs
///         {
///             RelativeName = "azsmnet6386",
///             Ttl = 35,
///         },
///         Location = "global",
///         MaxReturn = 2,
///         MonitorConfig = new AzureNative.TrafficManager.Inputs.MonitorConfigArgs
///         {
///             Path = "/testpath.aspx",
///             Port = 80,
///             Protocol = AzureNative.TrafficManager.MonitorProtocol.HTTP,
///         },
///         ProfileName = "azsmnet6386",
///         ProfileStatus = AzureNative.TrafficManager.ProfileStatus.Enabled,
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager1421",
///         TrafficRoutingMethod = AzureNative.TrafficManager.TrafficRoutingMethod.MultiValue,
///         TrafficViewEnrollmentStatus = AzureNative.TrafficManager.TrafficViewEnrollmentStatus.Disabled,
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewProfile(ctx, "profile", &trafficmanager.ProfileArgs{
/// 			DnsConfig: &trafficmanager.DnsConfigArgs{
/// 				RelativeName: pulumi.String("azsmnet6386"),
/// 				Ttl:          pulumi.Float64(35),
/// 			},
/// 			Location:  pulumi.String("global"),
/// 			MaxReturn: pulumi.Float64(2),
/// 			MonitorConfig: &trafficmanager.MonitorConfigArgs{
/// 				Path:     pulumi.String("/testpath.aspx"),
/// 				Port:     pulumi.Float64(80),
/// 				Protocol: pulumi.String(trafficmanager.MonitorProtocolHTTP),
/// 			},
/// 			ProfileName:                 pulumi.String("azsmnet6386"),
/// 			ProfileStatus:               pulumi.String(trafficmanager.ProfileStatusEnabled),
/// 			ResourceGroupName:           pulumi.String("azuresdkfornetautoresttrafficmanager1421"),
/// 			TrafficRoutingMethod:        pulumi.String(trafficmanager.TrafficRoutingMethodMultiValue),
/// 			TrafficViewEnrollmentStatus: pulumi.String(trafficmanager.TrafficViewEnrollmentStatusDisabled),
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
/// import com.pulumi.azurenative.trafficmanager.Profile;
/// import com.pulumi.azurenative.trafficmanager.ProfileArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.DnsConfigArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.MonitorConfigArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .dnsConfig(DnsConfigArgs.builder()
///                 .relativeName("azsmnet6386")
///                 .ttl(35.0)
///                 .build())
///             .location("global")
///             .maxReturn(2.0)
///             .monitorConfig(MonitorConfigArgs.builder()
///                 .path("/testpath.aspx")
///                 .port(80.0)
///                 .protocol("HTTP")
///                 .build())
///             .profileName("azsmnet6386")
///             .profileStatus("Enabled")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager1421")
///             .trafficRoutingMethod("MultiValue")
///             .trafficViewEnrollmentStatus("Disabled")
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
/// const profile = new azure_native.trafficmanager.Profile("profile", {
///     dnsConfig: {
///         relativeName: "azsmnet6386",
///         ttl: 35,
///     },
///     location: "global",
///     maxReturn: 2,
///     monitorConfig: {
///         path: "/testpath.aspx",
///         port: 80,
///         protocol: azure_native.trafficmanager.MonitorProtocol.HTTP,
///     },
///     profileName: "azsmnet6386",
///     profileStatus: azure_native.trafficmanager.ProfileStatus.Enabled,
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager1421",
///     trafficRoutingMethod: azure_native.trafficmanager.TrafficRoutingMethod.MultiValue,
///     trafficViewEnrollmentStatus: azure_native.trafficmanager.TrafficViewEnrollmentStatus.Disabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.trafficmanager.Profile("profile",
///     dns_config={
///         "relative_name": "azsmnet6386",
///         "ttl": 35,
///     },
///     location="global",
///     max_return=2,
///     monitor_config={
///         "path": "/testpath.aspx",
///         "port": 80,
///         "protocol": azure_native.trafficmanager.MonitorProtocol.HTTP,
///     },
///     profile_name="azsmnet6386",
///     profile_status=azure_native.trafficmanager.ProfileStatus.ENABLED,
///     resource_group_name="azuresdkfornetautoresttrafficmanager1421",
///     traffic_routing_method=azure_native.trafficmanager.TrafficRoutingMethod.MULTI_VALUE,
///     traffic_view_enrollment_status=azure_native.trafficmanager.TrafficViewEnrollmentStatus.DISABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:trafficmanager:Profile
///     properties:
///       dnsConfig:
///         relativeName: azsmnet6386
///         ttl: 35
///       location: global
///       maxReturn: 2
///       monitorConfig:
///         path: /testpath.aspx
///         port: 80
///         protocol: HTTP
///       profileName: azsmnet6386
///       profileStatus: Enabled
///       resourceGroupName: azuresdkfornetautoresttrafficmanager1421
///       trafficRoutingMethod: MultiValue
///       trafficViewEnrollmentStatus: Disabled
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Profile-PUT-NoEndpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.TrafficManager.Profile("profile", new()
///     {
///         DnsConfig = new AzureNative.TrafficManager.Inputs.DnsConfigArgs
///         {
///             RelativeName = "azsmnet6386",
///             Ttl = 35,
///         },
///         Location = "global",
///         MonitorConfig = new AzureNative.TrafficManager.Inputs.MonitorConfigArgs
///         {
///             Path = "/testpath.aspx",
///             Port = 80,
///             Protocol = AzureNative.TrafficManager.MonitorProtocol.HTTP,
///         },
///         ProfileName = "azsmnet6386",
///         ProfileStatus = AzureNative.TrafficManager.ProfileStatus.Enabled,
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager1421",
///         TrafficRoutingMethod = AzureNative.TrafficManager.TrafficRoutingMethod.Performance,
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewProfile(ctx, "profile", &trafficmanager.ProfileArgs{
/// 			DnsConfig: &trafficmanager.DnsConfigArgs{
/// 				RelativeName: pulumi.String("azsmnet6386"),
/// 				Ttl:          pulumi.Float64(35),
/// 			},
/// 			Location: pulumi.String("global"),
/// 			MonitorConfig: &trafficmanager.MonitorConfigArgs{
/// 				Path:     pulumi.String("/testpath.aspx"),
/// 				Port:     pulumi.Float64(80),
/// 				Protocol: pulumi.String(trafficmanager.MonitorProtocolHTTP),
/// 			},
/// 			ProfileName:          pulumi.String("azsmnet6386"),
/// 			ProfileStatus:        pulumi.String(trafficmanager.ProfileStatusEnabled),
/// 			ResourceGroupName:    pulumi.String("azuresdkfornetautoresttrafficmanager1421"),
/// 			TrafficRoutingMethod: pulumi.String(trafficmanager.TrafficRoutingMethodPerformance),
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
/// import com.pulumi.azurenative.trafficmanager.Profile;
/// import com.pulumi.azurenative.trafficmanager.ProfileArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.DnsConfigArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.MonitorConfigArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .dnsConfig(DnsConfigArgs.builder()
///                 .relativeName("azsmnet6386")
///                 .ttl(35.0)
///                 .build())
///             .location("global")
///             .monitorConfig(MonitorConfigArgs.builder()
///                 .path("/testpath.aspx")
///                 .port(80.0)
///                 .protocol("HTTP")
///                 .build())
///             .profileName("azsmnet6386")
///             .profileStatus("Enabled")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager1421")
///             .trafficRoutingMethod("Performance")
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
/// const profile = new azure_native.trafficmanager.Profile("profile", {
///     dnsConfig: {
///         relativeName: "azsmnet6386",
///         ttl: 35,
///     },
///     location: "global",
///     monitorConfig: {
///         path: "/testpath.aspx",
///         port: 80,
///         protocol: azure_native.trafficmanager.MonitorProtocol.HTTP,
///     },
///     profileName: "azsmnet6386",
///     profileStatus: azure_native.trafficmanager.ProfileStatus.Enabled,
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager1421",
///     trafficRoutingMethod: azure_native.trafficmanager.TrafficRoutingMethod.Performance,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.trafficmanager.Profile("profile",
///     dns_config={
///         "relative_name": "azsmnet6386",
///         "ttl": 35,
///     },
///     location="global",
///     monitor_config={
///         "path": "/testpath.aspx",
///         "port": 80,
///         "protocol": azure_native.trafficmanager.MonitorProtocol.HTTP,
///     },
///     profile_name="azsmnet6386",
///     profile_status=azure_native.trafficmanager.ProfileStatus.ENABLED,
///     resource_group_name="azuresdkfornetautoresttrafficmanager1421",
///     traffic_routing_method=azure_native.trafficmanager.TrafficRoutingMethod.PERFORMANCE)
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:trafficmanager:Profile
///     properties:
///       dnsConfig:
///         relativeName: azsmnet6386
///         ttl: 35
///       location: global
///       monitorConfig:
///         path: /testpath.aspx
///         port: 80
///         protocol: HTTP
///       profileName: azsmnet6386
///       profileStatus: Enabled
///       resourceGroupName: azuresdkfornetautoresttrafficmanager1421
///       trafficRoutingMethod: Performance
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Profile-PUT-WithAliasing
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.TrafficManager.Profile("profile", new()
///     {
///         AllowedEndpointRecordTypes = new[]
///         {
///             AzureNative.TrafficManager.AllowedEndpointRecordType.DomainName,
///         },
///         DnsConfig = new AzureNative.TrafficManager.Inputs.DnsConfigArgs
///         {
///             RelativeName = "azuresdkfornetautoresttrafficmanager6192",
///             Ttl = 35,
///         },
///         Endpoints = new[]
///         {
///             new AzureNative.TrafficManager.Inputs.EndpointArgs
///             {
///                 EndpointLocation = "North Europe",
///                 EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///                 Name = "My external endpoint",
///                 Target = "foobar.contoso.com",
///                 Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///             },
///         },
///         Location = "global",
///         MonitorConfig = new AzureNative.TrafficManager.Inputs.MonitorConfigArgs
///         {
///             IntervalInSeconds = 10,
///             Path = "/testpath.aspx",
///             Port = 80,
///             Protocol = AzureNative.TrafficManager.MonitorProtocol.HTTP,
///             TimeoutInSeconds = 5,
///             ToleratedNumberOfFailures = 2,
///         },
///         ProfileName = "azuresdkfornetautoresttrafficmanager6192",
///         ProfileStatus = AzureNative.TrafficManager.ProfileStatus.Enabled,
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager2583",
///         TrafficRoutingMethod = AzureNative.TrafficManager.TrafficRoutingMethod.Performance,
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewProfile(ctx, "profile", &trafficmanager.ProfileArgs{
/// 			AllowedEndpointRecordTypes: pulumi.StringArray{
/// 				pulumi.String(trafficmanager.AllowedEndpointRecordTypeDomainName),
/// 			},
/// 			DnsConfig: &trafficmanager.DnsConfigArgs{
/// 				RelativeName: pulumi.String("azuresdkfornetautoresttrafficmanager6192"),
/// 				Ttl:          pulumi.Float64(35),
/// 			},
/// 			Endpoints: trafficmanager.EndpointTypeArray{
/// 				&trafficmanager.EndpointTypeArgs{
/// 					EndpointLocation: pulumi.String("North Europe"),
/// 					EndpointStatus:   pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 					Name:             pulumi.String("My external endpoint"),
/// 					Target:           pulumi.String("foobar.contoso.com"),
/// 					Type:             pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
/// 				},
/// 			},
/// 			Location: pulumi.String("global"),
/// 			MonitorConfig: &trafficmanager.MonitorConfigArgs{
/// 				IntervalInSeconds:         pulumi.Float64(10),
/// 				Path:                      pulumi.String("/testpath.aspx"),
/// 				Port:                      pulumi.Float64(80),
/// 				Protocol:                  pulumi.String(trafficmanager.MonitorProtocolHTTP),
/// 				TimeoutInSeconds:          pulumi.Float64(5),
/// 				ToleratedNumberOfFailures: pulumi.Float64(2),
/// 			},
/// 			ProfileName:          pulumi.String("azuresdkfornetautoresttrafficmanager6192"),
/// 			ProfileStatus:        pulumi.String(trafficmanager.ProfileStatusEnabled),
/// 			ResourceGroupName:    pulumi.String("azuresdkfornetautoresttrafficmanager2583"),
/// 			TrafficRoutingMethod: pulumi.String(trafficmanager.TrafficRoutingMethodPerformance),
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
/// import com.pulumi.azurenative.trafficmanager.Profile;
/// import com.pulumi.azurenative.trafficmanager.ProfileArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.DnsConfigArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.EndpointArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.MonitorConfigArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .allowedEndpointRecordTypes("DomainName")
///             .dnsConfig(DnsConfigArgs.builder()
///                 .relativeName("azuresdkfornetautoresttrafficmanager6192")
///                 .ttl(35.0)
///                 .build())
///             .endpoints(EndpointArgs.builder()
///                 .endpointLocation("North Europe")
///                 .endpointStatus("Enabled")
///                 .name("My external endpoint")
///                 .target("foobar.contoso.com")
///                 .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///                 .build())
///             .location("global")
///             .monitorConfig(MonitorConfigArgs.builder()
///                 .intervalInSeconds(10.0)
///                 .path("/testpath.aspx")
///                 .port(80.0)
///                 .protocol("HTTP")
///                 .timeoutInSeconds(5.0)
///                 .toleratedNumberOfFailures(2.0)
///                 .build())
///             .profileName("azuresdkfornetautoresttrafficmanager6192")
///             .profileStatus("Enabled")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager2583")
///             .trafficRoutingMethod("Performance")
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
/// const profile = new azure_native.trafficmanager.Profile("profile", {
///     allowedEndpointRecordTypes: [azure_native.trafficmanager.AllowedEndpointRecordType.DomainName],
///     dnsConfig: {
///         relativeName: "azuresdkfornetautoresttrafficmanager6192",
///         ttl: 35,
///     },
///     endpoints: [{
///         endpointLocation: "North Europe",
///         endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///         name: "My external endpoint",
///         target: "foobar.contoso.com",
///         type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///     }],
///     location: "global",
///     monitorConfig: {
///         intervalInSeconds: 10,
///         path: "/testpath.aspx",
///         port: 80,
///         protocol: azure_native.trafficmanager.MonitorProtocol.HTTP,
///         timeoutInSeconds: 5,
///         toleratedNumberOfFailures: 2,
///     },
///     profileName: "azuresdkfornetautoresttrafficmanager6192",
///     profileStatus: azure_native.trafficmanager.ProfileStatus.Enabled,
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager2583",
///     trafficRoutingMethod: azure_native.trafficmanager.TrafficRoutingMethod.Performance,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.trafficmanager.Profile("profile",
///     allowed_endpoint_record_types=[azure_native.trafficmanager.AllowedEndpointRecordType.DOMAIN_NAME],
///     dns_config={
///         "relative_name": "azuresdkfornetautoresttrafficmanager6192",
///         "ttl": 35,
///     },
///     endpoints=[{
///         "endpoint_location": "North Europe",
///         "endpoint_status": azure_native.trafficmanager.EndpointStatus.ENABLED,
///         "name": "My external endpoint",
///         "target": "foobar.contoso.com",
///         "type": "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///     }],
///     location="global",
///     monitor_config={
///         "interval_in_seconds": 10,
///         "path": "/testpath.aspx",
///         "port": 80,
///         "protocol": azure_native.trafficmanager.MonitorProtocol.HTTP,
///         "timeout_in_seconds": 5,
///         "tolerated_number_of_failures": 2,
///     },
///     profile_name="azuresdkfornetautoresttrafficmanager6192",
///     profile_status=azure_native.trafficmanager.ProfileStatus.ENABLED,
///     resource_group_name="azuresdkfornetautoresttrafficmanager2583",
///     traffic_routing_method=azure_native.trafficmanager.TrafficRoutingMethod.PERFORMANCE)
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:trafficmanager:Profile
///     properties:
///       allowedEndpointRecordTypes:
///         - DomainName
///       dnsConfig:
///         relativeName: azuresdkfornetautoresttrafficmanager6192
///         ttl: 35
///       endpoints:
///         - endpointLocation: North Europe
///           endpointStatus: Enabled
///           name: My external endpoint
///           target: foobar.contoso.com
///           type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///       location: global
///       monitorConfig:
///         intervalInSeconds: 10
///         path: /testpath.aspx
///         port: 80
///         protocol: HTTP
///         timeoutInSeconds: 5
///         toleratedNumberOfFailures: 2
///       profileName: azuresdkfornetautoresttrafficmanager6192
///       profileStatus: Enabled
///       resourceGroupName: azuresdkfornetautoresttrafficmanager2583
///       trafficRoutingMethod: Performance
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Profile-PUT-WithCustomHeaders
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.TrafficManager.Profile("profile", new()
///     {
///         DnsConfig = new AzureNative.TrafficManager.Inputs.DnsConfigArgs
///         {
///             RelativeName = "azuresdkfornetautoresttrafficmanager6192",
///             Ttl = 35,
///         },
///         Endpoints = new[]
///         {
///             new AzureNative.TrafficManager.Inputs.EndpointArgs
///             {
///                 CustomHeaders = new[]
///                 {
///                     new AzureNative.TrafficManager.Inputs.EndpointPropertiesCustomHeadersItemArgs
///                     {
///                         Name = "header-2",
///                         Value = "value-2-overridden",
///                     },
///                 },
///                 EndpointLocation = "North Europe",
///                 EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///                 Name = "My external endpoint",
///                 Target = "foobar.contoso.com",
///                 Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///             },
///         },
///         Location = "global",
///         MonitorConfig = new AzureNative.TrafficManager.Inputs.MonitorConfigArgs
///         {
///             CustomHeaders = new[]
///             {
///                 new AzureNative.TrafficManager.Inputs.MonitorConfigCustomHeadersItemArgs
///                 {
///                     Name = "header-1",
///                     Value = "value-1",
///                 },
///                 new AzureNative.TrafficManager.Inputs.MonitorConfigCustomHeadersItemArgs
///                 {
///                     Name = "header-2",
///                     Value = "value-2",
///                 },
///             },
///             ExpectedStatusCodeRanges = new[]
///             {
///                 new AzureNative.TrafficManager.Inputs.MonitorConfigExpectedStatusCodeRangesItemArgs
///                 {
///                     Max = 205,
///                     Min = 200,
///                 },
///                 new AzureNative.TrafficManager.Inputs.MonitorConfigExpectedStatusCodeRangesItemArgs
///                 {
///                     Max = 410,
///                     Min = 400,
///                 },
///             },
///             IntervalInSeconds = 10,
///             Path = "/testpath.aspx",
///             Port = 80,
///             Protocol = AzureNative.TrafficManager.MonitorProtocol.HTTP,
///             TimeoutInSeconds = 5,
///             ToleratedNumberOfFailures = 2,
///         },
///         ProfileName = "azuresdkfornetautoresttrafficmanager6192",
///         ProfileStatus = AzureNative.TrafficManager.ProfileStatus.Enabled,
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager2583",
///         TrafficRoutingMethod = AzureNative.TrafficManager.TrafficRoutingMethod.Performance,
///         TrafficViewEnrollmentStatus = AzureNative.TrafficManager.TrafficViewEnrollmentStatus.Disabled,
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewProfile(ctx, "profile", &trafficmanager.ProfileArgs{
/// 			DnsConfig: &trafficmanager.DnsConfigArgs{
/// 				RelativeName: pulumi.String("azuresdkfornetautoresttrafficmanager6192"),
/// 				Ttl:          pulumi.Float64(35),
/// 			},
/// 			Endpoints: trafficmanager.EndpointTypeArray{
/// 				&trafficmanager.EndpointTypeArgs{
/// 					CustomHeaders: trafficmanager.EndpointPropertiesCustomHeadersItemArray{
/// 						&trafficmanager.EndpointPropertiesCustomHeadersItemArgs{
/// 							Name:  pulumi.String("header-2"),
/// 							Value: pulumi.String("value-2-overridden"),
/// 						},
/// 					},
/// 					EndpointLocation: pulumi.String("North Europe"),
/// 					EndpointStatus:   pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 					Name:             pulumi.String("My external endpoint"),
/// 					Target:           pulumi.String("foobar.contoso.com"),
/// 					Type:             pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
/// 				},
/// 			},
/// 			Location: pulumi.String("global"),
/// 			MonitorConfig: &trafficmanager.MonitorConfigArgs{
/// 				CustomHeaders: trafficmanager.MonitorConfigCustomHeadersItemArray{
/// 					&trafficmanager.MonitorConfigCustomHeadersItemArgs{
/// 						Name:  pulumi.String("header-1"),
/// 						Value: pulumi.String("value-1"),
/// 					},
/// 					&trafficmanager.MonitorConfigCustomHeadersItemArgs{
/// 						Name:  pulumi.String("header-2"),
/// 						Value: pulumi.String("value-2"),
/// 					},
/// 				},
/// 				ExpectedStatusCodeRanges: trafficmanager.MonitorConfigExpectedStatusCodeRangesItemArray{
/// 					&trafficmanager.MonitorConfigExpectedStatusCodeRangesItemArgs{
/// 						Max: pulumi.Int(205),
/// 						Min: pulumi.Int(200),
/// 					},
/// 					&trafficmanager.MonitorConfigExpectedStatusCodeRangesItemArgs{
/// 						Max: pulumi.Int(410),
/// 						Min: pulumi.Int(400),
/// 					},
/// 				},
/// 				IntervalInSeconds:         pulumi.Float64(10),
/// 				Path:                      pulumi.String("/testpath.aspx"),
/// 				Port:                      pulumi.Float64(80),
/// 				Protocol:                  pulumi.String(trafficmanager.MonitorProtocolHTTP),
/// 				TimeoutInSeconds:          pulumi.Float64(5),
/// 				ToleratedNumberOfFailures: pulumi.Float64(2),
/// 			},
/// 			ProfileName:                 pulumi.String("azuresdkfornetautoresttrafficmanager6192"),
/// 			ProfileStatus:               pulumi.String(trafficmanager.ProfileStatusEnabled),
/// 			ResourceGroupName:           pulumi.String("azuresdkfornetautoresttrafficmanager2583"),
/// 			TrafficRoutingMethod:        pulumi.String(trafficmanager.TrafficRoutingMethodPerformance),
/// 			TrafficViewEnrollmentStatus: pulumi.String(trafficmanager.TrafficViewEnrollmentStatusDisabled),
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
/// import com.pulumi.azurenative.trafficmanager.Profile;
/// import com.pulumi.azurenative.trafficmanager.ProfileArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.DnsConfigArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.EndpointArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.MonitorConfigArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .dnsConfig(DnsConfigArgs.builder()
///                 .relativeName("azuresdkfornetautoresttrafficmanager6192")
///                 .ttl(35.0)
///                 .build())
///             .endpoints(EndpointArgs.builder()
///                 .customHeaders(EndpointPropertiesCustomHeadersItemArgs.builder()
///                     .name("header-2")
///                     .value("value-2-overridden")
///                     .build())
///                 .endpointLocation("North Europe")
///                 .endpointStatus("Enabled")
///                 .name("My external endpoint")
///                 .target("foobar.contoso.com")
///                 .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///                 .build())
///             .location("global")
///             .monitorConfig(MonitorConfigArgs.builder()
///                 .customHeaders(
///                     MonitorConfigCustomHeadersItemArgs.builder()
///                         .name("header-1")
///                         .value("value-1")
///                         .build(),
///                     MonitorConfigCustomHeadersItemArgs.builder()
///                         .name("header-2")
///                         .value("value-2")
///                         .build())
///                 .expectedStatusCodeRanges(
///                     MonitorConfigExpectedStatusCodeRangesItemArgs.builder()
///                         .max(205)
///                         .min(200)
///                         .build(),
///                     MonitorConfigExpectedStatusCodeRangesItemArgs.builder()
///                         .max(410)
///                         .min(400)
///                         .build())
///                 .intervalInSeconds(10.0)
///                 .path("/testpath.aspx")
///                 .port(80.0)
///                 .protocol("HTTP")
///                 .timeoutInSeconds(5.0)
///                 .toleratedNumberOfFailures(2.0)
///                 .build())
///             .profileName("azuresdkfornetautoresttrafficmanager6192")
///             .profileStatus("Enabled")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager2583")
///             .trafficRoutingMethod("Performance")
///             .trafficViewEnrollmentStatus("Disabled")
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
/// const profile = new azure_native.trafficmanager.Profile("profile", {
///     dnsConfig: {
///         relativeName: "azuresdkfornetautoresttrafficmanager6192",
///         ttl: 35,
///     },
///     endpoints: [{
///         customHeaders: [{
///             name: "header-2",
///             value: "value-2-overridden",
///         }],
///         endpointLocation: "North Europe",
///         endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///         name: "My external endpoint",
///         target: "foobar.contoso.com",
///         type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///     }],
///     location: "global",
///     monitorConfig: {
///         customHeaders: [
///             {
///                 name: "header-1",
///                 value: "value-1",
///             },
///             {
///                 name: "header-2",
///                 value: "value-2",
///             },
///         ],
///         expectedStatusCodeRanges: [
///             {
///                 max: 205,
///                 min: 200,
///             },
///             {
///                 max: 410,
///                 min: 400,
///             },
///         ],
///         intervalInSeconds: 10,
///         path: "/testpath.aspx",
///         port: 80,
///         protocol: azure_native.trafficmanager.MonitorProtocol.HTTP,
///         timeoutInSeconds: 5,
///         toleratedNumberOfFailures: 2,
///     },
///     profileName: "azuresdkfornetautoresttrafficmanager6192",
///     profileStatus: azure_native.trafficmanager.ProfileStatus.Enabled,
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager2583",
///     trafficRoutingMethod: azure_native.trafficmanager.TrafficRoutingMethod.Performance,
///     trafficViewEnrollmentStatus: azure_native.trafficmanager.TrafficViewEnrollmentStatus.Disabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.trafficmanager.Profile("profile",
///     dns_config={
///         "relative_name": "azuresdkfornetautoresttrafficmanager6192",
///         "ttl": 35,
///     },
///     endpoints=[{
///         "custom_headers": [{
///             "name": "header-2",
///             "value": "value-2-overridden",
///         }],
///         "endpoint_location": "North Europe",
///         "endpoint_status": azure_native.trafficmanager.EndpointStatus.ENABLED,
///         "name": "My external endpoint",
///         "target": "foobar.contoso.com",
///         "type": "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///     }],
///     location="global",
///     monitor_config={
///         "custom_headers": [
///             {
///                 "name": "header-1",
///                 "value": "value-1",
///             },
///             {
///                 "name": "header-2",
///                 "value": "value-2",
///             },
///         ],
///         "expected_status_code_ranges": [
///             {
///                 "max": 205,
///                 "min": 200,
///             },
///             {
///                 "max": 410,
///                 "min": 400,
///             },
///         ],
///         "interval_in_seconds": 10,
///         "path": "/testpath.aspx",
///         "port": 80,
///         "protocol": azure_native.trafficmanager.MonitorProtocol.HTTP,
///         "timeout_in_seconds": 5,
///         "tolerated_number_of_failures": 2,
///     },
///     profile_name="azuresdkfornetautoresttrafficmanager6192",
///     profile_status=azure_native.trafficmanager.ProfileStatus.ENABLED,
///     resource_group_name="azuresdkfornetautoresttrafficmanager2583",
///     traffic_routing_method=azure_native.trafficmanager.TrafficRoutingMethod.PERFORMANCE,
///     traffic_view_enrollment_status=azure_native.trafficmanager.TrafficViewEnrollmentStatus.DISABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:trafficmanager:Profile
///     properties:
///       dnsConfig:
///         relativeName: azuresdkfornetautoresttrafficmanager6192
///         ttl: 35
///       endpoints:
///         - customHeaders:
///             - name: header-2
///               value: value-2-overridden
///           endpointLocation: North Europe
///           endpointStatus: Enabled
///           name: My external endpoint
///           target: foobar.contoso.com
///           type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///       location: global
///       monitorConfig:
///         customHeaders:
///           - name: header-1
///             value: value-1
///           - name: header-2
///             value: value-2
///         expectedStatusCodeRanges:
///           - max: 205
///             min: 200
///           - max: 410
///             min: 400
///         intervalInSeconds: 10
///         path: /testpath.aspx
///         port: 80
///         protocol: HTTP
///         timeoutInSeconds: 5
///         toleratedNumberOfFailures: 2
///       profileName: azuresdkfornetautoresttrafficmanager6192
///       profileStatus: Enabled
///       resourceGroupName: azuresdkfornetautoresttrafficmanager2583
///       trafficRoutingMethod: Performance
///       trafficViewEnrollmentStatus: Disabled
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Profile-PUT-WithEndpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.TrafficManager.Profile("profile", new()
///     {
///         DnsConfig = new AzureNative.TrafficManager.Inputs.DnsConfigArgs
///         {
///             RelativeName = "azuresdkfornetautoresttrafficmanager6192",
///             Ttl = 35,
///         },
///         Endpoints = new[]
///         {
///             new AzureNative.TrafficManager.Inputs.EndpointArgs
///             {
///                 EndpointLocation = "North Europe",
///                 EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///                 Name = "My external endpoint",
///                 Target = "foobar.contoso.com",
///                 Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///             },
///         },
///         Location = "global",
///         MonitorConfig = new AzureNative.TrafficManager.Inputs.MonitorConfigArgs
///         {
///             IntervalInSeconds = 10,
///             Path = "/testpath.aspx",
///             Port = 80,
///             Protocol = AzureNative.TrafficManager.MonitorProtocol.HTTP,
///             TimeoutInSeconds = 5,
///             ToleratedNumberOfFailures = 2,
///         },
///         ProfileName = "azuresdkfornetautoresttrafficmanager6192",
///         ProfileStatus = AzureNative.TrafficManager.ProfileStatus.Enabled,
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager2583",
///         TrafficRoutingMethod = AzureNative.TrafficManager.TrafficRoutingMethod.Performance,
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewProfile(ctx, "profile", &trafficmanager.ProfileArgs{
/// 			DnsConfig: &trafficmanager.DnsConfigArgs{
/// 				RelativeName: pulumi.String("azuresdkfornetautoresttrafficmanager6192"),
/// 				Ttl:          pulumi.Float64(35),
/// 			},
/// 			Endpoints: trafficmanager.EndpointTypeArray{
/// 				&trafficmanager.EndpointTypeArgs{
/// 					EndpointLocation: pulumi.String("North Europe"),
/// 					EndpointStatus:   pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 					Name:             pulumi.String("My external endpoint"),
/// 					Target:           pulumi.String("foobar.contoso.com"),
/// 					Type:             pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
/// 				},
/// 			},
/// 			Location: pulumi.String("global"),
/// 			MonitorConfig: &trafficmanager.MonitorConfigArgs{
/// 				IntervalInSeconds:         pulumi.Float64(10),
/// 				Path:                      pulumi.String("/testpath.aspx"),
/// 				Port:                      pulumi.Float64(80),
/// 				Protocol:                  pulumi.String(trafficmanager.MonitorProtocolHTTP),
/// 				TimeoutInSeconds:          pulumi.Float64(5),
/// 				ToleratedNumberOfFailures: pulumi.Float64(2),
/// 			},
/// 			ProfileName:          pulumi.String("azuresdkfornetautoresttrafficmanager6192"),
/// 			ProfileStatus:        pulumi.String(trafficmanager.ProfileStatusEnabled),
/// 			ResourceGroupName:    pulumi.String("azuresdkfornetautoresttrafficmanager2583"),
/// 			TrafficRoutingMethod: pulumi.String(trafficmanager.TrafficRoutingMethodPerformance),
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
/// import com.pulumi.azurenative.trafficmanager.Profile;
/// import com.pulumi.azurenative.trafficmanager.ProfileArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.DnsConfigArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.EndpointArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.MonitorConfigArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .dnsConfig(DnsConfigArgs.builder()
///                 .relativeName("azuresdkfornetautoresttrafficmanager6192")
///                 .ttl(35.0)
///                 .build())
///             .endpoints(EndpointArgs.builder()
///                 .endpointLocation("North Europe")
///                 .endpointStatus("Enabled")
///                 .name("My external endpoint")
///                 .target("foobar.contoso.com")
///                 .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///                 .build())
///             .location("global")
///             .monitorConfig(MonitorConfigArgs.builder()
///                 .intervalInSeconds(10.0)
///                 .path("/testpath.aspx")
///                 .port(80.0)
///                 .protocol("HTTP")
///                 .timeoutInSeconds(5.0)
///                 .toleratedNumberOfFailures(2.0)
///                 .build())
///             .profileName("azuresdkfornetautoresttrafficmanager6192")
///             .profileStatus("Enabled")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager2583")
///             .trafficRoutingMethod("Performance")
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
/// const profile = new azure_native.trafficmanager.Profile("profile", {
///     dnsConfig: {
///         relativeName: "azuresdkfornetautoresttrafficmanager6192",
///         ttl: 35,
///     },
///     endpoints: [{
///         endpointLocation: "North Europe",
///         endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///         name: "My external endpoint",
///         target: "foobar.contoso.com",
///         type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///     }],
///     location: "global",
///     monitorConfig: {
///         intervalInSeconds: 10,
///         path: "/testpath.aspx",
///         port: 80,
///         protocol: azure_native.trafficmanager.MonitorProtocol.HTTP,
///         timeoutInSeconds: 5,
///         toleratedNumberOfFailures: 2,
///     },
///     profileName: "azuresdkfornetautoresttrafficmanager6192",
///     profileStatus: azure_native.trafficmanager.ProfileStatus.Enabled,
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager2583",
///     trafficRoutingMethod: azure_native.trafficmanager.TrafficRoutingMethod.Performance,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.trafficmanager.Profile("profile",
///     dns_config={
///         "relative_name": "azuresdkfornetautoresttrafficmanager6192",
///         "ttl": 35,
///     },
///     endpoints=[{
///         "endpoint_location": "North Europe",
///         "endpoint_status": azure_native.trafficmanager.EndpointStatus.ENABLED,
///         "name": "My external endpoint",
///         "target": "foobar.contoso.com",
///         "type": "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
///     }],
///     location="global",
///     monitor_config={
///         "interval_in_seconds": 10,
///         "path": "/testpath.aspx",
///         "port": 80,
///         "protocol": azure_native.trafficmanager.MonitorProtocol.HTTP,
///         "timeout_in_seconds": 5,
///         "tolerated_number_of_failures": 2,
///     },
///     profile_name="azuresdkfornetautoresttrafficmanager6192",
///     profile_status=azure_native.trafficmanager.ProfileStatus.ENABLED,
///     resource_group_name="azuresdkfornetautoresttrafficmanager2583",
///     traffic_routing_method=azure_native.trafficmanager.TrafficRoutingMethod.PERFORMANCE)
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:trafficmanager:Profile
///     properties:
///       dnsConfig:
///         relativeName: azuresdkfornetautoresttrafficmanager6192
///         ttl: 35
///       endpoints:
///         - endpointLocation: North Europe
///           endpointStatus: Enabled
///           name: My external endpoint
///           target: foobar.contoso.com
///           type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///       location: global
///       monitorConfig:
///         intervalInSeconds: 10
///         path: /testpath.aspx
///         port: 80
///         protocol: HTTP
///         timeoutInSeconds: 5
///         toleratedNumberOfFailures: 2
///       profileName: azuresdkfornetautoresttrafficmanager6192
///       profileStatus: Enabled
///       resourceGroupName: azuresdkfornetautoresttrafficmanager2583
///       trafficRoutingMethod: Performance
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Profile-PUT-WithNestedEndpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.TrafficManager.Profile("profile", new()
///     {
///         DnsConfig = new AzureNative.TrafficManager.Inputs.DnsConfigArgs
///         {
///             RelativeName = "parentprofile",
///             Ttl = 35,
///         },
///         Endpoints = new[]
///         {
///             new AzureNative.TrafficManager.Inputs.EndpointArgs
///             {
///                 EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///                 MinChildEndpoints = 2,
///                 MinChildEndpointsIPv4 = 1,
///                 MinChildEndpointsIPv6 = 2,
///                 Name = "MyFirstNestedEndpoint",
///                 Priority = 1,
///                 Target = "firstnestedprofile.tmpreview.watmtest.azure-test.net",
///                 Type = "Microsoft.Network/trafficManagerProfiles/nestedEndpoints",
///                 Weight = 1,
///             },
///             new AzureNative.TrafficManager.Inputs.EndpointArgs
///             {
///                 EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///                 MinChildEndpoints = 2,
///                 MinChildEndpointsIPv4 = 2,
///                 MinChildEndpointsIPv6 = 1,
///                 Name = "MySecondNestedEndpoint",
///                 Priority = 2,
///                 Target = "secondnestedprofile.tmpreview.watmtest.azure-test.net",
///                 Type = "Microsoft.Network/trafficManagerProfiles/nestedEndpoints",
///                 Weight = 1,
///             },
///         },
///         Location = "global",
///         MonitorConfig = new AzureNative.TrafficManager.Inputs.MonitorConfigArgs
///         {
///             IntervalInSeconds = 10,
///             Path = "/testpath.aspx",
///             Port = 80,
///             Protocol = AzureNative.TrafficManager.MonitorProtocol.HTTP,
///             TimeoutInSeconds = 5,
///             ToleratedNumberOfFailures = 2,
///         },
///         ProfileName = "parentprofile",
///         ProfileStatus = AzureNative.TrafficManager.ProfileStatus.Enabled,
///         ResourceGroupName = "myresourcegroup",
///         TrafficRoutingMethod = AzureNative.TrafficManager.TrafficRoutingMethod.Priority,
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewProfile(ctx, "profile", &trafficmanager.ProfileArgs{
/// 			DnsConfig: &trafficmanager.DnsConfigArgs{
/// 				RelativeName: pulumi.String("parentprofile"),
/// 				Ttl:          pulumi.Float64(35),
/// 			},
/// 			Endpoints: trafficmanager.EndpointTypeArray{
/// 				&trafficmanager.EndpointTypeArgs{
/// 					EndpointStatus:        pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 					MinChildEndpoints:     pulumi.Float64(2),
/// 					MinChildEndpointsIPv4: pulumi.Float64(1),
/// 					MinChildEndpointsIPv6: pulumi.Float64(2),
/// 					Name:                  pulumi.String("MyFirstNestedEndpoint"),
/// 					Priority:              pulumi.Float64(1),
/// 					Target:                pulumi.String("firstnestedprofile.tmpreview.watmtest.azure-test.net"),
/// 					Type:                  pulumi.String("Microsoft.Network/trafficManagerProfiles/nestedEndpoints"),
/// 					Weight:                pulumi.Float64(1),
/// 				},
/// 				&trafficmanager.EndpointTypeArgs{
/// 					EndpointStatus:        pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 					MinChildEndpoints:     pulumi.Float64(2),
/// 					MinChildEndpointsIPv4: pulumi.Float64(2),
/// 					MinChildEndpointsIPv6: pulumi.Float64(1),
/// 					Name:                  pulumi.String("MySecondNestedEndpoint"),
/// 					Priority:              pulumi.Float64(2),
/// 					Target:                pulumi.String("secondnestedprofile.tmpreview.watmtest.azure-test.net"),
/// 					Type:                  pulumi.String("Microsoft.Network/trafficManagerProfiles/nestedEndpoints"),
/// 					Weight:                pulumi.Float64(1),
/// 				},
/// 			},
/// 			Location: pulumi.String("global"),
/// 			MonitorConfig: &trafficmanager.MonitorConfigArgs{
/// 				IntervalInSeconds:         pulumi.Float64(10),
/// 				Path:                      pulumi.String("/testpath.aspx"),
/// 				Port:                      pulumi.Float64(80),
/// 				Protocol:                  pulumi.String(trafficmanager.MonitorProtocolHTTP),
/// 				TimeoutInSeconds:          pulumi.Float64(5),
/// 				ToleratedNumberOfFailures: pulumi.Float64(2),
/// 			},
/// 			ProfileName:          pulumi.String("parentprofile"),
/// 			ProfileStatus:        pulumi.String(trafficmanager.ProfileStatusEnabled),
/// 			ResourceGroupName:    pulumi.String("myresourcegroup"),
/// 			TrafficRoutingMethod: pulumi.String(trafficmanager.TrafficRoutingMethodPriority),
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
/// import com.pulumi.azurenative.trafficmanager.Profile;
/// import com.pulumi.azurenative.trafficmanager.ProfileArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.DnsConfigArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.EndpointArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.MonitorConfigArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .dnsConfig(DnsConfigArgs.builder()
///                 .relativeName("parentprofile")
///                 .ttl(35.0)
///                 .build())
///             .endpoints(
///                 EndpointArgs.builder()
///                     .endpointStatus("Enabled")
///                     .minChildEndpoints(2.0)
///                     .minChildEndpointsIPv4(1.0)
///                     .minChildEndpointsIPv6(2.0)
///                     .name("MyFirstNestedEndpoint")
///                     .priority(1.0)
///                     .target("firstnestedprofile.tmpreview.watmtest.azure-test.net")
///                     .type("Microsoft.Network/trafficManagerProfiles/nestedEndpoints")
///                     .weight(1.0)
///                     .build(),
///                 EndpointArgs.builder()
///                     .endpointStatus("Enabled")
///                     .minChildEndpoints(2.0)
///                     .minChildEndpointsIPv4(2.0)
///                     .minChildEndpointsIPv6(1.0)
///                     .name("MySecondNestedEndpoint")
///                     .priority(2.0)
///                     .target("secondnestedprofile.tmpreview.watmtest.azure-test.net")
///                     .type("Microsoft.Network/trafficManagerProfiles/nestedEndpoints")
///                     .weight(1.0)
///                     .build())
///             .location("global")
///             .monitorConfig(MonitorConfigArgs.builder()
///                 .intervalInSeconds(10.0)
///                 .path("/testpath.aspx")
///                 .port(80.0)
///                 .protocol("HTTP")
///                 .timeoutInSeconds(5.0)
///                 .toleratedNumberOfFailures(2.0)
///                 .build())
///             .profileName("parentprofile")
///             .profileStatus("Enabled")
///             .resourceGroupName("myresourcegroup")
///             .trafficRoutingMethod("Priority")
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
/// const profile = new azure_native.trafficmanager.Profile("profile", {
///     dnsConfig: {
///         relativeName: "parentprofile",
///         ttl: 35,
///     },
///     endpoints: [
///         {
///             endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///             minChildEndpoints: 2,
///             minChildEndpointsIPv4: 1,
///             minChildEndpointsIPv6: 2,
///             name: "MyFirstNestedEndpoint",
///             priority: 1,
///             target: "firstnestedprofile.tmpreview.watmtest.azure-test.net",
///             type: "Microsoft.Network/trafficManagerProfiles/nestedEndpoints",
///             weight: 1,
///         },
///         {
///             endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///             minChildEndpoints: 2,
///             minChildEndpointsIPv4: 2,
///             minChildEndpointsIPv6: 1,
///             name: "MySecondNestedEndpoint",
///             priority: 2,
///             target: "secondnestedprofile.tmpreview.watmtest.azure-test.net",
///             type: "Microsoft.Network/trafficManagerProfiles/nestedEndpoints",
///             weight: 1,
///         },
///     ],
///     location: "global",
///     monitorConfig: {
///         intervalInSeconds: 10,
///         path: "/testpath.aspx",
///         port: 80,
///         protocol: azure_native.trafficmanager.MonitorProtocol.HTTP,
///         timeoutInSeconds: 5,
///         toleratedNumberOfFailures: 2,
///     },
///     profileName: "parentprofile",
///     profileStatus: azure_native.trafficmanager.ProfileStatus.Enabled,
///     resourceGroupName: "myresourcegroup",
///     trafficRoutingMethod: azure_native.trafficmanager.TrafficRoutingMethod.Priority,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.trafficmanager.Profile("profile",
///     dns_config={
///         "relative_name": "parentprofile",
///         "ttl": 35,
///     },
///     endpoints=[
///         {
///             "endpoint_status": azure_native.trafficmanager.EndpointStatus.ENABLED,
///             "min_child_endpoints": 2,
///             "min_child_endpoints_i_pv4": 1,
///             "min_child_endpoints_i_pv6": 2,
///             "name": "MyFirstNestedEndpoint",
///             "priority": 1,
///             "target": "firstnestedprofile.tmpreview.watmtest.azure-test.net",
///             "type": "Microsoft.Network/trafficManagerProfiles/nestedEndpoints",
///             "weight": 1,
///         },
///         {
///             "endpoint_status": azure_native.trafficmanager.EndpointStatus.ENABLED,
///             "min_child_endpoints": 2,
///             "min_child_endpoints_i_pv4": 2,
///             "min_child_endpoints_i_pv6": 1,
///             "name": "MySecondNestedEndpoint",
///             "priority": 2,
///             "target": "secondnestedprofile.tmpreview.watmtest.azure-test.net",
///             "type": "Microsoft.Network/trafficManagerProfiles/nestedEndpoints",
///             "weight": 1,
///         },
///     ],
///     location="global",
///     monitor_config={
///         "interval_in_seconds": 10,
///         "path": "/testpath.aspx",
///         "port": 80,
///         "protocol": azure_native.trafficmanager.MonitorProtocol.HTTP,
///         "timeout_in_seconds": 5,
///         "tolerated_number_of_failures": 2,
///     },
///     profile_name="parentprofile",
///     profile_status=azure_native.trafficmanager.ProfileStatus.ENABLED,
///     resource_group_name="myresourcegroup",
///     traffic_routing_method=azure_native.trafficmanager.TrafficRoutingMethod.PRIORITY)
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:trafficmanager:Profile
///     properties:
///       dnsConfig:
///         relativeName: parentprofile
///         ttl: 35
///       endpoints:
///         - endpointStatus: Enabled
///           minChildEndpoints: 2
///           minChildEndpointsIPv4: 1
///           minChildEndpointsIPv6: 2
///           name: MyFirstNestedEndpoint
///           priority: 1
///           target: firstnestedprofile.tmpreview.watmtest.azure-test.net
///           type: Microsoft.Network/trafficManagerProfiles/nestedEndpoints
///           weight: 1
///         - endpointStatus: Enabled
///           minChildEndpoints: 2
///           minChildEndpointsIPv4: 2
///           minChildEndpointsIPv6: 1
///           name: MySecondNestedEndpoint
///           priority: 2
///           target: secondnestedprofile.tmpreview.watmtest.azure-test.net
///           type: Microsoft.Network/trafficManagerProfiles/nestedEndpoints
///           weight: 1
///       location: global
///       monitorConfig:
///         intervalInSeconds: 10
///         path: /testpath.aspx
///         port: 80
///         protocol: HTTP
///         timeoutInSeconds: 5
///         toleratedNumberOfFailures: 2
///       profileName: parentprofile
///       profileStatus: Enabled
///       resourceGroupName: myresourcegroup
///       trafficRoutingMethod: Priority
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
/// $ pulumi import azure-native:trafficmanager:Profile parentprofile /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}
/// ```
class Profile extends pulumi.CustomResource {
  /// The list of allowed endpoint record types.
  late final pulumi.Output<List<String>?> allowedEndpointRecordTypes;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The DNS settings of the Traffic Manager profile.
  late final pulumi.Output<DnsConfigResponse?> dnsConfig;

  /// The list of endpoints in the Traffic Manager profile.
  late final pulumi.Output<List<Map<String, dynamic>>?> endpoints;

  /// The Azure Region where the resource lives
  late final pulumi.Output<String?> location;

  /// Maximum number of endpoints to be returned for MultiValue routing type.
  late final pulumi.Output<double?> maxReturn;

  /// The endpoint monitoring settings of the Traffic Manager profile.
  late final pulumi.Output<MonitorConfigResponse?> monitorConfig;

  /// The name of the resource
  late final pulumi.Output<String?> name;

  /// The status of the Traffic Manager profile.
  late final pulumi.Output<String?> profileStatus;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The traffic routing method of the Traffic Manager profile.
  late final pulumi.Output<String?> trafficRoutingMethod;

  /// Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile.
  late final pulumi.Output<String?> trafficViewEnrollmentStatus;

  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  late final pulumi.Output<String?> type;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_trafficmanager_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:trafficmanager:Profile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedEndpointRecordTypes = registerOutput<List<String>?>(
      'allowedEndpointRecordTypes',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsConfig = registerOutput<DnsConfigResponse?>(
      'dnsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DnsConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    endpoints = registerOutput<List<Map<String, dynamic>>?>('endpoints');
    location = registerOutput<String?>('location');
    maxReturn = registerOutput<double?>('maxReturn');
    monitorConfig = registerOutput<MonitorConfigResponse?>(
      'monitorConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String?>('name');
    profileStatus = registerOutput<String?>('profileStatus');
    tags = registerOutput<Map<String, String>?>('tags');
    trafficRoutingMethod = registerOutput<String?>('trafficRoutingMethod');
    trafficViewEnrollmentStatus = registerOutput<String?>(
      'trafficViewEnrollmentStatus',
    );
    type = registerOutput<String?>('type');
  }
}
