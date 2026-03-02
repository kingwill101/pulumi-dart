// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingTrafficRolloutPolicy {
  /// Specifies a branch that triggers a new build to be started with this
  /// policy. If not set, no automatic rollouts will happen.
  final pulumi.Input<String>? codebaseBranch;
  /// A flag that, if true, prevents rollouts from being created via this RolloutPolicy.
  final pulumi.Input<bool>? disabled;
  /// (Output)
  /// If disabled is set, the time at which the rollouts were disabled.
  final pulumi.Input<String>? disabledTime;

  /// Creates a new [AppHostingTrafficRolloutPolicy].
  /// [codebaseBranch] Specifies a branch that triggers a new build to be started with this
  /// [disabled] A flag that, if true, prevents rollouts from being created via this RolloutPolicy.
  /// [disabledTime] (Output)
  AppHostingTrafficRolloutPolicy({
    this.codebaseBranch,
    this.disabled,
    this.disabledTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codebaseBranch': ?codebaseBranch,
      'disabled': ?disabled,
      'disabledTime': ?disabledTime,
    };
  }

  factory AppHostingTrafficRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficRolloutPolicy(
      codebaseBranch: map['codebaseBranch'] == null ? null : (map['codebaseBranch']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      disabledTime: map['disabledTime'] == null ? null : (map['disabledTime']! as String).input(),
    );
  }
}

