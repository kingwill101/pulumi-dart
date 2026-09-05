import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_dataset_args.dart';
import 'zero_trust_dlp_dataset_column.dart';
import 'zero_trust_dlp_dataset_dataset.dart';
import 'zero_trust_dlp_dataset_state.dart';
import 'zero_trust_dlp_dataset_upload.dart';

/// Accepted Permissions
///
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDlpDataset = new cloudflare.ZeroTrustDlpDataset("example_zero_trust_dlp_dataset", {
///     accountId: "account_id",
///     name: "name",
///     caseSensitive: true,
///     description: "description",
///     encodingVersion: 0,
///     secret: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dlp_dataset = cloudflare.ZeroTrustDlpDataset("example_zero_trust_dlp_dataset",
///     account_id="account_id",
///     name="name",
///     case_sensitive=True,
///     description="description",
///     encoding_version=0,
///     secret=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDlpDataset = new Cloudflare.ZeroTrustDlpDataset("example_zero_trust_dlp_dataset", new()
///     {
///         AccountId = "account_id",
///         Name = "name",
///         CaseSensitive = true,
///         Description = "description",
///         EncodingVersion = 0,
///         Secret = true,
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
/// 		_, err := cloudflare.NewZeroTrustDlpDataset(ctx, "example_zero_trust_dlp_dataset", &cloudflare.ZeroTrustDlpDatasetArgs{
/// 			AccountId:       pulumi.String("account_id"),
/// 			Name:            pulumi.String("name"),
/// 			CaseSensitive:   pulumi.Bool(true),
/// 			Description:     pulumi.String("description"),
/// 			EncodingVersion: pulumi.Int(0),
/// 			Secret:          pulumi.Bool(true),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustdlpdataset" "example_zero_trust_dlp_dataset" {
///   account_id       = "account_id"
///   name             = "name"
///   case_sensitive   = true
///   description      = "description"
///   encoding_version = 0
///   secret           = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDlpDataset;
/// import com.pulumi.cloudflare.ZeroTrustDlpDatasetArgs;
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
///         var exampleZeroTrustDlpDataset = new ZeroTrustDlpDataset("exampleZeroTrustDlpDataset", ZeroTrustDlpDatasetArgs.builder()
///             .accountId("account_id")
///             .name("name")
///             .caseSensitive(true)
///             .description("description")
///             .encodingVersion(0)
///             .secret(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDlpDataset:
///     type: cloudflare:ZeroTrustDlpDataset
///     name: example_zero_trust_dlp_dataset
///     properties:
///       accountId: account_id
///       name: name
///       caseSensitive: true
///       description: description
///       encodingVersion: 0
///       secret: true
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ZeroTrustDlpDataset extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if `secret` is true or undefined
  late final pulumi.Output<bool?> caseSensitive;
  late final pulumi.Output<List<ZeroTrustDlpDatasetColumn>> columns;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<ZeroTrustDlpDatasetDataset> dataset;
  late final pulumi.Output<String?> datasetId;
  /// The description of the dataset.
  late final pulumi.Output<String?> description;
  /// Dataset encoding version
  late final pulumi.Output<int?> encodingVersion;
  late final pulumi.Output<int> maxCells;
  late final pulumi.Output<String> name;
  late final pulumi.Output<int> numCells;
  /// Generate a secret dataset.
  ///
  /// If true, the response will include a secret to use with the EDM encoder.
  /// If false, the response has no secret and the dataset is uploaded in plaintext.
  late final pulumi.Output<bool?> secret;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  late final pulumi.Output<String> status;
  /// Stores when the dataset was last updated.
  ///
  /// This includes name or description changes as well as uploads.
  late final pulumi.Output<String> updatedAt;
  late final pulumi.Output<List<ZeroTrustDlpDatasetUpload>> uploads;
  /// The version to use when uploading the dataset.
  late final pulumi.Output<int> version;

  /// Creates a new [ZeroTrustDlpDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDlpDataset]. {@macro pulumi_index_zero_trust_dlp_dataset_zero_trust_dlp_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDlpDataset(
    String name, {
    ZeroTrustDlpDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataset:ZeroTrustDlpDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool?>('caseSensitive');
    columns = registerOutput<List<ZeroTrustDlpDatasetColumn>>('columns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDatasetColumn>(guardedValue, (value) => ZeroTrustDlpDatasetColumn.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    dataset = registerOutput<ZeroTrustDlpDatasetDataset>('dataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpDatasetDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datasetId = registerOutput<String?>('datasetId');
    description = registerOutput<String?>('description');
    encodingVersion = registerOutput<int?>('encodingVersion');
    maxCells = registerOutput<int>('maxCells');
    this.name = registerOutput<String>('name');
    numCells = registerOutput<int>('numCells');
    secret = registerOutput<bool?>('secret');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    uploads = registerOutput<List<ZeroTrustDlpDatasetUpload>>('uploads', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDatasetUpload>(guardedValue, (value) => ZeroTrustDlpDatasetUpload.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<int>('version');
  }

  /// Gets an existing [ZeroTrustDlpDataset] resource's state with the given [name] and [id].
  static ZeroTrustDlpDataset get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDlpDatasetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDlpDataset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDlpDataset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDlpDataset:ZeroTrustDlpDataset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool?>('caseSensitive');
    columns = registerOutput<List<ZeroTrustDlpDatasetColumn>>('columns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDatasetColumn>(guardedValue, (value) => ZeroTrustDlpDatasetColumn.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    dataset = registerOutput<ZeroTrustDlpDatasetDataset>('dataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpDatasetDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datasetId = registerOutput<String?>('datasetId');
    description = registerOutput<String?>('description');
    encodingVersion = registerOutput<int?>('encodingVersion');
    maxCells = registerOutput<int>('maxCells');
    this.name = registerOutput<String>('name');
    numCells = registerOutput<int>('numCells');
    secret = registerOutput<bool?>('secret');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    uploads = registerOutput<List<ZeroTrustDlpDatasetUpload>>('uploads', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDatasetUpload>(guardedValue, (value) => ZeroTrustDlpDatasetUpload.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [ZeroTrustDlpDataset] resource.
  ZeroTrustDlpDataset.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDlpDataset:ZeroTrustDlpDataset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    caseSensitive = registerOutput<bool?>('caseSensitive');
    columns = registerOutput<List<ZeroTrustDlpDatasetColumn>>('columns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDatasetColumn>(guardedValue, (value) => ZeroTrustDlpDatasetColumn.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    dataset = registerOutput<ZeroTrustDlpDatasetDataset>('dataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDlpDatasetDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datasetId = registerOutput<String?>('datasetId');
    description = registerOutput<String?>('description');
    encodingVersion = registerOutput<int?>('encodingVersion');
    maxCells = registerOutput<int>('maxCells');
    this.name = registerOutput<String>('name');
    numCells = registerOutput<int>('numCells');
    secret = registerOutput<bool?>('secret');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    uploads = registerOutput<List<ZeroTrustDlpDatasetUpload>>('uploads', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDlpDatasetUpload>(guardedValue, (value) => ZeroTrustDlpDatasetUpload.fromMap((value as Map).cast<String, dynamic>())); });
    version = registerOutput<int>('version');
  }
}
