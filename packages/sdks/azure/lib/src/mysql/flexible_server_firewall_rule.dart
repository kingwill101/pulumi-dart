import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_firewall_rule_args.dart';
import 'flexible_server_firewall_rule_state.dart';

/// Manages a Firewall Rule for a MySQL Flexible Server.
///
/// ## Example Usage
///
/// ### Single IP Address)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleFlexibleServerFirewallRule = new azure.mysql.FlexibleServerFirewallRule("example", {
///     name: "office",
///     resourceGroupName: example.name,
///     serverName: exampleFlexibleServer.name,
///     startIpAddress: "40.112.8.12",
///     endIpAddress: "40.112.8.12",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_flexible_server_firewall_rule = azure.mysql.FlexibleServerFirewallRule("example",
///     name="office",
///     resource_group_name=example.name,
///     server_name=example_flexible_server.name,
///     start_ip_address="40.112.8.12",
///     end_ip_address="40.112.8.12")
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleFlexibleServerFirewallRule = new Azure.MySql.FlexibleServerFirewallRule("example", new()
///     {
///         Name = "office",
///         ResourceGroupName = example.Name,
///         ServerName = exampleFlexibleServer.Name,
///         StartIpAddress = "40.112.8.12",
///         EndIpAddress = "40.112.8.12",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleServerFirewallRule(ctx, "example", &mysql.FlexibleServerFirewallRuleArgs{
/// 			Name:              pulumi.String("office"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleFlexibleServer.Name,
/// 			StartIpAddress:    pulumi.String("40.112.8.12"),
/// 			EndIpAddress:      pulumi.String("40.112.8.12"),
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
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_mysql_flexibleserver" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_mysql_flexibleserverfirewallrule" "example" {
///   name                = "office"
///   resource_group_name = azure_core_resourcegroup.example.name
///   server_name         = azure_mysql_flexibleserver.example.name
///   start_ip_address    = "40.112.8.12"
///   end_ip_address      = "40.112.8.12"
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
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.mysql.FlexibleServerFirewallRule;
/// import com.pulumi.azure.mysql.FlexibleServerFirewallRuleArgs;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleFlexibleServerFirewallRule = new FlexibleServerFirewallRule("exampleFlexibleServerFirewallRule", FlexibleServerFirewallRuleArgs.builder()
///             .name("office")
///             .resourceGroupName(example.name())
///             .serverName(exampleFlexibleServer.name())
///             .startIpAddress("40.112.8.12")
///             .endIpAddress("40.112.8.12")
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
///       name: api-rg-pro
///       location: West Europe
///   exampleFlexibleServer:
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleFlexibleServerFirewallRule:
///     type: azure:mysql:FlexibleServerFirewallRule
///     name: example
///     properties:
///       name: office
///       resourceGroupName: ${example.name}
///       serverName: ${exampleFlexibleServer.name}
///       startIpAddress: 40.112.8.12
///       endIpAddress: 40.112.8.12
/// ```
///
///
///
/// ### IP Range)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleFlexibleServerFirewallRule = new azure.mysql.FlexibleServerFirewallRule("example", {
///     name: "office",
///     resourceGroupName: example.name,
///     serverName: exampleFlexibleServer.name,
///     startIpAddress: "40.112.0.0",
///     endIpAddress: "40.112.255.255",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_flexible_server_firewall_rule = azure.mysql.FlexibleServerFirewallRule("example",
///     name="office",
///     resource_group_name=example.name,
///     server_name=example_flexible_server.name,
///     start_ip_address="40.112.0.0",
///     end_ip_address="40.112.255.255")
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleFlexibleServerFirewallRule = new Azure.MySql.FlexibleServerFirewallRule("example", new()
///     {
///         Name = "office",
///         ResourceGroupName = example.Name,
///         ServerName = exampleFlexibleServer.Name,
///         StartIpAddress = "40.112.0.0",
///         EndIpAddress = "40.112.255.255",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleServerFirewallRule(ctx, "example", &mysql.FlexibleServerFirewallRuleArgs{
/// 			Name:              pulumi.String("office"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleFlexibleServer.Name,
/// 			StartIpAddress:    pulumi.String("40.112.0.0"),
/// 			EndIpAddress:      pulumi.String("40.112.255.255"),
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
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_mysql_flexibleserver" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_mysql_flexibleserverfirewallrule" "example" {
///   name                = "office"
///   resource_group_name = azure_core_resourcegroup.example.name
///   server_name         = azure_mysql_flexibleserver.example.name
///   start_ip_address    = "40.112.0.0"
///   end_ip_address      = "40.112.255.255"
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
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.mysql.FlexibleServerFirewallRule;
/// import com.pulumi.azure.mysql.FlexibleServerFirewallRuleArgs;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleFlexibleServerFirewallRule = new FlexibleServerFirewallRule("exampleFlexibleServerFirewallRule", FlexibleServerFirewallRuleArgs.builder()
///             .name("office")
///             .resourceGroupName(example.name())
///             .serverName(exampleFlexibleServer.name())
///             .startIpAddress("40.112.0.0")
///             .endIpAddress("40.112.255.255")
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
///       name: api-rg-pro
///       location: West Europe
///   exampleFlexibleServer:
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleFlexibleServerFirewallRule:
///     type: azure:mysql:FlexibleServerFirewallRule
///     name: example
///     properties:
///       name: office
///       resourceGroupName: ${example.name}
///       serverName: ${exampleFlexibleServer.name}
///       startIpAddress: 40.112.0.0
///       endIpAddress: 40.112.255.255
/// ```
///
///
///
/// ### Allow Access To Azure Services)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleFlexibleServerFirewallRule = new azure.mysql.FlexibleServerFirewallRule("example", {
///     name: "office",
///     resourceGroupName: example.name,
///     serverName: exampleFlexibleServer.name,
///     startIpAddress: "0.0.0.0",
///     endIpAddress: "0.0.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_flexible_server_firewall_rule = azure.mysql.FlexibleServerFirewallRule("example",
///     name="office",
///     resource_group_name=example.name,
///     server_name=example_flexible_server.name,
///     start_ip_address="0.0.0.0",
///     end_ip_address="0.0.0.0")
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleFlexibleServerFirewallRule = new Azure.MySql.FlexibleServerFirewallRule("example", new()
///     {
///         Name = "office",
///         ResourceGroupName = example.Name,
///         ServerName = exampleFlexibleServer.Name,
///         StartIpAddress = "0.0.0.0",
///         EndIpAddress = "0.0.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleServerFirewallRule(ctx, "example", &mysql.FlexibleServerFirewallRuleArgs{
/// 			Name:              pulumi.String("office"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleFlexibleServer.Name,
/// 			StartIpAddress:    pulumi.String("0.0.0.0"),
/// 			EndIpAddress:      pulumi.String("0.0.0.0"),
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
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_mysql_flexibleserver" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_mysql_flexibleserverfirewallrule" "example" {
///   name                = "office"
///   resource_group_name = azure_core_resourcegroup.example.name
///   server_name         = azure_mysql_flexibleserver.example.name
///   start_ip_address    = "0.0.0.0"
///   end_ip_address      = "0.0.0.0"
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
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.mysql.FlexibleServerFirewallRule;
/// import com.pulumi.azure.mysql.FlexibleServerFirewallRuleArgs;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleFlexibleServerFirewallRule = new FlexibleServerFirewallRule("exampleFlexibleServerFirewallRule", FlexibleServerFirewallRuleArgs.builder()
///             .name("office")
///             .resourceGroupName(example.name())
///             .serverName(exampleFlexibleServer.name())
///             .startIpAddress("0.0.0.0")
///             .endIpAddress("0.0.0.0")
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
///       name: api-rg-pro
///       location: West Europe
///   exampleFlexibleServer:
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleFlexibleServerFirewallRule:
///     type: azure:mysql:FlexibleServerFirewallRule
///     name: example
///     properties:
///       name: office
///       resourceGroupName: ${example.name}
///       serverName: ${exampleFlexibleServer.name}
///       startIpAddress: 0.0.0.0
///       endIpAddress: 0.0.0.0
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforMySQL` - 2023-12-30
///
/// ## Import
///
/// MySQL Firewall Rule's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mysql/flexibleServerFirewallRule:FlexibleServerFirewallRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforMySQL/flexibleServers/flexibleServer1/firewallRules/firewallRule1
/// ```
class FlexibleServerFirewallRule extends pulumi.CustomResource {
  /// Specifies the End IP Address associated with this Firewall Rule.
  ///
  /// &gt; **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `startIpAddress` and `endIpAddress` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  late final pulumi.Output<String> endIpAddress;
  /// Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// Specifies the Start IP Address associated with this Firewall Rule.
  late final pulumi.Output<String> startIpAddress;

  /// Creates a new [FlexibleServerFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerFirewallRule]. {@macro pulumi_mysql_flexible_server_firewall_rule_flexible_server_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerFirewallRule(
    String name, {
    FlexibleServerFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServerFirewallRule:FlexibleServerFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
    startIpAddress = registerOutput<String>('startIpAddress');
  }

  /// Gets an existing [FlexibleServerFirewallRule] resource's state with the given [name] and [id].
  static FlexibleServerFirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerFirewallRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlexibleServerFirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlexibleServerFirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServerFirewallRule:FlexibleServerFirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
    startIpAddress = registerOutput<String>('startIpAddress');
  }

  /// Creates a typed reference to an existing [FlexibleServerFirewallRule] resource.
  FlexibleServerFirewallRule.reference(String urn)
    : super(
        'azure:mysql/flexibleServerFirewallRule:FlexibleServerFirewallRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
    startIpAddress = registerOutput<String>('startIpAddress');
  }
}
