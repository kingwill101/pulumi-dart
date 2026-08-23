// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainLxcNamespaceShareIpc {
  /// Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  final pulumi.Input<String> type;
  /// Sets the identifier of the shared namespace target, interpreted according to `type`.
  final pulumi.Input<String> value;

  /// Creates a new [DomainLxcNamespaceShareIpc].
  /// [type] Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  /// [value] Sets the identifier of the shared namespace target, interpreted according to `type`.
  const DomainLxcNamespaceShareIpc({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory DomainLxcNamespaceShareIpc.fromMap(Map<String, dynamic> map) {
    return DomainLxcNamespaceShareIpc(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
