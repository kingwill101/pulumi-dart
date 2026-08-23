// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_rbd_commandline_option.dart';

class PoolRbdCommandline {
  final pulumi.Input<List<PoolRbdCommandlineOption>>? options;

  /// Creates a new [PoolRbdCommandline].
  /// [options] Optional.
  const PoolRbdCommandline({
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?pulumi.Input.mapOptionalInputValue<List<PoolRbdCommandlineOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<PoolRbdCommandlineOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PoolRbdCommandline.fromMap(Map<String, dynamic> map) {
    return PoolRbdCommandline(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolRbdCommandlineOption>(guardedValue, (value) => PoolRbdCommandlineOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
