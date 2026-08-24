// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSinkConfigFileNaming {
  /// The prefix to use in file name. i.e prefix-\n\n.parquet
  final pulumi.Input<String?>? prefix;
  /// Filename generation strategy.
  /// Available values: "serial", "uuid", "uuidV7", "ulid".
  final pulumi.Input<String?>? strategy;
  /// This will overwrite the default file suffix. i.e .parquet, use with caution
  final pulumi.Input<String?>? suffix;

  /// Creates a new [PipelineSinkConfigFileNaming].
  /// [prefix] The prefix to use in file name. i.e prefix-\n\n.parquet
  /// [strategy] Filename generation strategy.
  /// [suffix] This will overwrite the default file suffix. i.e .parquet, use with caution
  const PipelineSinkConfigFileNaming({
    this.prefix,
    this.strategy,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'strategy': ?strategy,
      'suffix': ?suffix,
    };
  }

  factory PipelineSinkConfigFileNaming.fromMap(Map<String, dynamic> map) {
    return PipelineSinkConfigFileNaming(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
