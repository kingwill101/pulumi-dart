// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_update_shutdown.dart';

class DomainUpdate {
  /// Experimental: request a guest shutdown and wait for shutoff before forcing a stop during update. Subject to change in future releases.
  final pulumi.Input<DomainUpdateShutdown?>? shutdown;

  /// Creates a new [DomainUpdate].
  /// [shutdown] Experimental: request a guest shutdown and wait for shutoff before forcing a stop during update. Subject to change in future releases.
  const DomainUpdate({
    this.shutdown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shutdown': ?pulumi.Input.mapOptionalInputValue<DomainUpdateShutdown, Map<String, dynamic>>(shutdown, (value) => value.toMap()),
    };
  }

  factory DomainUpdate.fromMap(Map<String, dynamic> map) {
    return DomainUpdate(
      shutdown: (() { final guardedValue = map['shutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainUpdateShutdown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
