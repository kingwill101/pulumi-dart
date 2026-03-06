// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HookPushOption {
  /// Trigger hook for matching branches only.
  /// Specified as glob pattern. If empty or *, events for all branches are
  /// reported. Examples: main, {main,release*}.
  /// See https://pkg.go.dev/github.com/gobwas/glob documentation.
  final pulumi.Input<String>? branchFilter;

  /// Creates a new [HookPushOption].
  /// [branchFilter] Trigger hook for matching branches only.
  const HookPushOption({
    this.branchFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchFilter': ?branchFilter,
    };
  }

  factory HookPushOption.fromMap(Map<String, dynamic> map) {
    return HookPushOption(
      branchFilter: (() { final guardedValue = map['branchFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

