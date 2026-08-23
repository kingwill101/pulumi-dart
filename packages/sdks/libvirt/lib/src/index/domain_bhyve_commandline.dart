// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_bhyve_commandline_arg.dart';
import 'domain_bhyve_commandline_env.dart';

class DomainBhyveCommandline {
  /// Lists additional bhyve command-line arguments to append in order when starting the domain.
  ///
  /// See: &lt;https://libvirt.org/drvbhyve.html&gt;
  final pulumi.Input<List<DomainBhyveCommandlineArg>>? args;
  /// Lists environment variables to provide to the bhyve process when starting the domain.
  final pulumi.Input<List<DomainBhyveCommandlineEnv>>? envs;

  /// Creates a new [DomainBhyveCommandline].
  /// [args] Lists additional bhyve command-line arguments to append in order when starting the domain.
  /// [envs] Lists environment variables to provide to the bhyve process when starting the domain.
  const DomainBhyveCommandline({
    this.args,
    this.envs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<List<DomainBhyveCommandlineArg>, List<Map<String, dynamic>>>(args, (value) => pulumi.Input.encodeList<DomainBhyveCommandlineArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envs': ?pulumi.Input.mapOptionalInputValue<List<DomainBhyveCommandlineEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<DomainBhyveCommandlineEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainBhyveCommandline.fromMap(Map<String, dynamic> map) {
    return DomainBhyveCommandline(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainBhyveCommandlineArg>(guardedValue, (value) => DomainBhyveCommandlineArg.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainBhyveCommandlineEnv>(guardedValue, (value) => DomainBhyveCommandlineEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
