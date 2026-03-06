// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMemoryBackingMemoryAccess {
  /// Specifies the mode for memory access, determining how memory can be accessed, such as shared or exclusive.
  final pulumi.Input<String>? mode;

  /// Creates a new [DomainMemoryBackingMemoryAccess].
  /// [mode] Specifies the mode for memory access, determining how memory can be accessed, such as shared or exclusive.
  const DomainMemoryBackingMemoryAccess({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory DomainMemoryBackingMemoryAccess.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBackingMemoryAccess(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

