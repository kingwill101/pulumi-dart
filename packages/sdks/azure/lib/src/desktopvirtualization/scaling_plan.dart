import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_args.dart';
import 'scaling_plan_host_pool.dart';
import 'scaling_plan_schedule.dart';
import 'scaling_plan_state.dart';

/// Manages a Virtual Desktop Scaling Plan.
///
/// ## Disclaimers
///
/// &gt; **Note:** Scaling Plans are currently in preview and are only supported in a limited number of regions. Both the Scaling Plan and any referenced Host Pools must be deployed in a supported region. [Autoscale (preview) for Azure Virtual Desktop host pools](https://docs.microsoft.com/azure/virtual-desktop/autoscale-scaling-plan).
///
/// &gt; **Note:** Scaling Plans require specific permissions to be granted to the Windows Virtual Desktop application before a 'host_pool' can be configured. [Required Permissions for Scaling Plans](https://docs.microsoft.com/azure/virtual-desktop/autoscale-scaling-plan#create-a-custom-rbac-role).
///
/// ## Import
///
/// Virtual Desktop Scaling Plans can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/scalingPlan:ScalingPlan example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.DesktopVirtualization/scalingPlans/plan1
/// ```
class ScalingPlan extends pulumi.CustomResource {
  /// A description of the Scaling Plan.
  late final pulumi.Output<String?> description;
  /// The name of the tag associated with the VMs you want to exclude from autoscaling.
  late final pulumi.Output<String?> exclusionTag;
  /// Friendly name of the Scaling Plan.
  late final pulumi.Output<String?> friendlyName;
  /// One or more `hostPool` blocks as defined below.
  late final pulumi.Output<List<ScalingPlanHostPool>> hostPools;
  /// The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `schedule` blocks as defined below.
  late final pulumi.Output<List<ScalingPlanSchedule>> schedules;
  /// A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan .
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  late final pulumi.Output<String> timeZone;

  /// Creates a new [ScalingPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingPlan]. {@macro pulumi_desktopvirtualization_scaling_plan_scaling_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingPlan(
    String name, {
    ScalingPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/scalingPlan:ScalingPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    description = registerOutput<String?>('description');
    exclusionTag = registerOutput<String?>('exclusionTag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPools = registerOutput<List<ScalingPlanHostPool>>('hostPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScalingPlanHostPool>(guardedValue, (value) => ScalingPlanHostPool.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schedules = registerOutput<List<ScalingPlanSchedule>>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScalingPlanSchedule>(guardedValue, (value) => ScalingPlanSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeZone = registerOutput<String>('timeZone');
  }

  /// Gets an existing [ScalingPlan] resource's state with the given [name] and [id].
  static ScalingPlan get(
    String name,
    pulumi.Input<String> id, {
    ScalingPlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ScalingPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ScalingPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/scalingPlan:ScalingPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    exclusionTag = registerOutput<String?>('exclusionTag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPools = registerOutput<List<ScalingPlanHostPool>>('hostPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScalingPlanHostPool>(guardedValue, (value) => ScalingPlanHostPool.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schedules = registerOutput<List<ScalingPlanSchedule>>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScalingPlanSchedule>(guardedValue, (value) => ScalingPlanSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeZone = registerOutput<String>('timeZone');
  }

  /// Creates a typed reference to an existing [ScalingPlan] resource.
  ScalingPlan.reference(String urn)
    : super(
        'azure:desktopvirtualization/scalingPlan:ScalingPlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    exclusionTag = registerOutput<String?>('exclusionTag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPools = registerOutput<List<ScalingPlanHostPool>>('hostPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScalingPlanHostPool>(guardedValue, (value) => ScalingPlanHostPool.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schedules = registerOutput<List<ScalingPlanSchedule>>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScalingPlanSchedule>(guardedValue, (value) => ScalingPlanSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeZone = registerOutput<String>('timeZone');
  }
}
