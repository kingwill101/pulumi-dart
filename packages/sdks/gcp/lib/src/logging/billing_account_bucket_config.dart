import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_bucket_config_args.dart';
import 'billing_account_bucket_config_cmek_settings.dart';
import 'billing_account_bucket_config_index_config.dart';
import 'billing_account_bucket_config_state.dart';

/// Manages a billing account level logging bucket config. For more information see
/// [the official logging documentation](https://cloud.google.com/logging/docs/) and
/// [Storing Logs](https://cloud.google.com/logging/docs/storage).
///
/// &gt; **Note:** Logging buckets are automatically created for a given folder, project, organization, billingAccount and cannot be deleted. Creating a resource of this type will acquire and update the resource that already exists at the desired location. These buckets cannot be removed so deleting this resource will remove the bucket config from your state but will leave the logging bucket unchanged. The buckets that are currently automatically created are "_Default" and "_Required".
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.organizations.getBillingAccount({
///     billingAccount: "00AA00-000AAA-00AA0A",
/// });
/// const basic = new gcp.logging.BillingAccountBucketConfig("basic", {
///     billingAccount: _default.then(_default => _default.billingAccount),
///     location: "global",
///     retentionDays: 30,
///     bucketId: "_Default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.get_billing_account(billing_account="00AA00-000AAA-00AA0A")
/// basic = gcp.logging.BillingAccountBucketConfig("basic",
///     billing_account=default.billing_account,
///     location="global",
///     retention_days=30,
///     bucket_id="_Default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "00AA00-000AAA-00AA0A",
///     });
///
///     var basic = new Gcp.Logging.BillingAccountBucketConfig("basic", new()
///     {
///         BillingAccount = @default.Apply(@default => @default.Apply(getBillingAccountResult => getBillingAccountResult.BillingAccount)),
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "_Default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("00AA00-000AAA-00AA0A"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewBillingAccountBucketConfig(ctx, "basic", &logging.BillingAccountBucketConfigArgs{
/// 			BillingAccount: pulumi.String(_default.BillingAccount),
/// 			Location:       pulumi.String("global"),
/// 			RetentionDays:  pulumi.Int(30),
/// 			BucketId:       pulumi.String("_Default"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getbillingaccount" "default" {
///   billing_account = "00AA00-000AAA-00AA0A"
/// }
///
/// resource "gcp_logging_billingaccountbucketconfig" "basic" {
///   billing_account = data.gcp_organizations_getbillingaccount.default.billing_account
///   location        = "global"
///   retention_days  = 30
///   bucket_id       = "_Default"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.logging.BillingAccountBucketConfig;
/// import com.pulumi.gcp.logging.BillingAccountBucketConfigArgs;
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
///         final var default = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("00AA00-000AAA-00AA0A")
///             .build());
///
///         var basic = new BillingAccountBucketConfig("basic", BillingAccountBucketConfigArgs.builder()
///             .billingAccount(default_.billingAccount())
///             .location("global")
///             .retentionDays(30)
///             .bucketId("_Default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:logging:BillingAccountBucketConfig
///     properties:
///       billingAccount: ${default.billingAccount}
///       location: global
///       retentionDays: 30
///       bucketId: _Default
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 00AA00-000AAA-00AA0A
/// ```
///
///
/// Create logging bucket with index configs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_billing_account_bucket_index_configs = new gcp.logging.BillingAccountBucketConfig("example-billing-account-bucket-index-configs", {
///     folder: _default.billingAccount,
///     location: "global",
///     retentionDays: 30,
///     bucketId: "_Default",
///     indexConfigs: [{
///         fieldPath: "jsonPayload.request.status",
///         type: "INDEX_TYPE_STRING",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_billing_account_bucket_index_configs = gcp.logging.BillingAccountBucketConfig("example-billing-account-bucket-index-configs",
///     folder=default["billingAccount"],
///     location="global",
///     retention_days=30,
///     bucket_id="_Default",
///     index_configs=[{
///         "field_path": "jsonPayload.request.status",
///         "type": "INDEX_TYPE_STRING",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_billing_account_bucket_index_configs = new Gcp.Logging.BillingAccountBucketConfig("example-billing-account-bucket-index-configs", new()
///     {
///         Folder = @default.BillingAccount,
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "_Default",
///         IndexConfigs = new[]
///         {
///             new Gcp.Logging.Inputs.BillingAccountBucketConfigIndexConfigArgs
///             {
///                 FieldPath = "jsonPayload.request.status",
///                 Type = "INDEX_TYPE_STRING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewBillingAccountBucketConfig(ctx, "example-billing-account-bucket-index-configs", &logging.BillingAccountBucketConfigArgs{
/// 			Folder:        _default.BillingAccount,
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("_Default"),
/// 			IndexConfigs: logging.BillingAccountBucketConfigIndexConfigArray{
/// 				&logging.BillingAccountBucketConfigIndexConfigArgs{
/// 					FieldPath: pulumi.String("jsonPayload.request.status"),
/// 					Type:      pulumi.String("INDEX_TYPE_STRING"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_logging_billingaccountbucketconfig" "example-billing-account-bucket-index-configs" {
///   folder         = default.billingAccount
///   location       = "global"
///   retention_days = 30
///   bucket_id      = "_Default"
///   index_configs {
///     field_path = "jsonPayload.request.status"
///     type       = "INDEX_TYPE_STRING"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.BillingAccountBucketConfig;
/// import com.pulumi.gcp.logging.BillingAccountBucketConfigArgs;
/// import com.pulumi.gcp.logging.inputs.BillingAccountBucketConfigIndexConfigArgs;
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
///         var example_billing_account_bucket_index_configs = new BillingAccountBucketConfig("example-billing-account-bucket-index-configs", BillingAccountBucketConfigArgs.builder()
///             .folder(default_.get("billingAccount"))
///             .location("global")
///             .retentionDays(30)
///             .bucketId("_Default")
///             .indexConfigs(BillingAccountBucketConfigIndexConfigArgs.builder()
///                 .fieldPath("jsonPayload.request.status")
///                 .type("INDEX_TYPE_STRING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-billing-account-bucket-index-configs:
///     type: gcp:logging:BillingAccountBucketConfig
///     properties:
///       folder: ${default.billingAccount}
///       location: global
///       retentionDays: 30
///       bucketId: _Default
///       indexConfigs:
///         - fieldPath: jsonPayload.request.status
///           type: INDEX_TYPE_STRING
/// ```
///
///
/// ## Import
///
/// This resource can be imported using the following format:
///
/// * `billingAccounts/{{billingAccount}}/locations/{{location}}/buckets/{{bucket_id}}`
///
///
/// When using the `pulumi import` command, this resource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/billingAccountBucketConfig:BillingAccountBucketConfig default billingAccounts/{{billingAccount}}/locations/{{location}}/buckets/{{bucket_id}}
/// ```
class BillingAccountBucketConfig extends pulumi.CustomResource {
  /// The parent resource that contains the logging bucket.
  late final pulumi.Output<String> billingAccount;
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  late final pulumi.Output<String> bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  late final pulumi.Output<BillingAccountBucketConfigCmekSettings?> cmekSettings;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Describes this bucket.
  late final pulumi.Output<String> description;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  late final pulumi.Output<List<BillingAccountBucketConfigIndexConfig>> indexConfigs;
  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  late final pulumi.Output<String> lifecycleState;
  /// The location of the bucket.
  late final pulumi.Output<String> location;
  /// The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  late final pulumi.Output<String> name;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  late final pulumi.Output<int?> retentionDays;

  /// Creates a new [BillingAccountBucketConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingAccountBucketConfig]. {@macro pulumi_logging_billing_account_bucket_config_billing_account_bucket_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingAccountBucketConfig(
    String name, {
    BillingAccountBucketConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountBucketConfig:BillingAccountBucketConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    billingAccount = registerOutput<String>('billingAccount');
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<BillingAccountBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingAccountBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    indexConfigs = registerOutput<List<BillingAccountBucketConfigIndexConfig>>('indexConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BillingAccountBucketConfigIndexConfig>(guardedValue, (value) => BillingAccountBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Gets an existing [BillingAccountBucketConfig] resource's state with the given [name] and [id].
  static BillingAccountBucketConfig get(
    String name,
    pulumi.Input<String> id, {
    BillingAccountBucketConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BillingAccountBucketConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BillingAccountBucketConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountBucketConfig:BillingAccountBucketConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccount = registerOutput<String>('billingAccount');
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<BillingAccountBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingAccountBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    indexConfigs = registerOutput<List<BillingAccountBucketConfigIndexConfig>>('indexConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BillingAccountBucketConfigIndexConfig>(guardedValue, (value) => BillingAccountBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Creates a typed reference to an existing [BillingAccountBucketConfig] resource.
  BillingAccountBucketConfig.reference(String urn)
    : super(
        'gcp:logging/billingAccountBucketConfig:BillingAccountBucketConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    billingAccount = registerOutput<String>('billingAccount');
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<BillingAccountBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingAccountBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    indexConfigs = registerOutput<List<BillingAccountBucketConfigIndexConfig>>('indexConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BillingAccountBucketConfigIndexConfig>(guardedValue, (value) => BillingAccountBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())); });
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    retentionDays = registerOutput<int?>('retentionDays');
  }
}
