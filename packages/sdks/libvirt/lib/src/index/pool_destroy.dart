// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolDestroy {
  /// Experimental: whether to run StoragePoolDelete on destroy. If unset, provider default behavior applies. Subject to change.
  final pulumi.Input<bool?>? delete;

  /// Creates a new [PoolDestroy].
  /// [delete] Experimental: whether to run StoragePoolDelete on destroy. If unset, provider default behavior applies. Subject to change.
  const PoolDestroy({
    this.delete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?delete,
    };
  }

  factory PoolDestroy.fromMap(Map<String, dynamic> map) {
    return PoolDestroy(
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
