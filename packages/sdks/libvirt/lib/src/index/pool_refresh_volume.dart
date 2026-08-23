// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolRefreshVolume {
  /// Defines how allocation amounts are calculated during the refresh operation for the volume.
  final pulumi.Input<String> allocation;

  /// Creates a new [PoolRefreshVolume].
  /// [allocation] Defines how allocation amounts are calculated during the refresh operation for the volume.
  const PoolRefreshVolume({
    required this.allocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': allocation,
    };
  }

  factory PoolRefreshVolume.fromMap(Map<String, dynamic> map) {
    return PoolRefreshVolume(
      allocation: pulumi.Input.fromValue(map['allocation'] as String),
    );
  }
}
