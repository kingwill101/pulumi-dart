// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinksResultConfigFileNaming {
  /// The prefix to use in file name. i.e prefix-\n\n.parquet
  final pulumi.Input<String> prefix;
  /// Filename generation strategy.
  /// Available values: "serial", "uuid", "uuidV7", "ulid".
  final pulumi.Input<String> strategy;
  /// This will overwrite the default file suffix. i.e .parquet, use with caution
  final pulumi.Input<String> suffix;

  /// Creates a new [GetPipelineSinksResultConfigFileNaming].
  /// [prefix] The prefix to use in file name. i.e prefix-\n\n.parquet
  /// [strategy] Filename generation strategy.
  /// [suffix] This will overwrite the default file suffix. i.e .parquet, use with caution
  const GetPipelineSinksResultConfigFileNaming({
    required this.prefix,
    required this.strategy,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'strategy': strategy,
      'suffix': suffix,
    };
  }

  factory GetPipelineSinksResultConfigFileNaming.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResultConfigFileNaming(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
