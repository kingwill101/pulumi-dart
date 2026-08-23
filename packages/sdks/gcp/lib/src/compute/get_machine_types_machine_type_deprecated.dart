// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMachineTypesMachineTypeDeprecated {
  /// The URL of the suggested replacement for a deprecated machine type.
  final pulumi.Input<String> replacement;
  /// The deprecation state of this resource. This can be `ACTIVE`, `DEPRECATED`, `OBSOLETE`, or `DELETED`.
  final pulumi.Input<String> state;

  /// Creates a new [GetMachineTypesMachineTypeDeprecated].
  /// [replacement] The URL of the suggested replacement for a deprecated machine type.
  /// [state] The deprecation state of this resource. This can be `ACTIVE`, `DEPRECATED`, `OBSOLETE`, or `DELETED`.
  const GetMachineTypesMachineTypeDeprecated({
    required this.replacement,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replacement': replacement,
      'state': state,
    };
  }

  factory GetMachineTypesMachineTypeDeprecated.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesMachineTypeDeprecated(
      replacement: pulumi.Input.fromValue(map['replacement'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
