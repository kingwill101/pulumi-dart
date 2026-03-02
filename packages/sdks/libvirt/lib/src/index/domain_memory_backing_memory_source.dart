// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMemoryBackingMemorySource {
  /// Sets the type of the memory source, determining how the memory backing is fetched.
  final pulumi.Input<String>? type;

  /// Creates a new [DomainMemoryBackingMemorySource].
  /// [type] Sets the type of the memory source, determining how the memory backing is fetched.
  DomainMemoryBackingMemorySource({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DomainMemoryBackingMemorySource.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBackingMemorySource(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

