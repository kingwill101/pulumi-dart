// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_traffic_rollout_policy_ignored_path.dart';
import 'app_hosting_traffic_rollout_policy_required_path.dart';

class AppHostingTrafficRolloutPolicy {
  /// Specifies a branch that triggers a new build to be started with this
  /// policy. If not set, no automatic rollouts will happen.
  final pulumi.Input<String?>? codebaseBranch;
  /// A flag that, if true, prevents rollouts from being created via this RolloutPolicy.
  final pulumi.Input<bool?>? disabled;
  /// (Output)
  /// If disabled is set, the time at which the rollouts were disabled.
  final pulumi.Input<String?>? disabledTime;
  /// A list of file paths patterns to exclude from triggering a rollout.
  /// Patterns in this list take precedence over required_paths.
  /// **Note**: All paths must be in the ignoredPaths in order for the
  /// rollout to be skipped. Limited to 100 paths.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingTrafficRolloutPolicyIgnoredPath>?>? ignoredPaths;
  /// A list of file paths patterns that trigger a build and rollout
  /// if at least one of the changed files in the commit are present in
  /// this list. This field is optional; the rollout policy will default to
  /// triggering on all paths if both ignoredPaths and requiredPaths are
  /// not populated. Limited to 100 paths.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingTrafficRolloutPolicyRequiredPath>?>? requiredPaths;

  /// Creates a new [AppHostingTrafficRolloutPolicy].
  /// [codebaseBranch] Specifies a branch that triggers a new build to be started with this
  /// [disabled] A flag that, if true, prevents rollouts from being created via this RolloutPolicy.
  /// [disabledTime] (Output)
  /// [ignoredPaths] A list of file paths patterns to exclude from triggering a rollout.
  /// [requiredPaths] A list of file paths patterns that trigger a build and rollout
  const AppHostingTrafficRolloutPolicy({
    this.codebaseBranch,
    this.disabled,
    this.disabledTime,
    this.ignoredPaths,
    this.requiredPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codebaseBranch': ?codebaseBranch,
      'disabled': ?disabled,
      'disabledTime': ?disabledTime,
      'ignoredPaths': ?pulumi.Input.mapOptionalInputValue<List<AppHostingTrafficRolloutPolicyIgnoredPath>, List<Map<String, dynamic>>>(ignoredPaths, (value) => pulumi.Input.encodeList<AppHostingTrafficRolloutPolicyIgnoredPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requiredPaths': ?pulumi.Input.mapOptionalInputValue<List<AppHostingTrafficRolloutPolicyRequiredPath>, List<Map<String, dynamic>>>(requiredPaths, (value) => pulumi.Input.encodeList<AppHostingTrafficRolloutPolicyRequiredPath, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppHostingTrafficRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficRolloutPolicy(
      codebaseBranch: (() { final guardedValue = map['codebaseBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disabledTime: (() { final guardedValue = map['disabledTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoredPaths: (() { final guardedValue = map['ignoredPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppHostingTrafficRolloutPolicyIgnoredPath>(guardedValue, (value) => AppHostingTrafficRolloutPolicyIgnoredPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requiredPaths: (() { final guardedValue = map['requiredPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppHostingTrafficRolloutPolicyRequiredPath>(guardedValue, (value) => AppHostingTrafficRolloutPolicyRequiredPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
