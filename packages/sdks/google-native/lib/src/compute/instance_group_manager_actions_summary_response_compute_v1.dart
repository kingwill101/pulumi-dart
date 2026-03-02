// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerActionsSummaryResponseComputeV1 {
  /// The total number of instances in the managed instance group that are scheduled to be abandoned. Abandoning an instance removes it from the managed instance group without deleting it.
  final pulumi.Input<int> abandoning;
  /// The number of instances in the managed instance group that are scheduled to be created or are currently being created. If the group fails to create any of these instances, it tries again until it creates the instance successfully. If you have disabled creation retries, this field will not be populated; instead, the creatingWithoutRetries field will be populated.
  final pulumi.Input<int> creating;
  /// The number of instances that the managed instance group will attempt to create. The group attempts to create each instance only once. If the group fails to create any of these instances, it decreases the group's targetSize value accordingly.
  final pulumi.Input<int> creatingWithoutRetries;
  /// The number of instances in the managed instance group that are scheduled to be deleted or are currently being deleted.
  final pulumi.Input<int> deleting;
  /// The number of instances in the managed instance group that are running and have no scheduled actions.
  final pulumi.Input<int> none;
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

  /// Creates a new [InstanceGroupManagerActionsSummaryResponseComputeV1].
  /// [abandoning] The total number of instances in the managed instance group that are scheduled to be abandoned. Abandoning an instance removes it from the managed instance group without deleting it.
  /// [creating] The number of instances in the managed instance group that are scheduled to be created or are currently being created. If the group fails to create any of these instances, it tries again until it creates the instance successfully. If you have disabled creation retries, this field will not be populated; instead, the creatingWithoutRetries field will be populated.
  /// [creatingWithoutRetries] The number of instances that the managed instance group will attempt to create. The group attempts to create each instance only once. If the group fails to create any of these instances, it decreases the group's targetSize value accordingly.
  /// [deleting] The number of instances in the managed instance group that are scheduled to be deleted or are currently being deleted.
  /// [none] The number of instances in the managed instance group that are running and have no scheduled actions.
  /// [recreating] The number of instances in the managed instance group that are scheduled to be recreated or are currently being being recreated. Recreating an instance deletes the existing root persistent disk and creates a new disk from the image that is defined in the instance template.
  /// [refreshing] The number of instances in the managed instance group that are being reconfigured with properties that do not require a restart or a recreate action. For example, setting or removing target pools for the instance.
  /// [restarting] The number of instances in the managed instance group that are scheduled to be restarted or are currently being restarted.
  /// [resuming] The number of instances in the managed instance group that are scheduled to be resumed or are currently being resumed.
  /// [starting] The number of instances in the managed instance group that are scheduled to be started or are currently being started.
  /// [stopping] The number of instances in the managed instance group that are scheduled to be stopped or are currently being stopped.
  /// [suspending] The number of instances in the managed instance group that are scheduled to be suspended or are currently being suspended.
  /// [verifying] The number of instances in the managed instance group that are being verified. See the managedInstances[].currentAction property in the listManagedInstances method documentation.
  InstanceGroupManagerActionsSummaryResponseComputeV1({
    required this.abandoning,
    required this.creating,
    required this.creatingWithoutRetries,
    required this.deleting,
    required this.none,
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
      'creatingWithoutRetries': creatingWithoutRetries,
      'deleting': deleting,
      'none': none,
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

  factory InstanceGroupManagerActionsSummaryResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerActionsSummaryResponseComputeV1(
      abandoning: (map['abandoning'] as int).input(),
      creating: (map['creating'] as int).input(),
      creatingWithoutRetries: (map['creatingWithoutRetries'] as int).input(),
      deleting: (map['deleting'] as int).input(),
      none: (map['none'] as int).input(),
      recreating: (map['recreating'] as int).input(),
      refreshing: (map['refreshing'] as int).input(),
      restarting: (map['restarting'] as int).input(),
      resuming: (map['resuming'] as int).input(),
      starting: (map['starting'] as int).input(),
      stopping: (map['stopping'] as int).input(),
      suspending: (map['suspending'] as int).input(),
      verifying: (map['verifying'] as int).input(),
    );
  }
}

