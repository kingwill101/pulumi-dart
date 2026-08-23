// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolFsCommandlineOption {
  /// Sets the unique name for the storage pool, required for identification on the host.
  final pulumi.Input<String> name;

  /// Creates a new [PoolFsCommandlineOption].
  /// [name] Sets the unique name for the storage pool, required for identification on the host.
  const PoolFsCommandlineOption({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PoolFsCommandlineOption.fromMap(Map<String, dynamic> map) {
    return PoolFsCommandlineOption(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
