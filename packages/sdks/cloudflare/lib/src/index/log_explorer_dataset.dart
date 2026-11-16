import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_explorer_dataset_args.dart';
import 'log_explorer_dataset_field.dart';
import 'log_explorer_dataset_state.dart';

/// Accepted Permissions
///
/// - `Logs Read`
/// - `Logs Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLogExplorerDataset = new cloudflare.LogExplorerDataset("example_log_explorer_dataset", {
///     dataset: "http_requests",
///     zoneId: "zone_id",
///     filterAttackTraffic: false,
///     fields: [
///         {
///             enabled: true,
///             name: "edgeendtimestamp",
///         },
///         {
///             enabled: true,
///             name: "clientip",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_log_explorer_dataset = cloudflare.LogExplorerDataset("example_log_explorer_dataset",
///     dataset="http_requests",
///     zone_id="zone_id",
///     filter_attack_traffic=False,
///     fields=[
///         {
///             "enabled": True,
///             "name": "edgeendtimestamp",
///         },
///         {
///             "enabled": True,
///             "name": "clientip",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogExplorerDataset = new Cloudflare.LogExplorerDataset("example_log_explorer_dataset", new()
///     {
///         Dataset = "http_requests",
///         ZoneId = "zone_id",
///         FilterAttackTraffic = false,
///         Fields = new[]
///         {
///             new Cloudflare.Inputs.LogExplorerDatasetFieldArgs
///             {
///                 Enabled = true,
///                 Name = "edgeendtimestamp",
///             },
///             new Cloudflare.Inputs.LogExplorerDatasetFieldArgs
///             {
///                 Enabled = true,
///                 Name = "clientip",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewLogExplorerDataset(ctx, "example_log_explorer_dataset", &cloudflare.LogExplorerDatasetArgs{
/// 			Dataset:             pulumi.String("http_requests"),
/// 			ZoneId:              pulumi.String("zone_id"),
/// 			FilterAttackTraffic: pulumi.Bool(false),
/// 			Fields: cloudflare.LogExplorerDatasetFieldArray{
/// 				&cloudflare.LogExplorerDatasetFieldArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Name:    pulumi.String("edgeendtimestamp"),
/// 				},
/// 				&cloudflare.LogExplorerDatasetFieldArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Name:    pulumi.String("clientip"),
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
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_log_explorer_dataset" "example_log_explorer_dataset" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   dataset               = "http_requests"
///   zone_id               = "zone_id"
///   filter_attack_traffic = false
///   fields = [{
///     enabled = true
///     name    = "edgeendtimestamp"
///     }, {
///     enabled = true
///     name    = "clientip"
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LogExplorerDataset;
/// import com.pulumi.cloudflare.LogExplorerDatasetArgs;
/// import com.pulumi.cloudflare.inputs.LogExplorerDatasetFieldArgs;
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
///         var exampleLogExplorerDataset = new LogExplorerDataset("exampleLogExplorerDataset", LogExplorerDatasetArgs.builder()
///             .dataset("http_requests")
///             .zoneId("zone_id")
///             .filterAttackTraffic(false)
///             .fields(
///                 LogExplorerDatasetFieldArgs.builder()
///                     .enabled(true)
///                     .name("edgeendtimestamp")
///                     .build(),
///                 LogExplorerDatasetFieldArgs.builder()
///                     .enabled(true)
///                     .name("clientip")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLogExplorerDataset:
///     type: cloudflare:LogExplorerDataset
///     name: example_log_explorer_dataset
///     properties:
///       dataset: http_requests
///       zoneId: zone_id
///       filterAttackTraffic: false
///       fields:
///         - enabled: true
///           name: edgeendtimestamp
///         - enabled: true
///           name: clientip
/// ```
///
///
/// ## Scope
///
/// Configure exactly one of `accountId` or `zoneId`.
///
/// ## Creation and deletion
///
/// The API applies its defaults when `enabled` or `deletionProtection` is omitted.
/// If a configured value differs from the creation response, the provider applies
/// it with an update that preserves the selected fields and filter.
/// Set `deletionProtection = false` and apply the change before deleting the dataset.
/// The same steps are required before replacing the resource.
///
/// ## Field selection
///
/// When `fields` is omitted, the API selects all available fields. Removing a
/// configured selection restores that behavior. Imported resources start with
/// unmanaged fields; configure `fields` to manage a selection.
///
/// Names are matched without regard to case. The provider keeps the configured
/// names and order in state and reads enabled values from the API. Duplicate names
/// are not allowed, even with different letter case. Each explicit selection must
/// include the dataset's required timestamp field.
///
/// ## Import
///
/// This resource uses schema version `500` to identify its state for version 5 of the provider during resource migrations.
///
///
/// ```sh
/// $ pulumi import cloudflare:index/logExplorerDataset:LogExplorerDataset example '<{accounts|zones}/{account_id|zone_id}>/<dataset_id>'
/// ```
class LogExplorerDataset extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// RFC3339 timestamp recording when the API created this dataset.
  late final pulumi.Output<String> createdAt;
  /// Dataset type name to create (e.g. `httpRequests`).
  late final pulumi.Output<String> dataset;
  /// Unique dataset ID.
  late final pulumi.Output<String> datasetId;
  /// Set to `false` to allow deletion of this dataset.
  late final pulumi.Output<bool> deletionProtection;
  /// Whether to enable or disable log ingest for this dataset.
  late final pulumi.Output<bool> enabled;
  /// Controls which fields the API ingests. Defaults to all available
  /// fields when absent.
  /// Each dataset requires its own timestamp field to remain enabled (the
  /// field name varies per dataset type); omitting it from an explicit
  /// selection is rejected by the API.
  late final pulumi.Output<List<LogExplorerDatasetField>> fields;
  /// Optional Logpush filter predicate to restrict which events are ingested.
  /// Omitting this attribute means no filter. An empty string also means no filter.
  /// Removing a configured filter sends an empty string to clear it in the API.
  /// The provider stores missing or null API filters as empty strings in state.
  /// See [Logpush filters](https://developers.cloudflare.com/logs/reference/filters/)
  /// for syntax and examples.
  late final pulumi.Output<String> filter;
  /// Whether to filter attack traffic from the Logpush job. The API defaults to true on creation for http*requests, firewall*events, and network*analytics*logs. If omitted on update, the existing setting is kept. The API omits this setting for datasets that do not support it.
  late final pulumi.Output<bool> filterAttackTraffic;
  /// Public ID of the account or zone that owns this dataset.
  late final pulumi.Output<String> objectId;
  /// Whether this dataset belongs to an account or a zone.
  /// Available values: "account", "zone".
  late final pulumi.Output<String> objectType;
  /// RFC3339 timestamp recording when the API last updated this dataset.
  late final pulumi.Output<String> updatedAt;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [LogExplorerDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogExplorerDataset]. {@macro pulumi_index_log_explorer_dataset_log_explorer_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogExplorerDataset(
    String name, {
    LogExplorerDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logExplorerDataset:LogExplorerDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    createdAt = registerOutput<String>('createdAt');
    dataset = registerOutput<String>('dataset');
    datasetId = registerOutput<String>('datasetId');
    deletionProtection = registerOutput<bool>('deletionProtection');
    enabled = registerOutput<bool>('enabled');
    fields = registerOutput<List<LogExplorerDatasetField>>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogExplorerDatasetField>(guardedValue, (value) => LogExplorerDatasetField.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<String>('filter');
    filterAttackTraffic = registerOutput<bool>('filterAttackTraffic');
    objectId = registerOutput<String>('objectId');
    objectType = registerOutput<String>('objectType');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [LogExplorerDataset] resource's state with the given [name] and [id].
  static LogExplorerDataset get(
    String name,
    pulumi.Input<String> id, {
    LogExplorerDatasetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogExplorerDataset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogExplorerDataset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logExplorerDataset:LogExplorerDataset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    createdAt = registerOutput<String>('createdAt');
    dataset = registerOutput<String>('dataset');
    datasetId = registerOutput<String>('datasetId');
    deletionProtection = registerOutput<bool>('deletionProtection');
    enabled = registerOutput<bool>('enabled');
    fields = registerOutput<List<LogExplorerDatasetField>>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogExplorerDatasetField>(guardedValue, (value) => LogExplorerDatasetField.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<String>('filter');
    filterAttackTraffic = registerOutput<bool>('filterAttackTraffic');
    objectId = registerOutput<String>('objectId');
    objectType = registerOutput<String>('objectType');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [LogExplorerDataset] resource.
  LogExplorerDataset.reference(String urn)
    : super(
        'cloudflare:index/logExplorerDataset:LogExplorerDataset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    createdAt = registerOutput<String>('createdAt');
    dataset = registerOutput<String>('dataset');
    datasetId = registerOutput<String>('datasetId');
    deletionProtection = registerOutput<bool>('deletionProtection');
    enabled = registerOutput<bool>('enabled');
    fields = registerOutput<List<LogExplorerDatasetField>>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogExplorerDatasetField>(guardedValue, (value) => LogExplorerDatasetField.fromMap((value as Map).cast<String, dynamic>())); });
    filter = registerOutput<String>('filter');
    filterAttackTraffic = registerOutput<bool>('filterAttackTraffic');
    objectId = registerOutput<String>('objectId');
    objectType = registerOutput<String>('objectType');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String?>('zoneId');
  }
}
