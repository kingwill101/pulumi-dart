// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_fs_commandline_option.dart';

class PoolFsCommandline {
  final pulumi.Input<List<PoolFsCommandlineOption>>? options;

  /// Creates a new [PoolFsCommandline].
  /// [options] Optional.
  const PoolFsCommandline({
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?pulumi.Input.mapOptionalInputValue<List<PoolFsCommandlineOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<PoolFsCommandlineOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PoolFsCommandline.fromMap(Map<String, dynamic> map) {
    return PoolFsCommandline(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolFsCommandlineOption>(guardedValue, (value) => PoolFsCommandlineOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
