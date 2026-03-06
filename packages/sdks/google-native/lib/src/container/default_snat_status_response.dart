// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.
class DefaultSnatStatusResponse {
  /// Disables cluster default sNAT rules.
  final pulumi.Input<bool> disabled;

  /// Creates a new [DefaultSnatStatusResponse].
  /// [disabled] Disables cluster default sNAT rules.
  const DefaultSnatStatusResponse({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory DefaultSnatStatusResponse.fromMap(Map<String, dynamic> map) {
    return DefaultSnatStatusResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}

