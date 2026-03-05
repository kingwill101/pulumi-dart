import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_location_args.dart';
import 'named_location_country.dart';
import 'named_location_ip.dart';
import 'named_location_state.dart';

/// Manages a Named Location within Azure Active Directory.
///
/// &gt; **API Limits** This resource is subject to a restrictive API request limit of 1 request/second. Whilst Terraform will automatically back-off and retry throttled requests, if you have a large number of resource changes to make, you may wish to reduce parallelism or specify extended custom resource timeouts.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application roles: `Policy.ReadWrite.ConditionalAccess` and `Policy.Read.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Conditional Access Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example_ip = new azuread.NamedLocation("example-ip", {
///     displayName: "IP Named Location",
///     ip: {
///         ipRanges: [
///             "1.1.1.1/32",
///             "2.2.2.2/32",
///         ],
///         trusted: true,
///     },
/// });
/// const example_country = new azuread.NamedLocation("example-country", {
///     displayName: "Country Named Location",
///     country: {
///         countriesAndRegions: [
///             "GB",
///             "US",
///         ],
///         includeUnknownCountriesAndRegions: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example_ip = azuread.NamedLocation("example-ip",
///     display_name="IP Named Location",
///     ip={
///         "ip_ranges": [
///             "1.1.1.1/32",
///             "2.2.2.2/32",
///         ],
///         "trusted": True,
///     })
/// example_country = azuread.NamedLocation("example-country",
///     display_name="Country Named Location",
///     country={
///         "countries_and_regions": [
///             "GB",
///             "US",
///         ],
///         "include_unknown_countries_and_regions": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_ip = new AzureAD.NamedLocation("example-ip", new()
///     {
///         DisplayName = "IP Named Location",
///         Ip = new AzureAD.Inputs.NamedLocationIpArgs
///         {
///             IpRanges = new[]
///             {
///                 "1.1.1.1/32",
///                 "2.2.2.2/32",
///             },
///             Trusted = true,
///         },
///     });
///
///     var example_country = new AzureAD.NamedLocation("example-country", new()
///     {
///         DisplayName = "Country Named Location",
///         Country = new AzureAD.Inputs.NamedLocationCountryArgs
///         {
///             CountriesAndRegions = new[]
///             {
///                 "GB",
///                 "US",
///             },
///             IncludeUnknownCountriesAndRegions = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuread.NewNamedLocation(ctx, "example-ip", &azuread.NamedLocationArgs{
/// 			DisplayName: pulumi.String("IP Named Location"),
/// 			Ip: &azuread.NamedLocationIpArgs{
/// 				IpRanges: pulumi.StringArray{
/// 					pulumi.String("1.1.1.1/32"),
/// 					pulumi.String("2.2.2.2/32"),
/// 				},
/// 				Trusted: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewNamedLocation(ctx, "example-country", &azuread.NamedLocationArgs{
/// 			DisplayName: pulumi.String("Country Named Location"),
/// 			Country: &azuread.NamedLocationCountryArgs{
/// 				CountriesAndRegions: pulumi.StringArray{
/// 					pulumi.String("GB"),
/// 					pulumi.String("US"),
/// 				},
/// 				IncludeUnknownCountriesAndRegions: pulumi.Bool(false),
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
/// import com.pulumi.azuread.NamedLocation;
/// import com.pulumi.azuread.NamedLocationArgs;
/// import com.pulumi.azuread.inputs.NamedLocationIpArgs;
/// import com.pulumi.azuread.inputs.NamedLocationCountryArgs;
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
///         var example_ip = new NamedLocation("example-ip", NamedLocationArgs.builder()
///             .displayName("IP Named Location")
///             .ip(NamedLocationIpArgs.builder()
///                 .ipRanges(
///                     "1.1.1.1/32",
///                     "2.2.2.2/32")
///                 .trusted(true)
///                 .build())
///             .build());
///
///         var example_country = new NamedLocation("example-country", NamedLocationArgs.builder()
///             .displayName("Country Named Location")
///             .country(NamedLocationCountryArgs.builder()
///                 .countriesAndRegions(
///                     "GB",
///                     "US")
///                 .includeUnknownCountriesAndRegions(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-ip:
///     type: azuread:NamedLocation
///     properties:
///       displayName: IP Named Location
///       ip:
///         ipRanges:
///           - 1.1.1.1/32
///           - 2.2.2.2/32
///         trusted: true
///   example-country:
///     type: azuread:NamedLocation
///     properties:
///       displayName: Country Named Location
///       country:
///         countriesAndRegions:
///           - GB
///           - US
///         includeUnknownCountriesAndRegions: false
/// ```
///
///
/// ## Import
///
/// Named Locations can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/namedLocation:NamedLocation my_location /identity/conditionalAccess/namedLocations/00000000-0000-0000-0000-000000000000
/// ```
class NamedLocation extends pulumi.CustomResource {
  /// A `country` block as documented below, which configures a country-based named location.
  late final pulumi.Output<NamedLocationCountry?> country;
  /// The friendly name for this named location.
  late final pulumi.Output<String> displayName;
  /// An `ip` block as documented below, which configures an IP-based named location.
  ///
  /// &gt; Exactly one of `ip` or `country` must be specified. Changing between these forces a new resource to be created.
  late final pulumi.Output<NamedLocationIp?> ip;
  /// The object ID of the named location.
  late final pulumi.Output<String> objectId;

  /// Creates a new [NamedLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamedLocation]. {@macro pulumi_index_named_location_named_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamedLocation(
    String name, {
    NamedLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/namedLocation:NamedLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    country = registerOutput<NamedLocationCountry?>('country', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedLocationCountry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    ip = registerOutput<NamedLocationIp?>('ip', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedLocationIp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    objectId = registerOutput<String>('objectId');
  }

  /// Gets an existing [NamedLocation] resource's state with the given [name] and [id].
  static NamedLocation get(
    String name,
    pulumi.Input<String> id, {
    NamedLocationState? state,
  }) {
    return NamedLocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NamedLocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/namedLocation:NamedLocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    country = registerOutput<NamedLocationCountry?>('country', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedLocationCountry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    ip = registerOutput<NamedLocationIp?>('ip', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedLocationIp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    objectId = registerOutput<String>('objectId');
  }
}
