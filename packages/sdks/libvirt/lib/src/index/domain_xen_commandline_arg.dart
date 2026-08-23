// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainXenCommandlineArg {
  /// Sets one additional argument token passed to the Xen qemu device model.
  ///
  /// See: &lt;https://libvirt.org/drvxen.html&gt;
  final pulumi.Input<String> value;

  /// Creates a new [DomainXenCommandlineArg].
  /// [value] Sets one additional argument token passed to the Xen qemu device model.
  const DomainXenCommandlineArg({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainXenCommandlineArg.fromMap(Map<String, dynamic> map) {
    return DomainXenCommandlineArg(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
