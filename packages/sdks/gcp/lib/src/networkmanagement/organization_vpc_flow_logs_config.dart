import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_vpc_flow_logs_config_args.dart';
import 'organization_vpc_flow_logs_config_state.dart';

/// VPC Flow Logs Config is a resource that lets you configure Flow Logs for Organization.
///
///
///
/// ## Example Usage
///
/// ### Network Management Org Vpc Flow Logs Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const org_test = new gcp.networkmanagement.OrganizationVpcFlowLogsConfig("org-test", {
///     vpcFlowLogsConfigId: "basic-org-test-id",
///     location: "global",
///     organization: "123456789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// org_test = gcp.networkmanagement.OrganizationVpcFlowLogsConfig("org-test",
///     vpc_flow_logs_config_id="basic-org-test-id",
///     location="global",
///     organization="123456789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org_test = new Gcp.NetworkManagement.OrganizationVpcFlowLogsConfig("org-test", new()
///     {
///         VpcFlowLogsConfigId = "basic-org-test-id",
///         Location = "global",
///         Organization = "123456789",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanagement.NewOrganizationVpcFlowLogsConfig(ctx, "org-test", &networkmanagement.OrganizationVpcFlowLogsConfigArgs{
/// 			VpcFlowLogsConfigId: pulumi.String("basic-org-test-id"),
/// 			Location:            pulumi.String("global"),
/// 			Organization:        pulumi.String("123456789"),
/// 		})
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
/// import com.pulumi.gcp.networkmanagement.OrganizationVpcFlowLogsConfig;
/// import com.pulumi.gcp.networkmanagement.OrganizationVpcFlowLogsConfigArgs;
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
///         var org_test = new OrganizationVpcFlowLogsConfig("org-test", OrganizationVpcFlowLogsConfigArgs.builder()
///             .vpcFlowLogsConfigId("basic-org-test-id")
///             .location("global")
///             .organization("123456789")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   org-test:
///     type: gcp:networkmanagement:OrganizationVpcFlowLogsConfig
///     properties:
///       vpcFlowLogsConfigId: basic-org-test-id
///       location: global
///       organization: '123456789'
/// ```
///
///
/// ## Import
///
/// OrganizationVpcFlowLogsConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}`
///
/// * `{{organization}}/{{location}}/{{vpc_flow_logs_config_id}}`
///
/// When using the `pulumi import` command, OrganizationVpcFlowLogsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig default organizations/{{organization}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig default {{organization}}/{{location}}/{{vpc_flow_logs_config_id}}
/// ```
class OrganizationVpcFlowLogsConfig extends pulumi.CustomResource {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values: INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  late final pulumi.Output<String> aggregationInterval;
  /// Output only. The time the config was created.
  late final pulumi.Output<String> createTime;
  /// Determines whether to include cross project annotations in the logs.
  /// This field is available only for organization configurations. If not
  /// specified in org configs will be set to CROSS_PROJECT_METADATA_ENABLED.
  /// Possible values:
  /// CROSS_PROJECT_METADATA_ENABLED
  /// CROSS_PROJECT_METADATA_DISABLED
  /// Possible values are: `CROSS_PROJECT_METADATA_ENABLED`, `CROSS_PROJECT_METADATA_DISABLED`.
  late final pulumi.Output<String> crossProjectMetadata;
  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  late final pulumi.Output<String?> filterExpr;
  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0
  late final pulumi.Output<double> flowSampling;
  /// Optional. Resource labels to represent the user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  late final pulumi.Output<String> location;
  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  late final pulumi.Output<String> metadata;
  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  late final pulumi.Output<List<String>?> metadataFields;
  /// Identifier. Unique name of the configuration using the form:     `organizations/{org_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  late final pulumi.Output<String> name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> organization;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: ENABLED DISABLED
  late final pulumi.Output<String> state;
  /// Output only. The time the config was updated.
  late final pulumi.Output<String> updateTime;
  /// Required. ID of the `VpcFlowLogsConfig`.
  late final pulumi.Output<String> vpcFlowLogsConfigId;

  /// Creates a new [OrganizationVpcFlowLogsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationVpcFlowLogsConfig]. {@macro pulumi_networkmanagement_organization_vpc_flow_logs_config_organization_vpc_flow_logs_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationVpcFlowLogsConfig(
    String name, {
    OrganizationVpcFlowLogsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationInterval = registerOutput<String>('aggregationInterval');
    createTime = registerOutput<String>('createTime');
    crossProjectMetadata = registerOutput<String>('crossProjectMetadata');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterExpr = registerOutput<String?>('filterExpr');
    flowSampling = registerOutput<double>('flowSampling');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    metadataFields = registerOutput<List<String>?>('metadataFields');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    vpcFlowLogsConfigId = registerOutput<String>('vpcFlowLogsConfigId');
  }

  /// Gets an existing [OrganizationVpcFlowLogsConfig] resource's state with the given [name] and [id].
  static OrganizationVpcFlowLogsConfig get(
    String name,
    pulumi.Input<String> id, {
    OrganizationVpcFlowLogsConfigState? state,
  }) {
    return OrganizationVpcFlowLogsConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationVpcFlowLogsConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/organizationVpcFlowLogsConfig:OrganizationVpcFlowLogsConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationInterval = registerOutput<String>('aggregationInterval');
    createTime = registerOutput<String>('createTime');
    crossProjectMetadata = registerOutput<String>('crossProjectMetadata');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterExpr = registerOutput<String?>('filterExpr');
    flowSampling = registerOutput<double>('flowSampling');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    metadataFields = registerOutput<List<String>?>('metadataFields');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    vpcFlowLogsConfigId = registerOutput<String>('vpcFlowLogsConfigId');
  }
}
