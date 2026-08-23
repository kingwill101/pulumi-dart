// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainQemuCommandlineArg {
  /// Sets one QEMU command-line argument token exactly as passed to the QEMU process; values that conceptually belong together must still be provided as separate entries.
  ///
  /// See: &lt;https://libvirt.org/kbase/qemu-passthrough-security.html#xml-document-additions&gt;
  final pulumi.Input<String> value;

  /// Creates a new [DomainQemuCommandlineArg].
  /// [value] Sets one QEMU command-line argument token exactly as passed to the QEMU process; values that conceptually belong together must still be provided as separate entries.
  const DomainQemuCommandlineArg({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainQemuCommandlineArg.fromMap(Map<String, dynamic> map) {
    return DomainQemuCommandlineArg(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
