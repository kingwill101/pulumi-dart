// ignore_for_file: unused_element, unnecessary_cast


class AppHostingTrafficRolloutPolicy {
  /// Specifies a branch that triggers a new build to be started with this
  /// policy. If not set, no automatic rollouts will happen.
  final String? codebaseBranch;
  /// A flag that, if true, prevents rollouts from being created via this RolloutPolicy.
  final bool? disabled;
  /// (Output)
  /// If disabled is set, the time at which the rollouts were disabled.
  final String? disabledTime;

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
      codebaseBranch: map['codebaseBranch'] == null ? null : map['codebaseBranch'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      disabledTime: map['disabledTime'] == null ? null : map['disabledTime'] as String,
    );
  }
}

