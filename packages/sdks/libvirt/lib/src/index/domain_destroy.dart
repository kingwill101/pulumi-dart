// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_destroy_shutdown.dart';

class DomainDestroy {
  /// Experimental: request graceful behavior when using DomainDestroyFlags during domain stop. Subject to change in future releases.
  final pulumi.Input<bool>? graceful;
  /// Experimental: request a guest shutdown and wait for shutoff before undefine. Subject to change in future releases.
  final pulumi.Input<DomainDestroyShutdown>? shutdown;

  /// Creates a new [DomainDestroy].
  /// [graceful] Experimental: request graceful behavior when using DomainDestroyFlags during domain stop. Subject to change in future releases.
  /// [shutdown] Experimental: request a guest shutdown and wait for shutoff before undefine. Subject to change in future releases.
  const DomainDestroy({
    this.graceful,
    this.shutdown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceful': ?graceful,
      'shutdown': ?pulumi.Input.mapOptionalInputValue<DomainDestroyShutdown, Map<String, dynamic>>(shutdown, (value) => value.toMap()),
    };
  }

  factory DomainDestroy.fromMap(Map<String, dynamic> map) {
    return DomainDestroy(
      graceful: (() { final guardedValue = map['graceful']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shutdown: (() { final guardedValue = map['shutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDestroyShutdown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
