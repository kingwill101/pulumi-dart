import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_feature_args.dart';
import 'configuration_feature_custom_filter.dart';
import 'configuration_feature_state.dart';
import 'configuration_feature_targeting_filter.dart';
import 'configuration_feature_timewindow_filter.dart';

/// Manages an Azure App Configuration Feature.
///
/// &gt; **Note:** App Configuration Features are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration). This is similar to providing App Configuration Keys.
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
/// const appconf = new azure.appconfiguration.ConfigurationStore("appconf", {
///     name: "appConf1",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const current = azure.core.getClientConfig({});
/// const appconfDataowner = new azure.authorization.Assignment("appconf_dataowner", {
///     scope: appconf.id,
///     roleDefinitionName: "App Configuration Data Owner",
///     principalId: current.then(current => current.objectId),
/// });
/// const test = new azure.appconfiguration.ConfigurationFeature("test", {
///     configurationStoreId: appconf.id,
///     description: "test description",
///     name: "test-ackey",
///     label: "test-ackeylabel",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// appconf = azure.appconfiguration.ConfigurationStore("appconf",
///     name="appConf1",
///     resource_group_name=example.name,
///     location=example.location)
/// current = azure.core.get_client_config()
/// appconf_dataowner = azure.authorization.Assignment("appconf_dataowner",
///     scope=appconf.id,
///     role_definition_name="App Configuration Data Owner",
///     principal_id=current.object_id)
/// test = azure.appconfiguration.ConfigurationFeature("test",
///     configuration_store_id=appconf.id,
///     description="test description",
///     name="test-ackey",
///     label="test-ackeylabel",
///     enabled=True)
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
///     var appconf = new Azure.AppConfiguration.ConfigurationStore("appconf", new()
///     {
///         Name = "appConf1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var appconfDataowner = new Azure.Authorization.Assignment("appconf_dataowner", new()
///     {
///         Scope = appconf.Id,
///         RoleDefinitionName = "App Configuration Data Owner",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     var test = new Azure.AppConfiguration.ConfigurationFeature("test", new()
///     {
///         ConfigurationStoreId = appconf.Id,
///         Description = "test description",
///         Name = "test-ackey",
///         Label = "test-ackeylabel",
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
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
/// 		appconf, err := appconfiguration.NewConfigurationStore(ctx, "appconf", &appconfiguration.ConfigurationStoreArgs{
/// 			Name:              pulumi.String("appConf1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "appconf_dataowner", &authorization.AssignmentArgs{
/// 			Scope:              appconf.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("App Configuration Data Owner"),
/// 			PrincipalId:        pulumi.String(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfiguration.NewConfigurationFeature(ctx, "test", &appconfiguration.ConfigurationFeatureArgs{
/// 			ConfigurationStoreId: appconf.ID().ToIDOutput().ToStringOutput(),
/// 			Description:          pulumi.String("test description"),
/// 			Name:                 pulumi.String("test-ackey"),
/// 			Label:                pulumi.String("test-ackeylabel"),
/// 			Enabled:              pulumi.Bool(true),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appconfiguration_configurationstore" "appconf" {
///   name                = "appConf1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_authorization_assignment" "appconf_dataowner" {
///   scope                = azure_appconfiguration_configurationstore.appconf.id
///   role_definition_name = "App Configuration Data Owner"
///   principal_id         = data.azure_core_getclientconfig.current.object_id
/// }
/// resource "azure_appconfiguration_configurationfeature" "test" {
///   configuration_store_id = azure_appconfiguration_configurationstore.appconf.id
///   description            = "test description"
///   name                   = "test-ackey"
///   label                  = "test-ackeylabel"
///   enabled                = true
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
/// import com.pulumi.azure.appconfiguration.ConfigurationStore;
/// import com.pulumi.azure.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.appconfiguration.ConfigurationFeature;
/// import com.pulumi.azure.appconfiguration.ConfigurationFeatureArgs;
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
///         var appconf = new ConfigurationStore("appconf", ConfigurationStoreArgs.builder()
///             .name("appConf1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var appconfDataowner = new Assignment("appconfDataowner", AssignmentArgs.builder()
///             .scope(appconf.id())
///             .roleDefinitionName("App Configuration Data Owner")
///             .principalId(current.objectId())
///             .build());
///
///         var test = new ConfigurationFeature("test", ConfigurationFeatureArgs.builder()
///             .configurationStoreId(appconf.id())
///             .description("test description")
///             .name("test-ackey")
///             .label("test-ackeylabel")
///             .enabled(true)
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
///   appconf:
///     type: azure:appconfiguration:ConfigurationStore
///     properties:
///       name: appConf1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   appconfDataowner:
///     type: azure:authorization:Assignment
///     name: appconf_dataowner
///     properties:
///       scope: ${appconf.id}
///       roleDefinitionName: App Configuration Data Owner
///       principalId: ${current.objectId}
///   test:
///     type: azure:appconfiguration:ConfigurationFeature
///     properties:
///       configurationStoreId: ${appconf.id}
///       description: test description
///       name: test-ackey
///       label: test-ackeylabel
///       enabled: true
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// App Configuration Features can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/configurationFeature:ConfigurationFeature test https://appconfname1.azconfig.io/kv/.appconfig.featureflag%2FkeyName?label=labelName
/// ```
///
/// If you wish to import with an empty label then simply leave the label's name blank:
///
/// ```sh
/// $ pulumi import azure:appconfiguration/configurationFeature:ConfigurationFeature test https://appconfname1.azconfig.io/kv/.appconfig.featureflag%2FkeyName?label=
/// ```
class ConfigurationFeature extends pulumi.CustomResource {
  /// Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> configurationStoreId;
  /// A `customFilter` block as defined below.
  late final pulumi.Output<List<ConfigurationFeatureCustomFilter>?> customFilters;
  /// The description of the App Configuration Feature.
  late final pulumi.Output<String?> description;
  /// The status of the App Configuration Feature. By default, this is set to false.
  late final pulumi.Output<bool?> enabled;
  late final pulumi.Output<String> etag;
  /// The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> key;
  /// The label of the App Configuration Feature. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> label;
  /// Should this App Configuration Feature be Locked to prevent changes?
  late final pulumi.Output<bool?> locked;
  /// The name of the App Configuration Feature. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A number representing the value of the percentage required to enable this feature.
  late final pulumi.Output<double?> percentageFilterValue;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `targetingFilter` block as defined below.
  late final pulumi.Output<List<ConfigurationFeatureTargetingFilter>?> targetingFilters;
  /// A `timewindowFilter` block as defined below.
  late final pulumi.Output<List<ConfigurationFeatureTimewindowFilter>?> timewindowFilters;

  /// Creates a new [ConfigurationFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationFeature]. {@macro pulumi_appconfiguration_configuration_feature_configuration_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationFeature(
    String name, {
    ConfigurationFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/configurationFeature:ConfigurationFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    configurationStoreId = registerOutput<String>('configurationStoreId');
    customFilters = registerOutput<List<ConfigurationFeatureCustomFilter>?>('customFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureCustomFilter>(guardedValue, (value) => ConfigurationFeatureCustomFilter.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    key = registerOutput<String>('key');
    label = registerOutput<String?>('label');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    percentageFilterValue = registerOutput<double?>('percentageFilterValue');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetingFilters = registerOutput<List<ConfigurationFeatureTargetingFilter>?>('targetingFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureTargetingFilter>(guardedValue, (value) => ConfigurationFeatureTargetingFilter.fromMap((value as Map).cast<String, dynamic>())); });
    timewindowFilters = registerOutput<List<ConfigurationFeatureTimewindowFilter>?>('timewindowFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureTimewindowFilter>(guardedValue, (value) => ConfigurationFeatureTimewindowFilter.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ConfigurationFeature] resource's state with the given [name] and [id].
  static ConfigurationFeature get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationFeatureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConfigurationFeature._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConfigurationFeature._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/configurationFeature:ConfigurationFeature',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationStoreId = registerOutput<String>('configurationStoreId');
    customFilters = registerOutput<List<ConfigurationFeatureCustomFilter>?>('customFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureCustomFilter>(guardedValue, (value) => ConfigurationFeatureCustomFilter.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    key = registerOutput<String>('key');
    label = registerOutput<String?>('label');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    percentageFilterValue = registerOutput<double?>('percentageFilterValue');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetingFilters = registerOutput<List<ConfigurationFeatureTargetingFilter>?>('targetingFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureTargetingFilter>(guardedValue, (value) => ConfigurationFeatureTargetingFilter.fromMap((value as Map).cast<String, dynamic>())); });
    timewindowFilters = registerOutput<List<ConfigurationFeatureTimewindowFilter>?>('timewindowFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureTimewindowFilter>(guardedValue, (value) => ConfigurationFeatureTimewindowFilter.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ConfigurationFeature] resource.
  ConfigurationFeature.reference(String urn)
    : super(
        'azure:appconfiguration/configurationFeature:ConfigurationFeature',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configurationStoreId = registerOutput<String>('configurationStoreId');
    customFilters = registerOutput<List<ConfigurationFeatureCustomFilter>?>('customFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureCustomFilter>(guardedValue, (value) => ConfigurationFeatureCustomFilter.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    key = registerOutput<String>('key');
    label = registerOutput<String?>('label');
    locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    percentageFilterValue = registerOutput<double?>('percentageFilterValue');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetingFilters = registerOutput<List<ConfigurationFeatureTargetingFilter>?>('targetingFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureTargetingFilter>(guardedValue, (value) => ConfigurationFeatureTargetingFilter.fromMap((value as Map).cast<String, dynamic>())); });
    timewindowFilters = registerOutput<List<ConfigurationFeatureTimewindowFilter>?>('timewindowFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationFeatureTimewindowFilter>(guardedValue, (value) => ConfigurationFeatureTimewindowFilter.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
