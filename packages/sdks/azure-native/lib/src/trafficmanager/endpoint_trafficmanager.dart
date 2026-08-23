import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';

/// Class representing a Traffic Manager endpoint.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2015-11-01, 2017-03-01, 2017-05-01, 2018-02-01, 2018-03-01, 2018-04-01, 2018-08-01, 2022-04-01-preview, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native trafficmanager [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Endpoint-PUT-External-WithAlwaysServe
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.TrafficManager.Endpoint("endpoint", new()
///     {
///         AlwaysServe = AzureNative.TrafficManager.AlwaysServe.Enabled,
///         EndpointLocation = "North Europe",
///         EndpointName = "azsmnet7187",
///         EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///         EndpointType = "ExternalEndpoints",
///         Name = "azsmnet7187",
///         ProfileName = "azsmnet6386",
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager1421",
///         Target = "foobar.contoso.com",
///         Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
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
/// 		_, err := trafficmanager.NewEndpoint(ctx, "endpoint", &trafficmanager.EndpointArgs{
/// 			AlwaysServe:       pulumi.String(trafficmanager.AlwaysServeEnabled),
/// 			EndpointLocation:  pulumi.String("North Europe"),
/// 			EndpointName:      pulumi.String("azsmnet7187"),
/// 			EndpointStatus:    pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 			EndpointType:      pulumi.String("ExternalEndpoints"),
/// 			Name:              pulumi.String("azsmnet7187"),
/// 			ProfileName:       pulumi.String("azsmnet6386"),
/// 			ResourceGroupName: pulumi.String("azuresdkfornetautoresttrafficmanager1421"),
/// 			Target:            pulumi.String("foobar.contoso.com"),
/// 			Type:              pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_trafficmanager_endpoint" "endpoint" {
///   always_serve        = "Enabled"
///   endpoint_location   = "North Europe"
///   endpoint_name       = "azsmnet7187"
///   endpoint_status     = "Enabled"
///   endpoint_type       = "ExternalEndpoints"
///   name                = "azsmnet7187"
///   profile_name        = "azsmnet6386"
///   resource_group_name = "azuresdkfornetautoresttrafficmanager1421"
///   target              = "foobar.contoso.com"
///   type                = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"
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
/// import com.pulumi.azurenative.trafficmanager.Endpoint;
/// import com.pulumi.azurenative.trafficmanager.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .alwaysServe("Enabled")
///             .endpointLocation("North Europe")
///             .endpointName("azsmnet7187")
///             .endpointStatus("Enabled")
///             .endpointType("ExternalEndpoints")
///             .name("azsmnet7187")
///             .profileName("azsmnet6386")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager1421")
///             .target("foobar.contoso.com")
///             .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
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
/// const endpoint = new azure_native.trafficmanager.Endpoint("endpoint", {
///     alwaysServe: azure_native.trafficmanager.AlwaysServe.Enabled,
///     endpointLocation: "North Europe",
///     endpointName: "azsmnet7187",
///     endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///     endpointType: "ExternalEndpoints",
///     name: "azsmnet7187",
///     profileName: "azsmnet6386",
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager1421",
///     target: "foobar.contoso.com",
///     type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.trafficmanager.Endpoint("endpoint",
///     always_serve=azure_native.trafficmanager.AlwaysServe.ENABLED,
///     endpoint_location="North Europe",
///     endpoint_name="azsmnet7187",
///     endpoint_status=azure_native.trafficmanager.EndpointStatus.ENABLED,
///     endpoint_type="ExternalEndpoints",
///     name="azsmnet7187",
///     profile_name="azsmnet6386",
///     resource_group_name="azuresdkfornetautoresttrafficmanager1421",
///     target="foobar.contoso.com",
///     type="Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:trafficmanager:Endpoint
///     properties:
///       alwaysServe: Enabled
///       endpointLocation: North Europe
///       endpointName: azsmnet7187
///       endpointStatus: Enabled
///       endpointType: ExternalEndpoints
///       name: azsmnet7187
///       profileName: azsmnet6386
///       resourceGroupName: azuresdkfornetautoresttrafficmanager1421
///       target: foobar.contoso.com
///       type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoint-PUT-External-WithCustomHeaders
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.TrafficManager.Endpoint("endpoint", new()
///     {
///         CustomHeaders = new[]
///         {
///             new AzureNative.TrafficManager.Inputs.EndpointPropertiesCustomHeadersItemArgs
///             {
///                 Name = "header-1",
///                 Value = "value-1",
///             },
///             new AzureNative.TrafficManager.Inputs.EndpointPropertiesCustomHeadersItemArgs
///             {
///                 Name = "header-2",
///                 Value = "value-2",
///             },
///         },
///         EndpointLocation = "North Europe",
///         EndpointName = "azsmnet7187",
///         EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///         EndpointType = "ExternalEndpoints",
///         Name = "azsmnet7187",
///         ProfileName = "azsmnet6386",
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager1421",
///         Target = "foobar.contoso.com",
///         Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
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
/// 		_, err := trafficmanager.NewEndpoint(ctx, "endpoint", &trafficmanager.EndpointArgs{
/// 			CustomHeaders: trafficmanager.EndpointPropertiesCustomHeadersItemArray{
/// 				&trafficmanager.EndpointPropertiesCustomHeadersItemArgs{
/// 					Name:  pulumi.String("header-1"),
/// 					Value: pulumi.String("value-1"),
/// 				},
/// 				&trafficmanager.EndpointPropertiesCustomHeadersItemArgs{
/// 					Name:  pulumi.String("header-2"),
/// 					Value: pulumi.String("value-2"),
/// 				},
/// 			},
/// 			EndpointLocation:  pulumi.String("North Europe"),
/// 			EndpointName:      pulumi.String("azsmnet7187"),
/// 			EndpointStatus:    pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 			EndpointType:      pulumi.String("ExternalEndpoints"),
/// 			Name:              pulumi.String("azsmnet7187"),
/// 			ProfileName:       pulumi.String("azsmnet6386"),
/// 			ResourceGroupName: pulumi.String("azuresdkfornetautoresttrafficmanager1421"),
/// 			Target:            pulumi.String("foobar.contoso.com"),
/// 			Type:              pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_trafficmanager_endpoint" "endpoint" {
///   custom_headers {
///     name  = "header-1"
///     value = "value-1"
///   }
///   custom_headers {
///     name  = "header-2"
///     value = "value-2"
///   }
///   endpoint_location   = "North Europe"
///   endpoint_name       = "azsmnet7187"
///   endpoint_status     = "Enabled"
///   endpoint_type       = "ExternalEndpoints"
///   name                = "azsmnet7187"
///   profile_name        = "azsmnet6386"
///   resource_group_name = "azuresdkfornetautoresttrafficmanager1421"
///   target              = "foobar.contoso.com"
///   type                = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"
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
/// import com.pulumi.azurenative.trafficmanager.Endpoint;
/// import com.pulumi.azurenative.trafficmanager.EndpointArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.EndpointPropertiesCustomHeadersItemArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .customHeaders(
///                 EndpointPropertiesCustomHeadersItemArgs.builder()
///                     .name("header-1")
///                     .value("value-1")
///                     .build(),
///                 EndpointPropertiesCustomHeadersItemArgs.builder()
///                     .name("header-2")
///                     .value("value-2")
///                     .build())
///             .endpointLocation("North Europe")
///             .endpointName("azsmnet7187")
///             .endpointStatus("Enabled")
///             .endpointType("ExternalEndpoints")
///             .name("azsmnet7187")
///             .profileName("azsmnet6386")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager1421")
///             .target("foobar.contoso.com")
///             .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
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
/// const endpoint = new azure_native.trafficmanager.Endpoint("endpoint", {
///     customHeaders: [
///         {
///             name: "header-1",
///             value: "value-1",
///         },
///         {
///             name: "header-2",
///             value: "value-2",
///         },
///     ],
///     endpointLocation: "North Europe",
///     endpointName: "azsmnet7187",
///     endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///     endpointType: "ExternalEndpoints",
///     name: "azsmnet7187",
///     profileName: "azsmnet6386",
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager1421",
///     target: "foobar.contoso.com",
///     type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.trafficmanager.Endpoint("endpoint",
///     custom_headers=[
///         {
///             "name": "header-1",
///             "value": "value-1",
///         },
///         {
///             "name": "header-2",
///             "value": "value-2",
///         },
///     ],
///     endpoint_location="North Europe",
///     endpoint_name="azsmnet7187",
///     endpoint_status=azure_native.trafficmanager.EndpointStatus.ENABLED,
///     endpoint_type="ExternalEndpoints",
///     name="azsmnet7187",
///     profile_name="azsmnet6386",
///     resource_group_name="azuresdkfornetautoresttrafficmanager1421",
///     target="foobar.contoso.com",
///     type="Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:trafficmanager:Endpoint
///     properties:
///       customHeaders:
///         - name: header-1
///           value: value-1
///         - name: header-2
///           value: value-2
///       endpointLocation: North Europe
///       endpointName: azsmnet7187
///       endpointStatus: Enabled
///       endpointType: ExternalEndpoints
///       name: azsmnet7187
///       profileName: azsmnet6386
///       resourceGroupName: azuresdkfornetautoresttrafficmanager1421
///       target: foobar.contoso.com
///       type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoint-PUT-External-WithGeoMapping
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.TrafficManager.Endpoint("endpoint", new()
///     {
///         EndpointName = "My%20external%20endpoint",
///         EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///         EndpointType = "ExternalEndpoints",
///         GeoMapping = new[]
///         {
///             "GEO-AS",
///             "GEO-AF",
///         },
///         Name = "My external endpoint",
///         ProfileName = "azuresdkfornetautoresttrafficmanager8224",
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager2191",
///         Target = "foobar.contoso.com",
///         Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
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
/// 		_, err := trafficmanager.NewEndpoint(ctx, "endpoint", &trafficmanager.EndpointArgs{
/// 			EndpointName:   pulumi.String("My%20external%20endpoint"),
/// 			EndpointStatus: pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 			EndpointType:   pulumi.String("ExternalEndpoints"),
/// 			GeoMapping: pulumi.StringArray{
/// 				pulumi.String("GEO-AS"),
/// 				pulumi.String("GEO-AF"),
/// 			},
/// 			Name:              pulumi.String("My external endpoint"),
/// 			ProfileName:       pulumi.String("azuresdkfornetautoresttrafficmanager8224"),
/// 			ResourceGroupName: pulumi.String("azuresdkfornetautoresttrafficmanager2191"),
/// 			Target:            pulumi.String("foobar.contoso.com"),
/// 			Type:              pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_trafficmanager_endpoint" "endpoint" {
///   endpoint_name       = "My%20external%20endpoint"
///   endpoint_status     = "Enabled"
///   endpoint_type       = "ExternalEndpoints"
///   geo_mapping         = ["GEO-AS", "GEO-AF"]
///   name                = "My external endpoint"
///   profile_name        = "azuresdkfornetautoresttrafficmanager8224"
///   resource_group_name = "azuresdkfornetautoresttrafficmanager2191"
///   target              = "foobar.contoso.com"
///   type                = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"
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
/// import com.pulumi.azurenative.trafficmanager.Endpoint;
/// import com.pulumi.azurenative.trafficmanager.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointName("My%20external%20endpoint")
///             .endpointStatus("Enabled")
///             .endpointType("ExternalEndpoints")
///             .geoMapping(
///                 "GEO-AS",
///                 "GEO-AF")
///             .name("My external endpoint")
///             .profileName("azuresdkfornetautoresttrafficmanager8224")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager2191")
///             .target("foobar.contoso.com")
///             .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
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
/// const endpoint = new azure_native.trafficmanager.Endpoint("endpoint", {
///     endpointName: "My%20external%20endpoint",
///     endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///     endpointType: "ExternalEndpoints",
///     geoMapping: [
///         "GEO-AS",
///         "GEO-AF",
///     ],
///     name: "My external endpoint",
///     profileName: "azuresdkfornetautoresttrafficmanager8224",
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager2191",
///     target: "foobar.contoso.com",
///     type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.trafficmanager.Endpoint("endpoint",
///     endpoint_name="My%20external%20endpoint",
///     endpoint_status=azure_native.trafficmanager.EndpointStatus.ENABLED,
///     endpoint_type="ExternalEndpoints",
///     geo_mapping=[
///         "GEO-AS",
///         "GEO-AF",
///     ],
///     name="My external endpoint",
///     profile_name="azuresdkfornetautoresttrafficmanager8224",
///     resource_group_name="azuresdkfornetautoresttrafficmanager2191",
///     target="foobar.contoso.com",
///     type="Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:trafficmanager:Endpoint
///     properties:
///       endpointName: My%20external%20endpoint
///       endpointStatus: Enabled
///       endpointType: ExternalEndpoints
///       geoMapping:
///         - GEO-AS
///         - GEO-AF
///       name: My external endpoint
///       profileName: azuresdkfornetautoresttrafficmanager8224
///       resourceGroupName: azuresdkfornetautoresttrafficmanager2191
///       target: foobar.contoso.com
///       type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoint-PUT-External-WithLocation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.TrafficManager.Endpoint("endpoint", new()
///     {
///         EndpointLocation = "North Europe",
///         EndpointName = "azsmnet7187",
///         EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///         EndpointType = "ExternalEndpoints",
///         Name = "azsmnet7187",
///         ProfileName = "azsmnet6386",
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager1421",
///         Target = "foobar.contoso.com",
///         Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
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
/// 		_, err := trafficmanager.NewEndpoint(ctx, "endpoint", &trafficmanager.EndpointArgs{
/// 			EndpointLocation:  pulumi.String("North Europe"),
/// 			EndpointName:      pulumi.String("azsmnet7187"),
/// 			EndpointStatus:    pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 			EndpointType:      pulumi.String("ExternalEndpoints"),
/// 			Name:              pulumi.String("azsmnet7187"),
/// 			ProfileName:       pulumi.String("azsmnet6386"),
/// 			ResourceGroupName: pulumi.String("azuresdkfornetautoresttrafficmanager1421"),
/// 			Target:            pulumi.String("foobar.contoso.com"),
/// 			Type:              pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_trafficmanager_endpoint" "endpoint" {
///   endpoint_location   = "North Europe"
///   endpoint_name       = "azsmnet7187"
///   endpoint_status     = "Enabled"
///   endpoint_type       = "ExternalEndpoints"
///   name                = "azsmnet7187"
///   profile_name        = "azsmnet6386"
///   resource_group_name = "azuresdkfornetautoresttrafficmanager1421"
///   target              = "foobar.contoso.com"
///   type                = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"
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
/// import com.pulumi.azurenative.trafficmanager.Endpoint;
/// import com.pulumi.azurenative.trafficmanager.EndpointArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointLocation("North Europe")
///             .endpointName("azsmnet7187")
///             .endpointStatus("Enabled")
///             .endpointType("ExternalEndpoints")
///             .name("azsmnet7187")
///             .profileName("azsmnet6386")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager1421")
///             .target("foobar.contoso.com")
///             .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
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
/// const endpoint = new azure_native.trafficmanager.Endpoint("endpoint", {
///     endpointLocation: "North Europe",
///     endpointName: "azsmnet7187",
///     endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///     endpointType: "ExternalEndpoints",
///     name: "azsmnet7187",
///     profileName: "azsmnet6386",
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager1421",
///     target: "foobar.contoso.com",
///     type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.trafficmanager.Endpoint("endpoint",
///     endpoint_location="North Europe",
///     endpoint_name="azsmnet7187",
///     endpoint_status=azure_native.trafficmanager.EndpointStatus.ENABLED,
///     endpoint_type="ExternalEndpoints",
///     name="azsmnet7187",
///     profile_name="azsmnet6386",
///     resource_group_name="azuresdkfornetautoresttrafficmanager1421",
///     target="foobar.contoso.com",
///     type="Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:trafficmanager:Endpoint
///     properties:
///       endpointLocation: North Europe
///       endpointName: azsmnet7187
///       endpointStatus: Enabled
///       endpointType: ExternalEndpoints
///       name: azsmnet7187
///       profileName: azsmnet6386
///       resourceGroupName: azuresdkfornetautoresttrafficmanager1421
///       target: foobar.contoso.com
///       type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Endpoint-PUT-External-WithSubnetMapping
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.TrafficManager.Endpoint("endpoint", new()
///     {
///         EndpointName = "My%20external%20endpoint",
///         EndpointStatus = AzureNative.TrafficManager.EndpointStatus.Enabled,
///         EndpointType = "ExternalEndpoints",
///         Name = "My external endpoint",
///         ProfileName = "azuresdkfornetautoresttrafficmanager8224",
///         ResourceGroupName = "azuresdkfornetautoresttrafficmanager2191",
///         Subnets = new[]
///         {
///             new AzureNative.TrafficManager.Inputs.EndpointPropertiesSubnetsItemArgs
///             {
///                 First = "1.2.3.0",
///                 Scope = 24,
///             },
///             new AzureNative.TrafficManager.Inputs.EndpointPropertiesSubnetsItemArgs
///             {
///                 First = "25.26.27.28",
///                 Last = "29.30.31.32",
///             },
///         },
///         Target = "foobar.contoso.com",
///         Type = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
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
/// 		_, err := trafficmanager.NewEndpoint(ctx, "endpoint", &trafficmanager.EndpointArgs{
/// 			EndpointName:      pulumi.String("My%20external%20endpoint"),
/// 			EndpointStatus:    pulumi.String(trafficmanager.EndpointStatusEnabled),
/// 			EndpointType:      pulumi.String("ExternalEndpoints"),
/// 			Name:              pulumi.String("My external endpoint"),
/// 			ProfileName:       pulumi.String("azuresdkfornetautoresttrafficmanager8224"),
/// 			ResourceGroupName: pulumi.String("azuresdkfornetautoresttrafficmanager2191"),
/// 			Subnets: trafficmanager.EndpointPropertiesSubnetsItemArray{
/// 				&trafficmanager.EndpointPropertiesSubnetsItemArgs{
/// 					First: pulumi.String("1.2.3.0"),
/// 					Scope: pulumi.Int(24),
/// 				},
/// 				&trafficmanager.EndpointPropertiesSubnetsItemArgs{
/// 					First: pulumi.String("25.26.27.28"),
/// 					Last:  pulumi.String("29.30.31.32"),
/// 				},
/// 			},
/// 			Target: pulumi.String("foobar.contoso.com"),
/// 			Type:   pulumi.String("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_trafficmanager_endpoint" "endpoint" {
///   endpoint_name       = "My%20external%20endpoint"
///   endpoint_status     = "Enabled"
///   endpoint_type       = "ExternalEndpoints"
///   name                = "My external endpoint"
///   profile_name        = "azuresdkfornetautoresttrafficmanager8224"
///   resource_group_name = "azuresdkfornetautoresttrafficmanager2191"
///   subnets {
///     first = "1.2.3.0"
///     scope = 24
///   }
///   subnets {
///     first = "25.26.27.28"
///     last  = "29.30.31.32"
///   }
///   target = "foobar.contoso.com"
///   type   = "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints"
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
/// import com.pulumi.azurenative.trafficmanager.Endpoint;
/// import com.pulumi.azurenative.trafficmanager.EndpointArgs;
/// import com.pulumi.azurenative.trafficmanager.inputs.EndpointPropertiesSubnetsItemArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .endpointName("My%20external%20endpoint")
///             .endpointStatus("Enabled")
///             .endpointType("ExternalEndpoints")
///             .name("My external endpoint")
///             .profileName("azuresdkfornetautoresttrafficmanager8224")
///             .resourceGroupName("azuresdkfornetautoresttrafficmanager2191")
///             .subnets(
///                 EndpointPropertiesSubnetsItemArgs.builder()
///                     .first("1.2.3.0")
///                     .scope(24)
///                     .build(),
///                 EndpointPropertiesSubnetsItemArgs.builder()
///                     .first("25.26.27.28")
///                     .last("29.30.31.32")
///                     .build())
///             .target("foobar.contoso.com")
///             .type("Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
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
/// const endpoint = new azure_native.trafficmanager.Endpoint("endpoint", {
///     endpointName: "My%20external%20endpoint",
///     endpointStatus: azure_native.trafficmanager.EndpointStatus.Enabled,
///     endpointType: "ExternalEndpoints",
///     name: "My external endpoint",
///     profileName: "azuresdkfornetautoresttrafficmanager8224",
///     resourceGroupName: "azuresdkfornetautoresttrafficmanager2191",
///     subnets: [
///         {
///             first: "1.2.3.0",
///             scope: 24,
///         },
///         {
///             first: "25.26.27.28",
///             last: "29.30.31.32",
///         },
///     ],
///     target: "foobar.contoso.com",
///     type: "Microsoft.network/TrafficManagerProfiles/ExternalEndpoints",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.trafficmanager.Endpoint("endpoint",
///     endpoint_name="My%20external%20endpoint",
///     endpoint_status=azure_native.trafficmanager.EndpointStatus.ENABLED,
///     endpoint_type="ExternalEndpoints",
///     name="My external endpoint",
///     profile_name="azuresdkfornetautoresttrafficmanager8224",
///     resource_group_name="azuresdkfornetautoresttrafficmanager2191",
///     subnets=[
///         {
///             "first": "1.2.3.0",
///             "scope": 24,
///         },
///         {
///             "first": "25.26.27.28",
///             "last": "29.30.31.32",
///         },
///     ],
///     target="foobar.contoso.com",
///     type="Microsoft.network/TrafficManagerProfiles/ExternalEndpoints")
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:trafficmanager:Endpoint
///     properties:
///       endpointName: My%20external%20endpoint
///       endpointStatus: Enabled
///       endpointType: ExternalEndpoints
///       name: My external endpoint
///       profileName: azuresdkfornetautoresttrafficmanager8224
///       resourceGroupName: azuresdkfornetautoresttrafficmanager2191
///       subnets:
///         - first: 1.2.3.0
///           scope: 24
///         - first: 25.26.27.28
///           last: 29.30.31.32
///       target: foobar.contoso.com
///       type: Microsoft.network/TrafficManagerProfiles/ExternalEndpoints
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
/// $ pulumi import azure-native:trafficmanager:Endpoint My external endpoint /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}/{endpointType}/{endpointName}
/// ```
class EndpointTrafficmanager extends pulumi.CustomResource {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  late final pulumi.Output<String?> alwaysServe;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of custom headers.
  late final pulumi.Output<List<Map<String, dynamic>>?> customHeaders;
  /// Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
  late final pulumi.Output<String?> endpointLocation;
  /// The monitoring status of the endpoint.
  late final pulumi.Output<String?> endpointMonitorStatus;
  /// The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
  late final pulumi.Output<String?> endpointStatus;
  /// The list of countries/regions mapped to this endpoint when using the 'Geographic' traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values.
  late final pulumi.Output<List<String>?> geoMapping;
  /// The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  late final pulumi.Output<double?> minChildEndpoints;
  /// The minimum number of IPv4 (DNS record type A) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  late final pulumi.Output<double?> minChildEndpointsIPv4;
  /// The minimum number of IPv6 (DNS record type AAAA) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  late final pulumi.Output<double?> minChildEndpointsIPv6;
  /// The name of the resource
  late final pulumi.Output<String?> name;
  /// The priority of this endpoint when using the 'Priority' traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value.
  late final pulumi.Output<double?> priority;
  /// The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>?> subnets;
  /// The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint.
  late final pulumi.Output<String?> target;
  /// The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'.
  late final pulumi.Output<String?> targetResourceId;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  late final pulumi.Output<String?> type;
  /// The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000.
  late final pulumi.Output<double?> weight;

  /// Creates a new [EndpointTrafficmanager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointTrafficmanager]. {@macro pulumi_trafficmanager_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointTrafficmanager(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:trafficmanager:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alwaysServe = registerOutput<String?>('alwaysServe');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customHeaders = registerOutput<List<Map<String, dynamic>>?>('customHeaders');
    endpointLocation = registerOutput<String?>('endpointLocation');
    endpointMonitorStatus = registerOutput<String?>('endpointMonitorStatus');
    endpointStatus = registerOutput<String?>('endpointStatus');
    geoMapping = registerOutput<List<String>?>('geoMapping');
    minChildEndpoints = registerOutput<double?>('minChildEndpoints');
    minChildEndpointsIPv4 = registerOutput<double?>('minChildEndpointsIPv4');
    minChildEndpointsIPv6 = registerOutput<double?>('minChildEndpointsIPv6');
    this.name = registerOutput<String?>('name');
    priority = registerOutput<double?>('priority');
    subnets = registerOutput<List<Map<String, dynamic>>?>('subnets');
    target = registerOutput<String?>('target');
    targetResourceId = registerOutput<String?>('targetResourceId');
    type = registerOutput<String?>('type');
    weight = registerOutput<double?>('weight');
  }
}
