import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowlist_custom_alert_rule_response.dart';
import 'denylist_custom_alert_rule_response.dart';
import 'device_security_group_args.dart';
import 'system_data_response.dart';
import 'threshold_custom_alert_rule_response.dart';
import 'time_window_custom_alert_rule_response.dart';

/// The device security group resource
///
/// Uses Azure REST API version 2019-08-01. In version 2.x of the Azure Native provider, it used API version 2019-08-01.
///
/// Other available API versions: 2017-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a device security group for the specified IoT hub resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deviceSecurityGroup = new AzureNative.Security.DeviceSecurityGroup("deviceSecurityGroup", new()
///     {
///         DeviceSecurityGroupName = "samplesecuritygroup",
///         ResourceId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub",
///         TimeWindowRules = new[]
///         {
///             null,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewDeviceSecurityGroup(ctx, "deviceSecurityGroup", &security.DeviceSecurityGroupArgs{
/// 			DeviceSecurityGroupName: pulumi.String("samplesecuritygroup"),
/// 			ResourceId:              pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub"),
/// 			TimeWindowRules: security.TimeWindowCustomAlertRuleArray{
/// 				&security.TimeWindowCustomAlertRuleArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_security_devicesecuritygroup" "deviceSecurityGroup" {
///   device_security_group_name = "samplesecuritygroup"
///   resource_id                = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub"
///   time_window_rules {
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.DeviceSecurityGroup;
/// import com.pulumi.azurenative.security.DeviceSecurityGroupArgs;
/// import com.pulumi.azurenative.security.inputs.TimeWindowCustomAlertRuleArgs;
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
///         var deviceSecurityGroup = new DeviceSecurityGroup("deviceSecurityGroup", DeviceSecurityGroupArgs.builder()
///             .deviceSecurityGroupName("samplesecuritygroup")
///             .resourceId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub")
///             .timeWindowRules(TimeWindowCustomAlertRuleArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const deviceSecurityGroup = new azure_native.security.DeviceSecurityGroup("deviceSecurityGroup", {
///     deviceSecurityGroupName: "samplesecuritygroup",
///     resourceId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub",
///     timeWindowRules: [{}],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// device_security_group = azure_native.security.DeviceSecurityGroup("deviceSecurityGroup",
///     device_security_group_name="samplesecuritygroup",
///     resource_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub",
///     time_window_rules=[{}])
///
/// ```
///
/// ```yaml
/// resources:
///   deviceSecurityGroup:
///     type: azure-native:security:DeviceSecurityGroup
///     properties:
///       deviceSecurityGroupName: samplesecuritygroup
///       resourceId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/SampleRG/providers/Microsoft.Devices/iotHubs/sampleiothub
///       timeWindowRules:
///         - {}
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:security:DeviceSecurityGroup samplesecuritygroup /{resourceId}/providers/Microsoft.Security/deviceSecurityGroups/{deviceSecurityGroupName}
/// ```
class DeviceSecurityGroup extends pulumi.CustomResource {
  /// The allow-list custom alert rules.
  late final pulumi.Output<List<AllowlistCustomAlertRuleResponse>?> allowlistRules;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The deny-list custom alert rules.
  late final pulumi.Output<List<DenylistCustomAlertRuleResponse>?> denylistRules;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The list of custom alert threshold rules.
  late final pulumi.Output<List<ThresholdCustomAlertRuleResponse>?> thresholdRules;
  /// The list of custom alert time-window rules.
  late final pulumi.Output<List<TimeWindowCustomAlertRuleResponse>?> timeWindowRules;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeviceSecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceSecurityGroup]. {@macro pulumi_security_device_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceSecurityGroup(
    String name, {
    DeviceSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:DeviceSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowlistRules = registerOutput<List<AllowlistCustomAlertRuleResponse>?>('allowlistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AllowlistCustomAlertRuleResponse>(guardedValue, (value) => AllowlistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    denylistRules = registerOutput<List<DenylistCustomAlertRuleResponse>?>('denylistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenylistCustomAlertRuleResponse>(guardedValue, (value) => DenylistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thresholdRules = registerOutput<List<ThresholdCustomAlertRuleResponse>?>('thresholdRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThresholdCustomAlertRuleResponse>(guardedValue, (value) => ThresholdCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    timeWindowRules = registerOutput<List<TimeWindowCustomAlertRuleResponse>?>('timeWindowRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeWindowCustomAlertRuleResponse>(guardedValue, (value) => TimeWindowCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DeviceSecurityGroup] resource.
  DeviceSecurityGroup.reference(String urn)
    : super(
        'azure-native:security:DeviceSecurityGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowlistRules = registerOutput<List<AllowlistCustomAlertRuleResponse>?>('allowlistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AllowlistCustomAlertRuleResponse>(guardedValue, (value) => AllowlistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    denylistRules = registerOutput<List<DenylistCustomAlertRuleResponse>?>('denylistRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenylistCustomAlertRuleResponse>(guardedValue, (value) => DenylistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thresholdRules = registerOutput<List<ThresholdCustomAlertRuleResponse>?>('thresholdRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThresholdCustomAlertRuleResponse>(guardedValue, (value) => ThresholdCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    timeWindowRules = registerOutput<List<TimeWindowCustomAlertRuleResponse>?>('timeWindowRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeWindowCustomAlertRuleResponse>(guardedValue, (value) => TimeWindowCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
