// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_xen_commandline_arg.dart';

class DomainXenCommandline {
  /// Lists additional command-line arguments to pass to the Xen qemu device model in order.
  ///
  /// See: &lt;https://libvirt.org/drvxen.html&gt;
  final pulumi.Input<List<DomainXenCommandlineArg>?>? args;

  /// Creates a new [DomainXenCommandline].
  /// [args] Lists additional command-line arguments to pass to the Xen qemu device model in order.
  const DomainXenCommandline({
    this.args,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<List<DomainXenCommandlineArg>, List<Map<String, dynamic>>>(args, (value) => pulumi.Input.encodeList<DomainXenCommandlineArg, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainXenCommandline.fromMap(Map<String, dynamic> map) {
    return DomainXenCommandline(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainXenCommandlineArg>(guardedValue, (value) => DomainXenCommandlineArg.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
