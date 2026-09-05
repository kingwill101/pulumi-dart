import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_args.dart';
import 'hci_deployment_setting_scale_unit.dart';
import 'hci_deployment_setting_state.dart';

/// Manages a Stack HCI Deployment Setting.
///
/// &gt; **Note:** Completion of the prerequisites of deploying the Azure Stack HCI in your environment is outside the scope of this document. For more details refer to the [Azure Stack HCI deployment sequence](https://learn.microsoft.com/en-us/azure-stack/hci/deploy/deployment-introduction#deployment-sequence). If you encounter issues completing the prerequisites, we'd recommend opening a ticket with Microsoft Support.
///
/// &gt; **Note:** During the deployment process, the service will generate additional resources, including a new Arc Bridge Appliance and a Custom Location containing several Stack HCI Storage Paths. The provider will attempt to remove these resources on the deletion or recreation of `azure.stack.HciDeploymentSetting`.
///
/// ## Import
///
/// Stack HCI Deployment Settings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciDeploymentSetting:HciDeploymentSetting example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.AzureStackHCI/clusters/clus1/deploymentSettings/default
/// ```
class HciDeploymentSetting extends pulumi.CustomResource {
  /// Specifies a list of IDs of Azure ARC machine resource to be part of cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<List<String>> arcResourceIds;
  /// One or more `scaleUnit` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<List<HciDeploymentSettingScaleUnit>> scaleUnits;
  /// The ID of the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<String> stackHciClusterId;
  /// The deployment template version. The format must be a set of numbers separated by dots such as `10.0.0.0`. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [HciDeploymentSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciDeploymentSetting]. {@macro pulumi_stack_hci_deployment_setting_hci_deployment_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciDeploymentSetting(
    String name, {
    HciDeploymentSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciDeploymentSetting:HciDeploymentSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    arcResourceIds = registerOutput<List<String>>('arcResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scaleUnits = registerOutput<List<HciDeploymentSettingScaleUnit>>('scaleUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HciDeploymentSettingScaleUnit>(guardedValue, (value) => HciDeploymentSettingScaleUnit.fromMap((value as Map).cast<String, dynamic>())); });
    stackHciClusterId = registerOutput<String>('stackHciClusterId');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [HciDeploymentSetting] resource's state with the given [name] and [id].
  static HciDeploymentSetting get(
    String name,
    pulumi.Input<String> id, {
    HciDeploymentSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HciDeploymentSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HciDeploymentSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciDeploymentSetting:HciDeploymentSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arcResourceIds = registerOutput<List<String>>('arcResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scaleUnits = registerOutput<List<HciDeploymentSettingScaleUnit>>('scaleUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HciDeploymentSettingScaleUnit>(guardedValue, (value) => HciDeploymentSettingScaleUnit.fromMap((value as Map).cast<String, dynamic>())); });
    stackHciClusterId = registerOutput<String>('stackHciClusterId');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [HciDeploymentSetting] resource.
  HciDeploymentSetting.reference(String urn)
    : super(
        'azure:stack/hciDeploymentSetting:HciDeploymentSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arcResourceIds = registerOutput<List<String>>('arcResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scaleUnits = registerOutput<List<HciDeploymentSettingScaleUnit>>('scaleUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HciDeploymentSettingScaleUnit>(guardedValue, (value) => HciDeploymentSettingScaleUnit.fromMap((value as Map).cast<String, dynamic>())); });
    stackHciClusterId = registerOutput<String>('stackHciClusterId');
    version = registerOutput<String>('version');
  }
}
