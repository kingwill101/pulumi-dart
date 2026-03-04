// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerActionsSummaryResponse {
  /// The total number of instances in the managed instance group that are scheduled to be abandoned. Abandoning an instance removes it from the managed instance group without deleting it.
  final pulumi.Input<int> abandoning;

  /// The number of instances in the managed instance group that are scheduled to be created or are currently being created. If the group fails to create any of these instances, it tries again until it creates the instance successfully. If you have disabled creation retries, this field will not be populated; instead, the creatingWithoutRetries field will be populated.
  final pulumi.Input<int> creating;

  /// The number of instances that the managed instance group will attempt to create atomically, in a batch mode. If the desired count of instances can not be created, entire batch will be deleted and the group will decrease its targetSize value accordingly.
  final pulumi.Input<int> creatingAtomically;

  /// The number of instances that the managed instance group will attempt to create. The group attempts to create each instance only once. If the group fails to create any of these instances, it decreases the group's targetSize value accordingly.
  final pulumi.Input<int> creatingWithoutRetries;

  /// The number of instances in the managed instance group that are scheduled to be deleted or are currently being deleted.
  final pulumi.Input<int> deleting;

  /// The number of instances in the managed instance group that are running and have no scheduled actions.
  final pulumi.Input<int> none;

  /// The number of instances that the managed instance group is currently queuing.
  final pulumi.Input<int> queuing;

  /// The number of instances in the managed instance group that are scheduled to be recreated or are currently being being recreated. Recreating an instance deletes the existing root persistent disk and creates a new disk from the image that is defined in the instance template.
  final pulumi.Input<int> recreating;

  /// The number of instances in the managed instance group that are being reconfigured with properties that do not require a restart or a recreate action. For example, setting or removing target pools for the instance.
  final pulumi.Input<int> refreshing;

  /// The number of instances in the managed instance group that are scheduled to be restarted or are currently being restarted.
  final pulumi.Input<int> restarting;

  /// The number of instances in the managed instance group that are scheduled to be resumed or are currently being resumed.
  final pulumi.Input<int> resuming;

  /// The number of instances in the managed instance group that are scheduled to be started or are currently being started.
  final pulumi.Input<int> starting;

  /// The number of instances in the managed instance group that are scheduled to be stopped or are currently being stopped.
  final pulumi.Input<int> stopping;

  /// The number of instances in the managed instance group that are scheduled to be suspended or are currently being suspended.
  final pulumi.Input<int> suspending;

  /// The number of instances in the managed instance group that are being verified. See the managedInstances[].currentAction property in the listManagedInstances method documentation.
  final pulumi.Input<int> verifying;

  /// Creates a new [InstanceGroupManagerActionsSummaryResponse].
  /// [abandoning] The total number of instances in the managed instance group that are scheduled to be abandoned. Abandoning an instance removes it from the managed instance group without deleting it.
  /// [creating] The number of instances in the managed instance group that are scheduled to be created or are currently being created. If the group fails to create any of these instances, it tries again until it creates the instance successfully. If you have disabled creation retries, this field will not be populated; instead, the creatingWithoutRetries field will be populated.
  /// [creatingAtomically] The number of instances that the managed instance group will attempt to create atomically, in a batch mode. If the desired count of instances can not be created, entire batch will be deleted and the group will decrease its targetSize value accordingly.
  /// [creatingWithoutRetries] The number of instances that the managed instance group will attempt to create. The group attempts to create each instance only once. If the group fails to create any of these instances, it decreases the group's targetSize value accordingly.
  /// [deleting] The number of instances in the managed instance group that are scheduled to be deleted or are currently being deleted.
  /// [none] The number of instances in the managed instance group that are running and have no scheduled actions.
  /// [queuing] The number of instances that the managed instance group is currently queuing.
  /// [recreating] The number of instances in the managed instance group that are scheduled to be recreated or are currently being being recreated. Recreating an instance deletes the existing root persistent disk and creates a new disk from the image that is defined in the instance template.
  /// [refreshing] The number of instances in the managed instance group that are being reconfigured with properties that do not require a restart or a recreate action. For example, setting or removing target pools for the instance.
  /// [restarting] The number of instances in the managed instance group that are scheduled to be restarted or are currently being restarted.
  /// [resuming] The number of instances in the managed instance group that are scheduled to be resumed or are currently being resumed.
  /// [starting] The number of instances in the managed instance group that are scheduled to be started or are currently being started.
  /// [stopping] The number of instances in the managed instance group that are scheduled to be stopped or are currently being stopped.
  /// [suspending] The number of instances in the managed instance group that are scheduled to be suspended or are currently being suspended.
  /// [verifying] The number of instances in the managed instance group that are being verified. See the managedInstances[].currentAction property in the listManagedInstances method documentation.
  InstanceGroupManagerActionsSummaryResponse({
    required this.abandoning,
    required this.creating,
    required this.creatingAtomically,
    required this.creatingWithoutRetries,
    required this.deleting,
    required this.none,
    required this.queuing,
    required this.recreating,
    required this.refreshing,
    required this.restarting,
    required this.resuming,
    required this.starting,
    required this.stopping,
    required this.suspending,
    required this.verifying,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abandoning': abandoning,
      'creating': creating,
      'creatingAtomically': creatingAtomically,
      'creatingWithoutRetries': creatingWithoutRetries,
      'deleting': deleting,
      'none': none,
      'queuing': queuing,
      'recreating': recreating,
      'refreshing': refreshing,
      'restarting': restarting,
      'resuming': resuming,
      'starting': starting,
      'stopping': stopping,
      'suspending': suspending,
      'verifying': verifying,
    };
  }

  factory InstanceGroupManagerActionsSummaryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerActionsSummaryResponse(
      abandoning: pulumi.Input.fromValue(map['abandoning'] as int),
      creating: pulumi.Input.fromValue(map['creating'] as int),
      creatingAtomically: pulumi.Input.fromValue(
        map['creatingAtomically'] as int,
      ),
      creatingWithoutRetries: pulumi.Input.fromValue(
        map['creatingWithoutRetries'] as int,
      ),
      deleting: pulumi.Input.fromValue(map['deleting'] as int),
      none: pulumi.Input.fromValue(map['none'] as int),
      queuing: pulumi.Input.fromValue(map['queuing'] as int),
      recreating: pulumi.Input.fromValue(map['recreating'] as int),
      refreshing: pulumi.Input.fromValue(map['refreshing'] as int),
      restarting: pulumi.Input.fromValue(map['restarting'] as int),
      resuming: pulumi.Input.fromValue(map['resuming'] as int),
      starting: pulumi.Input.fromValue(map['starting'] as int),
      stopping: pulumi.Input.fromValue(map['stopping'] as int),
      suspending: pulumi.Input.fromValue(map['suspending'] as int),
      verifying: pulumi.Input.fromValue(map['verifying'] as int),
    );
  }
}
