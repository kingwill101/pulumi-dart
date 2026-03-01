// ignore_for_file: unused_element, unnecessary_cast


class GetClusterDefaultSnatStatus {
  /// When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final bool disabled;

  /// Creates a new [GetClusterDefaultSnatStatus].
  /// [disabled] When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  GetClusterDefaultSnatStatus({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterDefaultSnatStatus.fromMap(Map<String, dynamic> map) {
    return GetClusterDefaultSnatStatus(
      disabled: map['disabled'] as bool,
    );
  }
}

