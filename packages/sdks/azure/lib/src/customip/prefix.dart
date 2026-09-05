import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_args.dart';
import 'prefix_state.dart';

/// Manages a custom IPv4 prefix or custom IPv6 prefix.
///
/// ## Example Usage
///
/// *IPv4 custom prefix*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const examplePrefix = new azure.customip.Prefix("example", {
///     name: "example-CustomIPPrefix",
///     location: example.location,
///     resourceGroupName: example.name,
///     cidr: "1.2.3.4/22",
///     zones: [
///         "1",
///         "2",
///         "3",
///     ],
///     commissioningEnabled: true,
///     roaValidityEndDate: "2099-12-12",
///     wanValidationSignedMessage: "signed message for WAN validation",
///     tags: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_prefix = azure.customip.Prefix("example",
///     name="example-CustomIPPrefix",
///     location=example.location,
///     resource_group_name=example.name,
///     cidr="1.2.3.4/22",
///     zones=[
///         "1",
///         "2",
///         "3",
///     ],
///     commissioning_enabled=True,
///     roa_validity_end_date="2099-12-12",
///     wan_validation_signed_message="signed message for WAN validation",
///     tags={
///         "env": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var examplePrefix = new Azure.CustomIp.Prefix("example", new()
///     {
///         Name = "example-CustomIPPrefix",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Cidr = "1.2.3.4/22",
///         Zones = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///         CommissioningEnabled = true,
///         RoaValidityEndDate = "2099-12-12",
///         WanValidationSignedMessage = "signed message for WAN validation",
///         Tags =
///         {
///             { "env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/customip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = customip.NewPrefix(ctx, "example", &customip.PrefixArgs{
/// 			Name:              pulumi.String("example-CustomIPPrefix"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Cidr:              pulumi.String("1.2.3.4/22"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 			},
/// 			CommissioningEnabled:       pulumi.Bool(true),
/// 			RoaValidityEndDate:         pulumi.String("2099-12-12"),
/// 			WanValidationSignedMessage: pulumi.String("signed message for WAN validation"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_customip_prefix" "example" {
///   name                          = "example-CustomIPPrefix"
///   location                      = azure_core_resourcegroup.example.location
///   resource_group_name           = azure_core_resourcegroup.example.name
///   cidr                          = "1.2.3.4/22"
///   zones                         = ["1", "2", "3"]
///   commissioning_enabled         = true
///   roa_validity_end_date         = "2099-12-12"
///   wan_validation_signed_message = "signed message for WAN validation"
///   tags = {
///     "env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.customip.Prefix;
/// import com.pulumi.azure.customip.PrefixArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var examplePrefix = new Prefix("examplePrefix", PrefixArgs.builder()
///             .name("example-CustomIPPrefix")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .cidr("1.2.3.4/22")
///             .zones(
///                 "1",
///                 "2",
///                 "3")
///             .commissioningEnabled(true)
///             .roaValidityEndDate("2099-12-12")
///             .wanValidationSignedMessage("signed message for WAN validation")
///             .tags(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   examplePrefix:
///     type: azure:customip:Prefix
///     name: example
///     properties:
///       name: example-CustomIPPrefix
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       cidr: 1.2.3.4/22
///       zones:
///         - '1'
///         - '2'
///         - '3'
///       commissioningEnabled: true
///       roaValidityEndDate: 2099-12-12
///       wanValidationSignedMessage: signed message for WAN validation
///       tags:
///         env: test
/// ```
///
///
/// *IPv6 custom prefix*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const global = new azure.customip.Prefix("global", {
///     name: "example-Global-CustomIPPrefix",
///     location: test.location,
///     resourceGroupName: test.name,
///     cidr: "2001:db8:1::/48",
///     roaValidityEndDate: "2199-12-12",
///     wanValidationSignedMessage: "signed message for WAN validation",
/// });
/// const regional = new azure.customip.Prefix("regional", {
///     name: "example-Regional-CustomIPPrefix",
///     location: test.location,
///     resourceGroupName: test.name,
///     parentCustomIpPrefixId: global.id,
///     cidr: std.cidrsubnetOutput({
///         input: global.cidr,
///         newbits: 16,
///         netnum: 1,
///     }).result,
///     zones: ["1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// global_ = azure.customip.Prefix("global",
///     name="example-Global-CustomIPPrefix",
///     location=test["location"],
///     resource_group_name=test["name"],
///     cidr="2001:db8:1::/48",
///     roa_validity_end_date="2199-12-12",
///     wan_validation_signed_message="signed message for WAN validation")
/// regional = azure.customip.Prefix("regional",
///     name="example-Regional-CustomIPPrefix",
///     location=test["location"],
///     resource_group_name=test["name"],
///     parent_custom_ip_prefix_id=global_.id,
///     cidr=std.cidrsubnet_output(input=global_.cidr,
///         newbits=16,
///         netnum=1).result,
///     zones=["1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var @global = new Azure.CustomIp.Prefix("global", new()
///     {
///         Name = "example-Global-CustomIPPrefix",
///         Location = test.Location,
///         ResourceGroupName = test.Name,
///         Cidr = "2001:db8:1::/48",
///         RoaValidityEndDate = "2199-12-12",
///         WanValidationSignedMessage = "signed message for WAN validation",
///     });
///
///     var regional = new Azure.CustomIp.Prefix("regional", new()
///     {
///         Name = "example-Regional-CustomIPPrefix",
///         Location = test.Location,
///         ResourceGroupName = test.Name,
///         ParentCustomIpPrefixId = @global.Id,
///         Cidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = @global.Cidr,
///             Newbits = 16,
///             Netnum = 1,
///         }).Apply(invoke => invoke.Result),
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/customip"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		global, err := customip.NewPrefix(ctx, "global", &customip.PrefixArgs{
/// 			Name:                       pulumi.String("example-Global-CustomIPPrefix"),
/// 			Location:                   pulumi.Any(test.Location),
/// 			ResourceGroupName:          pulumi.Any(test.Name),
/// 			Cidr:                       pulumi.String("2001:db8:1::/48"),
/// 			RoaValidityEndDate:         pulumi.String("2199-12-12"),
/// 			WanValidationSignedMessage: pulumi.String("signed message for WAN validation"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = customip.NewPrefix(ctx, "regional", &customip.PrefixArgs{
/// 			Name:                   pulumi.String("example-Regional-CustomIPPrefix"),
/// 			Location:               pulumi.Any(test.Location),
/// 			ResourceGroupName:      pulumi.Any(test.Name),
/// 			ParentCustomIpPrefixId: global.ID().ToIDOutput().ToStringOutput(),
/// 			Cidr: std.CidrsubnetOutput(ctx, std.CidrsubnetOutputArgs{
/// 				Input:   global.Cidr,
/// 				Newbits: pulumi.Int(16),
/// 				Netnum:  pulumi.Int(1),
/// 			}, nil).Result(),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_customip_prefix" "global" {
///   name                          = "example-Global-CustomIPPrefix"
///   location                      = test.location
///   resource_group_name           = test.name
///   cidr                          = "2001:db8:1::/48"
///   roa_validity_end_date         = "2199-12-12"
///   wan_validation_signed_message = "signed message for WAN validation"
/// }
/// resource "azure_customip_prefix" "regional" {
///   name                       = "example-Regional-CustomIPPrefix"
///   location                   = test.location
///   resource_group_name        = test.name
///   parent_custom_ip_prefix_id = azure_customip_prefix.global.id
///   cidr                       = cidrsubnet(azure_customip_prefix.global.cidr, 16, 1)
///   zones                      = ["1"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.customip.Prefix;
/// import com.pulumi.azure.customip.PrefixArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var global = new Prefix("global", PrefixArgs.builder()
///             .name("example-Global-CustomIPPrefix")
///             .location(test.location())
///             .resourceGroupName(test.name())
///             .cidr("2001:db8:1::/48")
///             .roaValidityEndDate("2199-12-12")
///             .wanValidationSignedMessage("signed message for WAN validation")
///             .build());
///
///         var regional = new Prefix("regional", PrefixArgs.builder()
///             .name("example-Regional-CustomIPPrefix")
///             .location(test.location())
///             .resourceGroupName(test.name())
///             .parentCustomIpPrefixId(global.id())
///             .cidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(global.cidr())
///                 .newbits(16)
///                 .netnum(1)
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .zones("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   global:
///     type: azure:customip:Prefix
///     properties:
///       name: example-Global-CustomIPPrefix
///       location: ${test.location}
///       resourceGroupName: ${test.name}
///       cidr: 2001:db8:1::/48
///       roaValidityEndDate: 2199-12-12
///       wanValidationSignedMessage: signed message for WAN validation
///   regional:
///     type: azure:customip:Prefix
///     properties:
///       name: example-Regional-CustomIPPrefix
///       location: ${test.location}
///       resourceGroupName: ${test.name}
///       parentCustomIpPrefixId: ${global.id}
///       cidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: ${global.cidr}
///             newbits: 16
///             netnum: 1
///           return: result
///       zones:
///         - '1'
/// ```
///
///
/// ## Import
///
/// A Custom IP Prefix can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:customip/prefix:Prefix example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/customIPPrefixes/customIPPrefix1
/// ```
class Prefix extends pulumi.CustomResource {
  /// The `cidr` of the Custom IP Prefix, either IPv4 or IPv6. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cidr;
  /// Specifies that the custom IP prefix should be commissioned after provisioning in Azure. Defaults to `false`.
  ///
  /// &gt; **Note:** Changing the value of `commissioningEnabled` from `true` to `false` causes the IP prefix to stop being advertised by Azure and is functionally equivalent to deleting it when used in a production setting.
  late final pulumi.Output<bool?> commissioningEnabled;
  /// Specifies that the custom IP prefix should not be publicly advertised on the Internet when commissioned (regional commissioning feature). Defaults to `false`.
  ///
  /// &gt; **Note:** Changing the value of `internetAdvertisingDisabled` from `true` to `false` causes the IP prefix to stop being advertised by Azure and is functionally equivalent to deleting it when used in a production setting.
  late final pulumi.Output<bool?> internetAdvertisingDisabled;
  /// The location where the Custom IP Prefix should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Custom IP Prefix. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the parent prefix. Only needed when creating a regional/child IPv6 prefix. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> parentCustomIpPrefixId;
  /// The name of the Resource Group in which to create the Custom IP Prefix. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The expiration date of the Route Origin Authorization (ROA) document which has been filed with the Routing Internet Registry (RIR) for this prefix. The expected format is `YYYY-MM-DD`. Required when provisioning an IPv4 prefix or IPv6 global prefix. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> roaValidityEndDate;
  /// A mapping of tags to assign to the Custom IP Prefix.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The signed base64-encoded authorization message, which will be sent to Microsoft for WAN verification. Required when provisioning an IPv4 prefix or IPv6 global prefix. Refer to [Azure documentation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/create-custom-ip-address-prefix-cli#certificate-readiness) for more details about the process for your RIR. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> wanValidationSignedMessage;
  /// Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** In regions with [availability zones](https://docs.microsoft.com/en-us/azure/availability-zones/az-overview), the Custom IP Prefix must be specified as either `Zone-redundant` or assigned to a specific zone. It can't be created with no zone specified in these regions. All IPs from the prefix must have the same zonal properties.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Prefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Prefix]. {@macro pulumi_customip_prefix_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Prefix(
    String name, {
    PrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:customip/prefix:Prefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cidr = registerOutput<String>('cidr');
    commissioningEnabled = registerOutput<bool?>('commissioningEnabled');
    internetAdvertisingDisabled = registerOutput<bool?>('internetAdvertisingDisabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentCustomIpPrefixId = registerOutput<String?>('parentCustomIpPrefixId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roaValidityEndDate = registerOutput<String?>('roaValidityEndDate');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    wanValidationSignedMessage = registerOutput<String?>('wanValidationSignedMessage');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [Prefix] resource's state with the given [name] and [id].
  static Prefix get(
    String name,
    pulumi.Input<String> id, {
    PrefixState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Prefix._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Prefix._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:customip/prefix:Prefix',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    commissioningEnabled = registerOutput<bool?>('commissioningEnabled');
    internetAdvertisingDisabled = registerOutput<bool?>('internetAdvertisingDisabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentCustomIpPrefixId = registerOutput<String?>('parentCustomIpPrefixId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roaValidityEndDate = registerOutput<String?>('roaValidityEndDate');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    wanValidationSignedMessage = registerOutput<String?>('wanValidationSignedMessage');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [Prefix] resource.
  Prefix.reference(String urn)
    : super(
        'azure:customip/prefix:Prefix',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cidr = registerOutput<String>('cidr');
    commissioningEnabled = registerOutput<bool?>('commissioningEnabled');
    internetAdvertisingDisabled = registerOutput<bool?>('internetAdvertisingDisabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentCustomIpPrefixId = registerOutput<String?>('parentCustomIpPrefixId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roaValidityEndDate = registerOutput<String?>('roaValidityEndDate');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    wanValidationSignedMessage = registerOutput<String?>('wanValidationSignedMessage');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
