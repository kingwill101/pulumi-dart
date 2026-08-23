// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_qemu_commandline_arg.dart';
import 'domain_qemu_commandline_env.dart';

class DomainQemuCommandline {
  /// Lists additional QEMU command-line arguments to append in order; each item represents one argument token rather than a shell-joined string.
  ///
  /// See: &lt;https://libvirt.org/kbase/qemu-passthrough-security.html#xml-document-additions&gt;
  final pulumi.Input<List<DomainQemuCommandlineArg>>? args;
  /// Lists environment variables to expose to the QEMU process when starting the domain.
  ///
  /// See: &lt;https://libvirt.org/kbase/qemu-passthrough-security.html#xml-document-additions&gt;
  final pulumi.Input<List<DomainQemuCommandlineEnv>>? envs;

  /// Creates a new [DomainQemuCommandline].
  /// [args] Lists additional QEMU command-line arguments to append in order; each item represents one argument token rather than a shell-joined string.
  /// [envs] Lists environment variables to expose to the QEMU process when starting the domain.
  const DomainQemuCommandline({
    this.args,
    this.envs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<List<DomainQemuCommandlineArg>, List<Map<String, dynamic>>>(args, (value) => pulumi.Input.encodeList<DomainQemuCommandlineArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envs': ?pulumi.Input.mapOptionalInputValue<List<DomainQemuCommandlineEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<DomainQemuCommandlineEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainQemuCommandline.fromMap(Map<String, dynamic> map) {
    return DomainQemuCommandline(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainQemuCommandlineArg>(guardedValue, (value) => DomainQemuCommandlineArg.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainQemuCommandlineEnv>(guardedValue, (value) => DomainQemuCommandlineEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
