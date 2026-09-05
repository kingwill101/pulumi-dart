import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_table_properties_args.dart';
import 'account_table_properties_cors_rule.dart';
import 'account_table_properties_hour_metrics.dart';
import 'account_table_properties_logging.dart';
import 'account_table_properties_minute_metrics.dart';
import 'account_table_properties_state.dart';

/// Manages the Table Properties of an Azure Storage Account.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleAccountTableProperties = new azure.storage.AccountTableProperties("example", {
///     storageAccountId: exampleAccount.id,
///     corsRules: [{
///         allowedOrigins: ["http://www.example.com"],
///         exposedHeaders: ["x-tempo-*"],
///         allowedHeaders: ["x-tempo-*"],
///         allowedMethods: [
///             "GET",
///             "PUT",
///         ],
///         maxAgeInSeconds: 500,
///     }],
///     logging: {
///         version: "1.0",
///         "delete": true,
///         read: true,
///         write: true,
///         retentionPolicyDays: 7,
///     },
///     hourMetrics: {
///         version: "1.0",
///         retentionPolicyDays: 7,
///     },
///     minuteMetrics: {
///         version: "1.0",
///         retentionPolicyDays: 7,
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
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     tags={
///         "environment": "staging",
///     })
/// example_account_table_properties = azure.storage.AccountTableProperties("example",
///     storage_account_id=example_account.id,
///     cors_rules=[{
///         "allowed_origins": ["http://www.example.com"],
///         "exposed_headers": ["x-tempo-*"],
///         "allowed_headers": ["x-tempo-*"],
///         "allowed_methods": [
///             "GET",
///             "PUT",
///         ],
///         "max_age_in_seconds": 500,
///     }],
///     logging={
///         "version": "1.0",
///         "delete": True,
///         "read": True,
///         "write": True,
///         "retention_policy_days": 7,
///     },
///     hour_metrics={
///         "version": "1.0",
///         "retention_policy_days": 7,
///     },
///     minute_metrics={
///         "version": "1.0",
///         "retention_policy_days": 7,
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleAccountTableProperties = new Azure.Storage.AccountTableProperties("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         CorsRules = new[]
///         {
///             new Azure.Storage.Inputs.AccountTablePropertiesCorsRuleArgs
///             {
///                 AllowedOrigins = new[]
///                 {
///                     "http://www.example.com",
///                 },
///                 ExposedHeaders = new[]
///                 {
///                     "x-tempo-*",
///                 },
///                 AllowedHeaders = new[]
///                 {
///                     "x-tempo-*",
///                 },
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                     "PUT",
///                 },
///                 MaxAgeInSeconds = 500,
///             },
///         },
///         Logging = new Azure.Storage.Inputs.AccountTablePropertiesLoggingArgs
///         {
///             Version = "1.0",
///             Delete = true,
///             Read = true,
///             Write = true,
///             RetentionPolicyDays = 7,
///         },
///         HourMetrics = new Azure.Storage.Inputs.AccountTablePropertiesHourMetricsArgs
///         {
///             Version = "1.0",
///             RetentionPolicyDays = 7,
///         },
///         MinuteMetrics = new Azure.Storage.Inputs.AccountTablePropertiesMinuteMetricsArgs
///         {
///             Version = "1.0",
///             RetentionPolicyDays = 7,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccountTableProperties(ctx, "example", &storage.AccountTablePropertiesArgs{
/// 			StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			CorsRules: storage.AccountTablePropertiesCorsRuleArray{
/// 				&storage.AccountTablePropertiesCorsRuleArgs{
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("http://www.example.com"),
/// 					},
/// 					ExposedHeaders: pulumi.StringArray{
/// 						pulumi.String("x-tempo-*"),
/// 					},
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("x-tempo-*"),
/// 					},
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("PUT"),
/// 					},
/// 					MaxAgeInSeconds: pulumi.Int(500),
/// 				},
/// 			},
/// 			Logging: &storage.AccountTablePropertiesLoggingArgs{
/// 				Version:             pulumi.String("1.0"),
/// 				Delete:              pulumi.Bool(true),
/// 				Read:                pulumi.Bool(true),
/// 				Write:               pulumi.Bool(true),
/// 				RetentionPolicyDays: pulumi.Int(7),
/// 			},
/// 			HourMetrics: &storage.AccountTablePropertiesHourMetricsArgs{
/// 				Version:             pulumi.String("1.0"),
/// 				RetentionPolicyDays: pulumi.Int(7),
/// 			},
/// 			MinuteMetrics: &storage.AccountTablePropertiesMinuteMetricsArgs{
/// 				Version:             pulumi.String("1.0"),
/// 				RetentionPolicyDays: pulumi.Int(7),
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
/// resource "azure_storage_account" "example" {
///   name                     = "storageaccountname"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "GRS"
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_storage_accounttableproperties" "example" {
///   storage_account_id = azure_storage_account.example.id
///   cors_rules {
///     allowed_origins    = ["http://www.example.com"]
///     exposed_headers    = ["x-tempo-*"]
///     allowed_headers    = ["x-tempo-*"]
///     allowed_methods    = ["GET", "PUT"]
///     max_age_in_seconds = "500"
///   }
///   logging = {
///     version               = "1.0"
///     delete                = true
///     read                  = true
///     write                 = true
///     retention_policy_days = 7
///   }
///   hour_metrics = {
///     version               = "1.0"
///     retention_policy_days = 7
///   }
///   minute_metrics = {
///     version               = "1.0"
///     retention_policy_days = 7
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.AccountTableProperties;
/// import com.pulumi.azure.storage.AccountTablePropertiesArgs;
/// import com.pulumi.azure.storage.inputs.AccountTablePropertiesCorsRuleArgs;
/// import com.pulumi.azure.storage.inputs.AccountTablePropertiesLoggingArgs;
/// import com.pulumi.azure.storage.inputs.AccountTablePropertiesHourMetricsArgs;
/// import com.pulumi.azure.storage.inputs.AccountTablePropertiesMinuteMetricsArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleAccountTableProperties = new AccountTableProperties("exampleAccountTableProperties", AccountTablePropertiesArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .corsRules(AccountTablePropertiesCorsRuleArgs.builder()
///                 .allowedOrigins("http://www.example.com")
///                 .exposedHeaders("x-tempo-*")
///                 .allowedHeaders("x-tempo-*")
///                 .allowedMethods(
///                     "GET",
///                     "PUT")
///                 .maxAgeInSeconds(500)
///                 .build())
///             .logging(AccountTablePropertiesLoggingArgs.builder()
///                 .version("1.0")
///                 .delete(true)
///                 .read(true)
///                 .write(true)
///                 .retentionPolicyDays(7)
///                 .build())
///             .hourMetrics(AccountTablePropertiesHourMetricsArgs.builder()
///                 .version("1.0")
///                 .retentionPolicyDays(7)
///                 .build())
///             .minuteMetrics(AccountTablePropertiesMinuteMetricsArgs.builder()
///                 .version("1.0")
///                 .retentionPolicyDays(7)
///                 .build())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///       tags:
///         environment: staging
///   exampleAccountTableProperties:
///     type: azure:storage:AccountTableProperties
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       corsRules:
///         - allowedOrigins:
///             - http://www.example.com
///           exposedHeaders:
///             - x-tempo-*
///           allowedHeaders:
///             - x-tempo-*
///           allowedMethods:
///             - GET
///             - PUT
///           maxAgeInSeconds: '500'
///       logging:
///         version: '1.0'
///         delete: true
///         read: true
///         write: true
///         retentionPolicyDays: 7
///       hourMetrics:
///         version: '1.0'
///         retentionPolicyDays: 7
///       minuteMetrics:
///         version: '1.0'
///         retentionPolicyDays: 7
/// ```
///
///
/// ## Import
///
/// Storage Account Table Properties can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/accountTableProperties:AccountTableProperties example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
/// ```
class AccountTableProperties extends pulumi.CustomResource {
  /// A `corsRule` block as defined below.
  late final pulumi.Output<List<AccountTablePropertiesCorsRule>?> corsRules;
  /// A `hourMetrics` block as defined below.
  ///
  /// &gt; **Note:** At least one of `corsRule`, `logging`, `minuteMetrics`, or `hourMetrics` must be specified.
  late final pulumi.Output<AccountTablePropertiesHourMetrics> hourMetrics;
  /// A `logging` block as defined below.
  late final pulumi.Output<AccountTablePropertiesLogging> logging;
  /// A `minuteMetrics` block as defined below.
  late final pulumi.Output<AccountTablePropertiesMinuteMetrics> minuteMetrics;
  /// The ID of the Storage Account to set Table Properties on. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [AccountTableProperties].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountTableProperties]. {@macro pulumi_storage_account_table_properties_account_table_properties_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountTableProperties(
    String name, {
    AccountTablePropertiesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountTableProperties:AccountTableProperties',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    corsRules = registerOutput<List<AccountTablePropertiesCorsRule>?>('corsRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountTablePropertiesCorsRule>(guardedValue, (value) => AccountTablePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>())); });
    hourMetrics = registerOutput<AccountTablePropertiesHourMetrics>('hourMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesHourMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logging = registerOutput<AccountTablePropertiesLogging>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    minuteMetrics = registerOutput<AccountTablePropertiesMinuteMetrics>('minuteMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesMinuteMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [AccountTableProperties] resource's state with the given [name] and [id].
  static AccountTableProperties get(
    String name,
    pulumi.Input<String> id, {
    AccountTablePropertiesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountTableProperties._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountTableProperties._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountTableProperties:AccountTableProperties',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    corsRules = registerOutput<List<AccountTablePropertiesCorsRule>?>('corsRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountTablePropertiesCorsRule>(guardedValue, (value) => AccountTablePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>())); });
    hourMetrics = registerOutput<AccountTablePropertiesHourMetrics>('hourMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesHourMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logging = registerOutput<AccountTablePropertiesLogging>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    minuteMetrics = registerOutput<AccountTablePropertiesMinuteMetrics>('minuteMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesMinuteMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Creates a typed reference to an existing [AccountTableProperties] resource.
  AccountTableProperties.reference(String urn)
    : super(
        'azure:storage/accountTableProperties:AccountTableProperties',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    corsRules = registerOutput<List<AccountTablePropertiesCorsRule>?>('corsRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountTablePropertiesCorsRule>(guardedValue, (value) => AccountTablePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>())); });
    hourMetrics = registerOutput<AccountTablePropertiesHourMetrics>('hourMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesHourMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logging = registerOutput<AccountTablePropertiesLogging>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    minuteMetrics = registerOutput<AccountTablePropertiesMinuteMetrics>('minuteMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTablePropertiesMinuteMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String>('storageAccountId');
  }
}
