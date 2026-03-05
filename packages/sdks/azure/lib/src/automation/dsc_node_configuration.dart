import 'package:pulumi/pulumi.dart' as pulumi;
import 'dsc_node_configuration_args.dart';
import 'dsc_node_configuration_state.dart';

/// Manages a Automation DSC Node Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "account1",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleDscConfiguration = new azure.automation.DscConfiguration("example", {
///     name: "test",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     location: example.location,
///     contentEmbedded: "configuration test {}",
/// });
/// const exampleDscNodeConfiguration = new azure.automation.DscNodeConfiguration("example", {
///     name: "test.localhost",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     contentEmbedded: `instance of MSFT_FileDirectoryConfiguration as MSFT_FileDirectoryConfiguration1ref
/// {
///   ResourceID = \\"[File]bla\\";
///   Ensure = \\"Present\\";
///   Contents = \\"bogus Content\\";
///   DestinationPath = \\"c:\\\\\\\\bogus.txt\\";
///   ModuleName = \\"PSDesiredStateConfiguration\\";
///   SourceInfo = \\"::3::9::file\\";
///   ModuleVersion = \\"1.0\\";
///   ConfigurationName = \\"bla\\";
/// };
/// instance of OMI_ConfigurationDocument
/// {
///   Version=\\"2.0.0\\";
///   MinimumCompatibleVersion = \\"1.0.0\\";
///   CompatibleVersionAdditionalProperties= {\\"Omi_BaseResource:ConfigurationName\\"};
///   Author=\\"bogusAuthor\\";
///   GenerationDate=\\"06/15/2018 14:06:24\\";
///   GenerationHost=\\"bogusComputer\\";
///   Name=\\"test\\";
/// };
/// `,
/// }, {
///     dependsOn: [exampleDscConfiguration],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.automation.Account("example",
///     name="account1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_dsc_configuration = azure.automation.DscConfiguration("example",
///     name="test",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     location=example.location,
///     content_embedded="configuration test {}")
/// example_dsc_node_configuration = azure.automation.DscNodeConfiguration("example",
///     name="test.localhost",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     content_embedded="""instance of MSFT_FileDirectoryConfiguration as $MSFT_FileDirectoryConfiguration1ref
/// {
///   ResourceID = \"[File]bla\";
///   Ensure = \"Present\";
///   Contents = \"bogus Content\";
///   DestinationPath = \"c:\\\\bogus.txt\";
///   ModuleName = \"PSDesiredStateConfiguration\";
///   SourceInfo = \"::3::9::file\";
///   ModuleVersion = \"1.0\";
///   ConfigurationName = \"bla\";
/// };
/// instance of OMI_ConfigurationDocument
/// {
///   Version=\"2.0.0\";
///   MinimumCompatibleVersion = \"1.0.0\";
///   CompatibleVersionAdditionalProperties= {\"Omi_BaseResource:ConfigurationName\"};
///   Author=\"bogusAuthor\";
///   GenerationDate=\"06/15/2018 14:06:24\";
///   GenerationHost=\"bogusComputer\";
///   Name=\"test\";
/// };
/// """,
///     opts = pulumi.ResourceOptions(depends_on=[example_dsc_configuration]))
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
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "account1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleDscConfiguration = new Azure.Automation.DscConfiguration("example", new()
///     {
///         Name = "test",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Location = example.Location,
///         ContentEmbedded = "configuration test {}",
///     });
///
///     var exampleDscNodeConfiguration = new Azure.Automation.DscNodeConfiguration("example", new()
///     {
///         Name = "test.localhost",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         ContentEmbedded = @"instance of MSFT_FileDirectoryConfiguration as $MSFT_FileDirectoryConfiguration1ref
/// {
///   ResourceID = \""[File]bla\"";
///   Ensure = \""Present\"";
///   Contents = \""bogus Content\"";
///   DestinationPath = \""c:\\\\bogus.txt\"";
///   ModuleName = \""PSDesiredStateConfiguration\"";
///   SourceInfo = \""::3::9::file\"";
///   ModuleVersion = \""1.0\"";
///   ConfigurationName = \""bla\"";
/// };
/// instance of OMI_ConfigurationDocument
/// {
///   Version=\""2.0.0\"";
///   MinimumCompatibleVersion = \""1.0.0\"";
///   CompatibleVersionAdditionalProperties= {\""Omi_BaseResource:ConfigurationName\""};
///   Author=\""bogusAuthor\"";
///   GenerationDate=\""06/15/2018 14:06:24\"";
///   GenerationHost=\""bogusComputer\"";
///   Name=\""test\"";
/// };
/// ",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleDscConfiguration,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("account1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDscConfiguration, err := automation.NewDscConfiguration(ctx, "example", &automation.DscConfigurationArgs{
/// 			Name:                  pulumi.String("test"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Location:              example.Location,
/// 			ContentEmbedded:       pulumi.String("configuration test {}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewDscNodeConfiguration(ctx, "example", &automation.DscNodeConfigurationArgs{
/// 			Name:                  pulumi.String("test.localhost"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			ContentEmbedded: pulumi.String(`instance of MSFT_FileDirectoryConfiguration as $MSFT_FileDirectoryConfiguration1ref
/// {
///   ResourceID = \"[File]bla\";
///   Ensure = \"Present\";
///   Contents = \"bogus Content\";
///   DestinationPath = \"c:\\\\bogus.txt\";
///   ModuleName = \"PSDesiredStateConfiguration\";
///   SourceInfo = \"::3::9::file\";
///   ModuleVersion = \"1.0\";
///   ConfigurationName = \"bla\";
/// };
/// instance of OMI_ConfigurationDocument
/// {
///   Version=\"2.0.0\";
///   MinimumCompatibleVersion = \"1.0.0\";
///   CompatibleVersionAdditionalProperties= {\"Omi_BaseResource:ConfigurationName\"};
///   Author=\"bogusAuthor\";
///   GenerationDate=\"06/15/2018 14:06:24\";
///   GenerationHost=\"bogusComputer\";
///   Name=\"test\";
/// };
/// `),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleDscConfiguration,
/// 		}))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.DscConfiguration;
/// import com.pulumi.azure.automation.DscConfigurationArgs;
/// import com.pulumi.azure.automation.DscNodeConfiguration;
/// import com.pulumi.azure.automation.DscNodeConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("account1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleDscConfiguration = new DscConfiguration("exampleDscConfiguration", DscConfigurationArgs.builder()
///             .name("test")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .location(example.location())
///             .contentEmbedded("configuration test {}")
///             .build());
///
///         var exampleDscNodeConfiguration = new DscNodeConfiguration("exampleDscNodeConfiguration", DscNodeConfigurationArgs.builder()
///             .name("test.localhost")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .contentEmbedded("""
/// instance of MSFT_FileDirectoryConfiguration as $MSFT_FileDirectoryConfiguration1ref
/// {
///   ResourceID = \"[File]bla\";
///   Ensure = \"Present\";
///   Contents = \"bogus Content\";
///   DestinationPath = \"c:\\\\bogus.txt\";
///   ModuleName = \"PSDesiredStateConfiguration\";
///   SourceInfo = \"::3::9::file\";
///   ModuleVersion = \"1.0\";
///   ConfigurationName = \"bla\";
/// };
/// instance of OMI_ConfigurationDocument
/// {
///   Version=\"2.0.0\";
///   MinimumCompatibleVersion = \"1.0.0\";
///   CompatibleVersionAdditionalProperties= {\"Omi_BaseResource:ConfigurationName\"};
///   Author=\"bogusAuthor\";
///   GenerationDate=\"06/15/2018 14:06:24\";
///   GenerationHost=\"bogusComputer\";
///   Name=\"test\";
/// };
///             """)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleDscConfiguration)
///                 .build());
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
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: account1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleDscConfiguration:
///     type: azure:automation:DscConfiguration
///     name: example
///     properties:
///       name: test
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       location: ${example.location}
///       contentEmbedded: configuration test {}
///   exampleDscNodeConfiguration:
///     type: azure:automation:DscNodeConfiguration
///     name: example
///     properties:
///       name: test.localhost
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       contentEmbedded: |
///         instance of MSFT_FileDirectoryConfiguration as $MSFT_FileDirectoryConfiguration1ref
///         {
///           ResourceID = \"[File]bla\";
///           Ensure = \"Present\";
///           Contents = \"bogus Content\";
///           DestinationPath = \"c:\\\\bogus.txt\";
///           ModuleName = \"PSDesiredStateConfiguration\";
///           SourceInfo = \"::3::9::file\";
///           ModuleVersion = \"1.0\";
///           ConfigurationName = \"bla\";
///         };
///         instance of OMI_ConfigurationDocument
///         {
///           Version=\"2.0.0\";
///           MinimumCompatibleVersion = \"1.0.0\";
///           CompatibleVersionAdditionalProperties= {\"Omi_BaseResource:ConfigurationName\"};
///           Author=\"bogusAuthor\";
///           GenerationDate=\"06/15/2018 14:06:24\";
///           GenerationHost=\"bogusComputer\";
///           Name=\"test\";
///         };
///     options:
///       dependsOn:
///         - ${exampleDscConfiguration}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automation DSC Node Configuration's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/dscNodeConfiguration:DscNodeConfiguration configuration1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/nodeConfigurations/configuration1
/// ```
class DscNodeConfiguration extends pulumi.CustomResource {
  /// The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  late final pulumi.Output<String> configurationName;
  /// The PowerShell DSC Node Configuration (mof content).
  late final pulumi.Output<String> contentEmbedded;
  /// Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [DscNodeConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DscNodeConfiguration]. {@macro pulumi_automation_dsc_node_configuration_dsc_node_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DscNodeConfiguration(
    String name, {
    DscNodeConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/dscNodeConfiguration:DscNodeConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    configurationName = registerOutput<String>('configurationName');
    contentEmbedded = registerOutput<String>('contentEmbedded');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [DscNodeConfiguration] resource's state with the given [name] and [id].
  static DscNodeConfiguration get(
    String name,
    pulumi.Input<String> id, {
    DscNodeConfigurationState? state,
  }) {
    return DscNodeConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DscNodeConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/dscNodeConfiguration:DscNodeConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    configurationName = registerOutput<String>('configurationName');
    contentEmbedded = registerOutput<String>('contentEmbedded');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
