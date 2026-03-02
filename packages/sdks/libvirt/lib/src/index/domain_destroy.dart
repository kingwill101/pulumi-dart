// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDestroy {
  final pulumi.Input<bool>? graceful;

  /// Creates a new [DomainDestroy].
  /// [graceful] Optional.
  DomainDestroy({
    this.graceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceful': ?graceful,
    };
  }

  factory DomainDestroy.fromMap(Map<String, dynamic> map) {
    return DomainDestroy(
      graceful: map['graceful'] == null ? null : (map['graceful'] as bool).input(),
    );
  }
}

