import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_bucket_config_args.dart';
import 'organization_bucket_config_cmek_settings.dart';
import 'organization_bucket_config_state.dart';

/// Manages a organization-level logging bucket config. For more information see
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
/// const _default = gcp.organizations.getOrganization({
///     organization: "123456789",
/// });
/// const basic = new gcp.logging.OrganizationBucketConfig("basic", {
///     organization: _default.then(_default => _default.organization),
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
/// default = gcp.organizations.get_organization(organization="123456789")
/// basic = gcp.logging.OrganizationBucketConfig("basic",
///     organization=default.organization,
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
///     var @default = Gcp.Organizations.GetOrganization.Invoke(new()
///     {
///         Organization = "123456789",
///     });
///
///     var basic = new Gcp.Logging.OrganizationBucketConfig("basic", new()
///     {
///         Organization = @default.Apply(@default => @default.Apply(getOrganizationResult => getOrganizationResult.Organization)),
///         Location = "global",
///         RetentionDays = 30,
///         BucketId = "_Default",
///         IndexConfigs = new[]
///         {
///             new Gcp.Logging.Inputs.OrganizationBucketConfigIndexConfigArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.GetOrganization(ctx, &organizations.GetOrganizationArgs{
/// 			Organization: pulumi.StringRef("123456789"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logging.NewOrganizationBucketConfig(ctx, "basic", &logging.OrganizationBucketConfigArgs{
/// 			Organization:  pulumi.String(_default.Organization),
/// 			Location:      pulumi.String("global"),
/// 			RetentionDays: pulumi.Int(30),
/// 			BucketId:      pulumi.String("_Default"),
/// 			IndexConfigs: logging.OrganizationBucketConfigIndexConfigArray{
/// 				&logging.OrganizationBucketConfigIndexConfigArgs{
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
/// data "gcp_organizations_getorganization" "default" {
///   organization = "123456789"
/// }
///
/// resource "gcp_logging_organizationbucketconfig" "basic" {
///   organization   = data.gcp_organizations_getorganization.default.organization
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.gcp.logging.OrganizationBucketConfig;
/// import com.pulumi.gcp.logging.OrganizationBucketConfigArgs;
/// import com.pulumi.gcp.logging.inputs.OrganizationBucketConfigIndexConfigArgs;
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
///         final var default = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .organization("123456789")
///             .build());
///
///         var basic = new OrganizationBucketConfig("basic", OrganizationBucketConfigArgs.builder()
///             .organization(default_.organization())
///             .location("global")
///             .retentionDays(30)
///             .bucketId("_Default")
///             .indexConfigs(OrganizationBucketConfigIndexConfigArgs.builder()
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
///   basic:
///     type: gcp:logging:OrganizationBucketConfig
///     properties:
///       organization: ${default.organization}
///       location: global
///       retentionDays: 30
///       bucketId: _Default
///       indexConfigs:
///         - fieldPath: jsonPayload.request.status
///           type: INDEX_TYPE_STRING
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:organizations:getOrganization
///       arguments:
///         organization: '123456789'
/// ```
///
///
/// ## Import
///
/// This resource can be imported using the following format:
///
/// * `organizations/{{organization}}/locations/{{location}}/buckets/{{bucket_id}}`
///
///
/// When using the `pulumi import` command, this resource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationBucketConfig:OrganizationBucketConfig default organizations/{{organization}}/locations/{{location}}/buckets/{{bucket_id}}
/// ```
class OrganizationBucketConfig extends pulumi.CustomResource {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  late final pulumi.Output<String> bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  late final pulumi.Output<OrganizationBucketConfigCmekSettings?> cmekSettings;
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
  late final pulumi.Output<List<Map<String, dynamic>>> indexConfigs;
  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  late final pulumi.Output<String> lifecycleState;
  /// The location of the bucket. The supported locations are: "global" "us-central1"
  late final pulumi.Output<String> location;
  /// The resource name of the bucket. For example: "organizations/my-organization-id/locations/my-location/buckets/my-bucket-id"
  late final pulumi.Output<String> name;
  /// The parent resource that contains the logging bucket.
  late final pulumi.Output<String> organization;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  late final pulumi.Output<int?> retentionDays;

  /// Creates a new [OrganizationBucketConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationBucketConfig]. {@macro pulumi_logging_organization_bucket_config_organization_bucket_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationBucketConfig(
    String name, {
    OrganizationBucketConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationBucketConfig:OrganizationBucketConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<OrganizationBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    indexConfigs = registerOutput<List<Map<String, dynamic>>>('indexConfigs');
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Gets an existing [OrganizationBucketConfig] resource's state with the given [name] and [id].
  static OrganizationBucketConfig get(
    String name,
    pulumi.Input<String> id, {
    OrganizationBucketConfigState? state,
  }) {
    return OrganizationBucketConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationBucketConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationBucketConfig:OrganizationBucketConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<OrganizationBucketConfigCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationBucketConfigCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    indexConfigs = registerOutput<List<Map<String, dynamic>>>('indexConfigs');
    lifecycleState = registerOutput<String>('lifecycleState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    retentionDays = registerOutput<int?>('retentionDays');
  }
}
