import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_data_catalog_args.dart';
import 'r2_data_catalog_maintenance_config.dart';
import 'r2_data_catalog_state.dart';

/// Accepted Permissions
///
/// - `Workers R2 Data Catalog Read`
/// - `Workers R2 Data Catalog Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2DataCatalog = new cloudflare.R2DataCatalog("example_r2_data_catalog", {
///     accountId: "0123456789abcdef0123456789abcdef",
///     bucketName: "my-data-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_data_catalog = cloudflare.R2DataCatalog("example_r2_data_catalog",
///     account_id="0123456789abcdef0123456789abcdef",
///     bucket_name="my-data-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2DataCatalog = new Cloudflare.R2DataCatalog("example_r2_data_catalog", new()
///     {
///         AccountId = "0123456789abcdef0123456789abcdef",
///         BucketName = "my-data-bucket",
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
/// 		_, err := cloudflare.NewR2DataCatalog(ctx, "example_r2_data_catalog", &cloudflare.R2DataCatalogArgs{
/// 			AccountId:  pulumi.String("0123456789abcdef0123456789abcdef"),
/// 			BucketName: pulumi.String("my-data-bucket"),
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
/// resource "cloudflare_r2datacatalog" "example_r2_data_catalog" {
///   account_id  = "0123456789abcdef0123456789abcdef"
///   bucket_name = "my-data-bucket"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2DataCatalog;
/// import com.pulumi.cloudflare.R2DataCatalogArgs;
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
///         var exampleR2DataCatalog = new R2DataCatalog("exampleR2DataCatalog", R2DataCatalogArgs.builder()
///             .accountId("0123456789abcdef0123456789abcdef")
///             .bucketName("my-data-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2DataCatalog:
///     type: cloudflare:R2DataCatalog
///     name: example_r2_data_catalog
///     properties:
///       accountId: 0123456789abcdef0123456789abcdef
///       bucketName: my-data-bucket
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/r2DataCatalog:R2DataCatalog example '<account_id>/<bucket_name>'
/// ```
class R2DataCatalog extends pulumi.CustomResource {
  /// Use this to identify the account.
  late final pulumi.Output<String> accountId;
  /// Specifies the associated R2 bucket name.
  late final pulumi.Output<String> bucket;
  /// Specifies the R2 bucket name.
  late final pulumi.Output<String> bucketName;
  /// Shows the credential configuration status.
  /// Available values: "present", "absent".
  late final pulumi.Output<String> credentialStatus;
  /// Configures maintenance for the catalog.
  late final pulumi.Output<R2DataCatalogMaintenanceConfig> maintenanceConfig;
  /// Specifies the catalog name (generated from account and bucket name).
  late final pulumi.Output<String> name;
  /// Indicates the status of the catalog.
  /// Available values: "active", "inactive".
  late final pulumi.Output<String> status;

  /// Creates a new [R2DataCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2DataCatalog]. {@macro pulumi_index_r2_data_catalog_r2_data_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2DataCatalog(
    String name, {
    R2DataCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2DataCatalog:R2DataCatalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucket = registerOutput<String>('bucket');
    bucketName = registerOutput<String>('bucketName');
    credentialStatus = registerOutput<String>('credentialStatus');
    maintenanceConfig = registerOutput<R2DataCatalogMaintenanceConfig>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2DataCatalogMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [R2DataCatalog] resource's state with the given [name] and [id].
  static R2DataCatalog get(
    String name,
    pulumi.Input<String> id, {
    R2DataCatalogState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2DataCatalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2DataCatalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2DataCatalog:R2DataCatalog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucket = registerOutput<String>('bucket');
    bucketName = registerOutput<String>('bucketName');
    credentialStatus = registerOutput<String>('credentialStatus');
    maintenanceConfig = registerOutput<R2DataCatalogMaintenanceConfig>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2DataCatalogMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [R2DataCatalog] resource.
  R2DataCatalog.reference(String urn)
    : super(
        'cloudflare:index/r2DataCatalog:R2DataCatalog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucket = registerOutput<String>('bucket');
    bucketName = registerOutput<String>('bucketName');
    credentialStatus = registerOutput<String>('credentialStatus');
    maintenanceConfig = registerOutput<R2DataCatalogMaintenanceConfig>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2DataCatalogMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
  }
}
