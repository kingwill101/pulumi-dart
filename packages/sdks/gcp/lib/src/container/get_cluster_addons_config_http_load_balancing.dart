// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigHttpLoadBalancing {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterAddonsConfigHttpLoadBalancing].
  /// [disabled] Required.
  GetClusterAddonsConfigHttpLoadBalancing({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterAddonsConfigHttpLoadBalancing.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigHttpLoadBalancing(
      disabled: (map['disabled'] as bool).input(),
    );
  }
}

